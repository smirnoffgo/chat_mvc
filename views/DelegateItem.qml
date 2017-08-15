import QtQuick 2.0

Item {
    id: delegateItem
    height: 30

    Row {
        id: row
        anchors.rightMargin: 0
        anchors.leftMargin: 10
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        anchors.margins: 10
        spacing: 20

        Text {
            text: qsTr("You:")
            anchors.verticalCenter: parent.verticalCenter
            textFormat: Text.RichText
            font.bold: true
            font.pixelSize: 12
        }

        Text {
            text: model.message
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
        }

    }
}
