import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: qtImage
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/578px-Qt_logo_2016.svg.png"
        anchors.centerIn: parent
        width: 200
        fillMode: Image.PreserveAspectFit

        Rectangle {
            id: hoverRect
            color: "red"
            opacity: 0.5
            visible: false
            anchors.fill: parent
        }

        MouseArea {
            id: clickMe
            anchors.fill: parent
            hoverEnabled: true
            onEntered: hoverRect.visible = true
            onExited: hoverRect.visible = false
            onClicked: Qt.openUrlExternally("https://www.qt.io/")
        }
    }
}
