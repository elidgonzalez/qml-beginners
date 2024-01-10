import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Grid {
        columns: 1
        rows: 2
        anchors.centerIn: parent
        Text {
            id: numberDisplay
            text: "0"
            font.pixelSize: 40
            font.bold: true
            width: parent.width
            height: 50
        }

        Grid {
            columns: 3
            rows: 4
            spacing: 5
            CoolButton {numberText.text: "1"; button.onPressed: numberDisplay.text = "1"}
            CoolButton {numberText.text: "2"; button.onPressed: numberDisplay.text = "2"}
            CoolButton {numberText.text: "3"; button.onPressed: numberDisplay.text = "3"}
            CoolButton {numberText.text: "4"; button.onPressed: numberDisplay.text = "4"}
            CoolButton {numberText.text: "5"; button.onPressed: numberDisplay.text = "5"}
            CoolButton {numberText.text: "6"; button.onPressed: numberDisplay.text = "6"}
            CoolButton {numberText.text: "7"; button.onPressed: numberDisplay.text = "7"}
            CoolButton {numberText.text: "8"; button.onPressed: numberDisplay.text = "8"}
            CoolButton {numberText.text: "9"; button.onPressed: numberDisplay.text = "9"}
            Rectangle {width: 50; height: 50}
            CoolButton {numberText.text: "0"; button.onPressed: numberDisplay.text = "0"}
            Rectangle {width: 50; height: 50}
        }
    }
}

