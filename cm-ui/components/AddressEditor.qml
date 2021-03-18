import QtQuick 2.0
import CM 1.0
import assets 1.0

Panel {
    property Address address

    contentComponent:
        Column {
        id: column
        spacing: Style.sizeControlSpacing
        StringEditorSingleLine {
            stringDecorator: address.ui_building
            anchors.left: parent.left
            anchors.right: parent.right
        }
        StringEditorSingleLine {
            stringDecorator: address.ui_street
            anchors.left: parent.left
            anchors.right: parent.right
        }
        StringEditorSingleLine {
            stringDecorator: address.ui_city
            anchors.left: parent.left
            anchors.right: parent.right
        }
        StringEditorSingleLine {
            stringDecorator: address.ui_postcode
            anchors.left: parent.left
            anchors.right: parent.right
        }
    }
}