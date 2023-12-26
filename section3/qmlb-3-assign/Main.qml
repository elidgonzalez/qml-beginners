import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: 100
        height: 100
        x: 50
        y: 100
        color: redToGreen.pressed ? "green" : "red"
        TapHandler {
            id: redToGreen
        }
    }

    Rectangle {
        width: 100
        height: 100
        x: 200
        y: 100
        color: redToBlue.pressed ? "blue" : "red"
        TapHandler {
            id: redToBlue
        }
    }


}
