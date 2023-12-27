import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Text {
        id: myText
        text: qsTr("<html><b>Hello</b> <i><font color='green'>World</font></i> <br><font color='#C0C0C0'>
This is a test</font><br>
<a href='https://search.brave.com/'>my link</a>
</html>")
        anchors.centerIn: parent
        font.pixelSize: 35
        color: "red"
        linkColor: "green"
        // font.bold: true //might not work can be overidden
        // font.italic:  false
        onLinkHovered: {
            console.log("Hover: " + link)
            if (link) {
                myText.font.bold = true
            }
            else {
                myText.font.bold = false
            }
        }

        onLinkActivated: Qt.openUrlExternally(link)
    }
}
