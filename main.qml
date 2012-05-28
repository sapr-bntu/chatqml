import QtQuick 1.0

Rectangle {
    id: chat
    width: 600
    height: 300
    radius: 0
    opacity: 1
    clip: false
    border.width: 0
    gradient: Gradient {
        GradientStop {
            position: 0
            color: "#f5e8e8"
        }

        GradientStop {
            position: 1
            color: "#c0aaaa"
        }
    }
    border.color: "#000000"
    anchors.fill: parent

    //Кнопка
    Rectangle {
        id: connect //Имя кнопки

        //Размещаем в центре

        //Размеры кнопки
        width: 100
        height: 30
        radius: 10
        anchors.top: parent.top
        anchors.topMargin: 15
        anchors.left: parent.left
        anchors.leftMargin: 20

        gradient: Gradient {
            GradientStop {
                position: 0.150
                color: "#d0d0ec"
            }

            GradientStop {
                position: 0.770
                color: "#27297a"
            }
        }
        border.width: 1

        //Цвет кнопки

        //Текст кнопки
        Text {
            id: buttonLabel
            color: "#ffffff"
            text: "Connect"
            font.pointSize: 10
            font.family: "MS Shell Dlg 2"
            font.bold: true
            anchors.centerIn: parent;
        }

        //Действие мыши
        MouseArea {
            id: mouseArea
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.verticalCenter: parent.verticalCenter
            anchors.top: parent.top
            //При нажатии вызвать фугкцию window.FunctionC()
            onClicked: {chat.state='State1';window.connectC()}
        }
    }

    //Строка ввода

        //Поле вывода

        Rectangle {
            id: say
            y: 255
            width: 104
            height: 32
            radius: 10
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 15
            gradient: Gradient {
                GradientStop {
                    position: 0.150
                    color: "#d0d0ec"
                }

                GradientStop {
                    position: 0.770
                    color: "#27297a"
                }
            }
            border.width: 1

            MouseArea {
                id: mouse_area1
                x: 7
                y: 0
                width: 81
                height: 32
                onClicked:window.sayButton()
                onPressed: chat.state= 'State2'
                onReleased: chat.state= 'State1'
            }

            Text {
                id: text3
                x: 7
                y: 6
                width: 73
                height: 21                
                font.family: "MS Shell Dlg 2"
                font.bold: true
                text: qsTr("Sent Message")
                anchors.verticalCenterOffset: 1
                anchors.horizontalCenterOffset: -4
                font.pixelSize: 12
                color: "#ffffff"
                anchors.centerIn: parent;
            }
        }

        Rectangle {
            id: chatroom
            color: "#f9eeee"
            radius: 12
            anchors.rightMargin: 10
            anchors.leftMargin: 180
            anchors.bottomMargin: 50
            anchors.topMargin: 10
            anchors.fill: parent

            TextEdit {
                id: text_edit1
                objectName: "textedit1"
                text: qsTr("")
                readOnly: true
                wrapMode: TextEdit.NoWrap
                textFormat: TextEdit.RichText
                anchors.fill: parent
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: sayline
            color: "#f9f9f9"
            radius: 14
            anchors.top: chatroom.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 180
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10

            TextInput {
                id: text_input1
                x: 6
                y: 10
                objectName: "textinput1"
                text: qsTr("Type your message here...")
                cursorVisible: true
                anchors.rightMargin: -6
                anchors.bottomMargin: -10
                anchors.leftMargin: 6
                anchors.topMargin: 10
                anchors.fill: parent
                font.pixelSize: 12
                onAccepted: window.sayButton()

            }
        }

        Rectangle {
            id: server_properties
            x: 20
            y: 60
            height: 116
            radius: 11
            anchors.right: chatroom.left
            anchors.rightMargin: 10
            anchors.top: connect.bottom
            anchors.topMargin: 15
            anchors.left: parent.left
            anchors.leftMargin: 20
            gradient: Gradient {
                GradientStop {
                    position: 0.830
                    color: "#d0d0ec"
                }

                GradientStop {
                    position: 1
                    color: "#27297a"
                }
            }
            border.width: 1

            Text {
                id: text2
                x: 12
                y: 82
                width: 39
                height: 14
                text: qsTr("Login")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 15
                font.pixelSize: 12
                font.family: "MS Shell Dlg 2"
                font.bold: true
                color: "#040493"
            }

            Text {
                id: text1
                text: qsTr("Server")
                anchors.top: parent.top
                anchors.topMargin: 15
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.right: serverIP.left
                anchors.rightMargin: -50
                font.family: "MS Shell Dlg 2"
                font.bold: true
            font.pixelSize: 12
            color: "#33303a"
            }

            Rectangle {
                id: serverIP
                x: 65
                width: 83
                height: 18 //Имя строки ввода

                //Размещаем ниже

                //Размеры строки ввода

                //цвет строки ввода
                color: "#f9eeee"
                anchors.top: parent.top
                anchors.topMargin: 15
                anchors.right: parent.right
                anchors.rightMargin: 10

                TextInput {
                    id: textinput
                    objectName: "textinput"
                    color: "#151515";
                    selectionColor: "blue"
                    font.pixelSize: 12;
                    focus: true
                    text:"127.0.0.1"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.fill: parent
                }
            }

            Rectangle {
                id: user_nick
                x: 65
                y: 76
                width: 83
                height: 20
                color: "#f9eeee"
                anchors.right: parent.right
                anchors.rightMargin: 10
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 15

                TextInput {
                    id: text_input2
                    x: 6
                    y: 5
                    objectName: "textinput2"
                    text: qsTr("nick")
                    anchors.rightMargin: -6
                    anchors.bottomMargin: -5
                    anchors.leftMargin: 6
                    anchors.topMargin: 5
                    anchors.fill: parent
                    horizontalAlignment: TextInput.AlignLeft
                    selectedTextColor: "#ffffff"
                    font.pixelSize: 12
                }
            }

        }

        Image {
            id: image1
            x: 20
            y: 15
            width: 100
            height: 100
            source: "android-logo.jpg"
            opacity: 0
        }
        states: [
            State {
                name: "State1"

                PropertyChanges {
                    target: server_properties
                    visible: false
                }

                PropertyChanges {
                    target: connect
                    visible: false
                }

                PropertyChanges {
                    target: image1
                    x: 11
                    y: 10
                    anchors.right: chatroom.left
                    anchors.rightMargin: 10
                    anchors.top: chat.top
                    anchors.topMargin: 15
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    width: 159
                    height: 166
                    source: "android-logo.jpg"
                    opacity: 1
                }
            },
            State {
                name: "State2"
                PropertyChanges {
                    target: server_properties
                    visible: false
                }

                PropertyChanges {
                    target: connect
                    visible: false
                }

                PropertyChanges {
                    target: image1
                    x: 11
                    y: 10
                    width: 159
                    height: 166
                    anchors.topMargin: "15"
                    anchors.top: chat.top
                    source: "android-logo.jpg"
                    anchors.rightMargin: "10"
                    anchors.leftMargin: "20"
                    anchors.right: chatroom.left
                    opacity: 1
                    anchors.left: parent.left
                }

                PropertyChanges {
                    target: say
                    x: 20
                    y: 258
                    anchors.bottomMargin: 10
                    anchors.leftMargin: 20
                }
            }
        ]
}
