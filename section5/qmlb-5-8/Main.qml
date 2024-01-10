import QtQuick

// Margins
// Like anchors can get very complicated

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: 300
        height: 400
        color: "red"
        anchors.centerIn: parent

        Rectangle {
            width: 100
            height: 100
            color: "yellow"

            // No anchor by default
            anchors.margins: 50

            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 15
        }
    }
}
