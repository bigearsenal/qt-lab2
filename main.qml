import QtQuick 2.6
import QtQuick.Layouts 1.3

import QtQuick.Controls 2.1
import QtQuick.Controls.Material 2.4

ApplicationWindow {

visible: true
width: 500
height: 500
title: qsTr("Сумма двух чисел")

Material.theme: Material.Light
Material.primary: Material.BlueGray
Material.accent: Material.Teal

Column {
    width: 270
    height: 194
spacing: 10
anchors.centerIn: parent

TextField {
id: field1
objectName: "field1"
placeholderText: "Первое число"
width: 270
height: 50
}

TextField {
id: field2
objectName: "field2"
placeholderText: "Второе число"
width: 270
height: 50
}

Button {
id: button
x: 0
y: 110
text: qsTr("Сумма")
clip: false
z: -1
highlighted: true
Material.background: Material.Teal
width: 270
onClicked: {
    var field1Int = parseInt(field1.text);
    var field2Int = parseInt(field2.text);
    textArea.text = field1Int+field2Int
}
}

Text {
text: "Ответ:"
font.pixelSize: textArea.font.pixelSize
}

TextArea {
id: textArea
objectName: "textArea"
wrapMode: TextArea.Wrap
readOnly: true
width: 250
}
}



}
