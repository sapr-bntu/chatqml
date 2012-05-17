import QtQuick 1.0

Rectangle {
    id: rectangle5
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
        id: button //Имя кнопки

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
            onClicked: window.connectC()
        }
    }

    //Строка ввода

        //Поле вывода

        Rectangle {
            id: rectangle1
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
                onClicked: window.sayButton()
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
            id: rectangle2
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
                anchors.fill: parent
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectangle3
            color: "#f9f9f9"
            radius: 14
            anchors.top: rectangle2.bottom
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
                text: qsTr("text")
                anchors.rightMargin: -6
                anchors.bottomMargin: -10
                anchors.leftMargin: 6
                anchors.topMargin: 10
                anchors.fill: parent
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectangle6
            x: 20
            y: 60
            height: 116
            radius: 11
            anchors.right: rectangle2.left
            anchors.rightMargin: 10
            anchors.top: button.bottom
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
                anchors.right: textinputRect.left
                anchors.rightMargin: -50
                font.family: "MS Shell Dlg 2"
                font.bold: true
            font.pixelSize: 12
            color: "#33303a"
            }

            Rectangle {
                id: textinputRect
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
                id: rectangle4
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
}
