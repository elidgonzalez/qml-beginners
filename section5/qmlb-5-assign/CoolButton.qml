import QtQuick

Item {
    id: root
    property color buttonColor: "lightblue"
    property color hoverColor: "#A7C7E7" // pastel blue
    property color clicked: "orange"
    property alias numberText: numberText
    property alias button: button
    width: 50
    height: 50
    Rectangle{
        id: numberbutton
        anchors.fill: parent
        color: parent.buttonColor
        Text {
            id: numberText
            anchors.centerIn: parent
            text: "0"
            font.bold: true
        }

        MouseArea {
            id: button
            anchors.fill: parent
            hoverEnabled: true
            onEntered: parent.color = root.hoverColor
            onExited: parent.color = root.buttonColor
            onPressed: parent.color = root.clicked
            onReleased: parent.color = root.buttonColor
        }
    }



}
