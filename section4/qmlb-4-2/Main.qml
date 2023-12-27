import QtQuick

/*

  Rectangle

  Its an Item
  There is no circle!

  */


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: myItem
        anchors.centerIn: parent
        width: 200
        height: 200
        color: "red"
        border.color: "black"
        border.width: 5
        radius: width

        // Gradient
        gradient: Gradient {
            GradientStop {position: 0.0; color: "red"}
            GradientStop {position: 1.0; color: "blue"}
        }
    }
}
