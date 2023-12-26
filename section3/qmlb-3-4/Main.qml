import QtQuick

// X Y Z

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: image
        source: "https://upload.wikimedia.org/wikipedia/commons/0/0b/Qt_logo_2016.svg"
        width: 150
        height: 100
        x: 100
        y: 100
        z: 4
    }
    Rectangle {
        color: "red"
        width: 200
        height: 200
        x: 50
        y: 50
        z: 2
        opacity: 0.5
    }
    Rectangle {
        color: "blue"
        width: 200
        height: 200
        x: 150
        y: 150
        z: 1
        opacity: 0.5
    }
}
