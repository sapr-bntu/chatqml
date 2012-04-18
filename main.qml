import QtQuick 1.0

Rectangle {
    width: 600
    height: 300
    anchors.fill: parent

    //Кнопка
    Rectangle {
        id: button //Имя кнопки

        //Размещаем в центре
        x: 16
        y: 31

        //Размеры кнопки
        width: 100
        height: 30

        //Цвет кнопки
        color: "gray"

        //Текст кнопки
        Text {
            id: buttonLabel
            text: "Connect"
            anchors.centerIn: parent;
        }

        //Действие мыши
        MouseArea {
            anchors.fill: parent
            id: mouseArea
            //При нажатии вызвать фугкцию window.FunctionC()
            onClicked: window.connectC()
        }
    }

    //Строка ввода
        Rectangle {
            id: textinputRect //Имя строки ввода

            //Размещаем ниже
            x:64
            y: 77

            //Размеры строки ввода
            width: 100
            height: 18

            //цвет строки ввода
            color: "gray"

            TextInput {
                id: textinput
                x: 4
                y: 2
                objectName: "textinput"
                color: "#151515";
                selectionColor: "blue"
                font.pixelSize: 12;
                width: parent.width-4
                anchors.centerIn: parent
                focus: true
                text:"127.0.0.1"
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: 2
                }
        }

        //Поле вывода

        TextInput {
            id: text_input1
            objectName: "textinput1"
            x: 186
            y: 267
            width: 371
            height: 20
            text: qsTr("text")
            font.pixelSize: 12
        }

        Rectangle {
            id: rectangle1
            x: 16
            y: 255
            width: 81
            height: 32
            color: "#cf4040"

            MouseArea {
                id: mouse_area1
                x: 0
                y: 0
                width: 81
                height: 32
                onClicked: window.sayButton()
            }

            Text {
                id: text3
                x: 0
                y: 6
                width: 73
                height: 21
                text: qsTr("Sent Message")
                font.pixelSize: 12
            }
        }

        Text {
            id: text1
            x: 16
            y: 77
            text: qsTr("Server")
            font.pixelSize: 12
        }

        Text {
            id: text2
            x: 8
            y: 112
            text: qsTr("Nickname")
            font.pixelSize: 12
        }

        TextInput {
            id: text_input2
            objectName: "textinput2"
            x: 64
            y: 109
            width: 100
            height: 20
            text: qsTr("nick")
            horizontalAlignment: TextInput.AlignLeft
            selectedTextColor: "#ffffff"
            font.pixelSize: 12
        }

        Rectangle {
            id: rectangle2
            x: 196
            y: 18
            width: 381
            height: 233
            color: "#ecd7d7"

            TextEdit {
                id: text_edit1
                objectName: "textedit1"
                x: 0
                y: 0
                width: 381
                height: 233
                text: qsTr("")
                font.pixelSize: 12
            }
        }
}
