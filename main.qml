import QtQuick 1.0

Rectangle {
    width: 600
    height: 300
    anchors.fill: parent

    //Кнопка
    Rectangle {
        id: button //Имя кнопки

        //Размещаем в центре
        x: parent.width / 2 - button.width / 2;
        y: parent.height / 2 - button.height / 2;

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
            x: parent.width / 2 - button.width / 2;
            y: parent.height / 2 - button.height / 2+40;

            //Размеры строки ввода
            width: 100
            height: 18

            //цвет строки ввода
            color: "gray"

            TextInput {
                id: textinput
                objectName: "textinput"
                color: "#151515";
                selectionColor: "blue"
                font.pixelSize: 12;
                width: parent.width-4
                anchors.centerIn: parent
                focus: true
                text:"127.0.0.1"
                }
        }

        //Поле вывода

        TextInput {
            id: text_input1
            objectName: "textinput1"
            x: 390
            y: 267
            width: 80
            height: 20
            text: qsTr("text")
            font.pixelSize: 12
        }

        Rectangle {
            id: rectangle1
            x: 494
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
        }

        Text {
            id: text1
            x: 35
            y: 156
            text: qsTr("Server")
            font.pixelSize: 12
        }

        Text {
            id: text2
            x: 40
            y: 215
            text: qsTr("Nickname")
            font.pixelSize: 12
        }

        TextInput {
            id: text_input2
            objectName: "textinput2"
            x: 100
            y: 209
            width: 100
            height: 20
            text: qsTr("nick")
            horizontalAlignment: TextInput.AlignLeft
            selectedTextColor: "#ffffff"
            font.pixelSize: 12
        }
}
