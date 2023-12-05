import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 320
    height: 650
    title: "Page Layout Example"

    Rectangle {
        id: rect
        width: parent.width
        height: parent.height

        // Header
        Rectangle {
            id: header
            width: parent.width
            height: parent.height * 0.1
            color: "lightblue"
            anchors.top: parent.top
            Text {
                text: "Header"
                anchors.centerIn: parent
            }
        }

        // Content
        Rectangle {
            id: content
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 20 // отступы с обеих сторон
            height: parent.height - header.height - buttons.height
            color: "lightblue"
            anchors.top: header.bottom
            anchors.bottom: buttons.top
            border.color: "grey"
            border.width: 2
            anchors.topMargin: 10
            anchors.bottomMargin: 10
            anchors.leftMargin: 10 // отступ слева
            anchors.rightMargin: 10 // отступ справа
            Text {
                text: "Content"
                anchors.centerIn: parent
            }
        }

        // Buttons
        Row {
            id: buttons
            anchors.bottom: parent.bottom
            width: parent.width
            height: parent.height * 0.1

            Button {
                text: "1"
                width: parent.width / 3
                height: parent.height
            }

            Button {
                text: "2"
                width: parent.width / 3
                height: parent.height
            }

            Button {
                text: "3"
                width: parent.width / 3
                height: parent.height
            }
        }
    }
}
