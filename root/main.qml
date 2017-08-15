import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import "../views"
import "../controllers"

ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 360
    height: 360
    title: qsTr("Hello World")

    property ListViewController controller: ListViewController{}

    ListView {
        id: listView
        x: 0
        y: 0
        width: 360
        height: 252
        model: ListModel {
            id: listModel
        }
        delegate: DelegateItem {}
    }

    Rectangle {
        id: rectangle
        x: 26
        y: 273
        width: 210
        height: 67
        color: "#ebeaea"
        border.color: "#9f9797"
        border.width: 1

        TextInput {
            id: textInput
            anchors.rightMargin: 10
            anchors.leftMargin: 10
            anchors.bottomMargin: 10
            anchors.topMargin: 10
            anchors.fill: parent
            font.pixelSize: 12
        }
    }


    Button {
        id: btnSend
        x: 262
        y: 284
        width: 71
        height: 21
        text: qsTr("Send")
        onClicked: controller.onSendBtnClicked()
    }

    Button {
        id: btnDel
        x: 262
        y: 311
        width: 71
        height: 21
        text: qsTr("Delete")
        onClicked: controller.onDelBtnClicked()
    }


}
