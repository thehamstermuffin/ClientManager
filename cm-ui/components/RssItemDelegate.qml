import QtQuick 2.12
import assets 1.0
import CM 1.0

Item {
    property RssItem rssItem
    implicitWidth: parent.width
    implicitHeight: background.height

    Rectangle {
        id: background
        width: parent.width
        height: textPubDate.implicitHeight + textTitle.implicitHeight +
                borderBottom.height + (Style.sizeItemMargin * 3)
        color: Style.colourPanelBackground

        Text {
            id: textPubDate
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: Style.sizeItemMargin
            text: Qt.formatDateTime(rssItem.ui_pubDate, "ddd, d MMM yyyy @  h:mm ap")
            font.pixelSize: Style.pixelSizeDataControls
            font.italic: true
            font.weight: Font.Light
            color: Style.colourItemDateFont
        }

        Text {
            id: textTitle
            anchors.top: textPubDate.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: Style.sizeItemMargin
            text: rssItem.ui_title
            font.pixelSize: Style.pixelSizeDataControls
            color: Style.colourItemTitleFont
            wrapMode: Text.Wrap
        }

        Rectangle {
            id: borderBottom
            anchors.top: textTitle.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: Style.sizeItemMargin
            height: 1
            color: Style.colourItemBorder
        }

        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            hoverEnabled: true
            onEntered: background.state = "hover"
            onExited: background.state = ""
            onClicked: if (rssItem.ui_link !== "") {
                           Qt.openUrlExternally(rssItem.ui_link)
                       }
        }

        states: [
            State {
                name: "hover"
                PropertyChanges {
                    target: background
                    color: Style.colourPanelBackgroundHover
                }
            }
        ]
    }
}
