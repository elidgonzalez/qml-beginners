import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        anchors.centerIn: parent
        width: 100
        height: 100

        color: inputHandler.pressed ? "red" : "blue"

        TapHandler {
            id: inputHandler
        }
    }
}
