import QtQuick 2.0

Item {

    function onSendBtnClicked() {
        var text = textInput.text
        if (text != "") {
            listModel.append({message: textInput.text})
            textInput.text = ""
        }
    }

    function onDelBtnClicked() {
        if (listModel.count > 0) {
            listModel.remove(listModel.count-1)
        }
    }
}
