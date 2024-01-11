import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rect1
        width: 100
        height: 100
        x: (parent.width / 2) - (width / 2)
        y: (parent.height / 2) - (height / 2)
        color: "red"
        focus: true

        Text {
            id: position
            text: parent.x + " x " + parent.y
            anchors.centerIn: parent
            font.bold: true
        }

        Keys.onUpPressed:  y -= 10
        Keys.onDownPressed:  y += 10
        Keys.onRightPressed:  x += 10
        Keys.onLeftPressed:  x -= 10
    }
}
