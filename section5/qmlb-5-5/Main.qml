import QtQuick

// Grid

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Grid {
        anchors.centerIn: parent
        spacing: 5
        rows: 3
        columns: 2

        MyShape {color: "red"}
        MyShape {color: "yellow"}
        MyShape {color: "green"}
        MyShape {color: "blue"}
        MyShape {color: "black"}
        MyShape {color: "gray"}
        MyShape {color: "teal"}
        MyShape {color: "brown"}
        MyShape {color: "orange"}
    }

}
