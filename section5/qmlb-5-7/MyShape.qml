import QtQuick

Item {
    id: root
    property color color: "gray"
    property string text: "title"
    width: 100
    height: 100

    Rectangle {
        id: myShape1
        color: root.color
        anchors.fill: parent

        Text {
            text: root.text
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            drag.target: root.parent
            onClicked: root.z++
        }
    }
}

// Rectangle {
//     id: myShape1
//     color: "gray"
//     width: 100
//     height: 100


//     MouseArea {
//         anchors.fill: parent
//         drag.target: parent
//         onClicked: parent.z++
//     }
// }
