pragma Singleton
import QtQuick 2.12

Item {
    readonly property color colourBackground: "#efefef"

    property alias fontAwesome: fontAwesomeLoader.name
    FontLoader {
        id: fontAwesomeLoader
        source: "qrc:/assets/fontAwesome.ttf"
    }

    readonly property color colourNavigationBarBackground: "#000000"
    readonly property color colourNavigationBarFont: "#ffffff"
    readonly property int pixelSizeNavigationBarIcon: 42

    readonly property real widthNavigationButtonIcon: 80
    readonly property real heightNavigationButtonIcon: widthNavigationButtonIcon
    readonly property real widthNavigationButtonDescription: 240
    readonly property real heightNavigationButtonDescription: heightNavigationButtonIcon
    readonly property real widthNavigationButton: widthNavigationButtonIcon +
                                                  widthNavigationButtonDescription
    readonly property real heightNavigationButton:
    Math.max(heightNavigationButtonIcon, heightNavigationButtonDescription)

    readonly property real widthNavigationBarCollapsed: widthNavigationButtonIcon
    readonly property real heightNavigationBarExpanded: widthNavigationButton

    readonly property int pixelSizeNavigationBarText: 22

    readonly property color colourCommandBarBackground: "#cecece"
    readonly property color colourCommandBarFont: "#131313"
    readonly property color colourCommandBarFontDisabled: "#636363"
    readonly property real heightCommandBar: heightCommandButton
    readonly property int pixelSizeCommandBarIcon: 32
    readonly property int pixelSizeCommandBarText: 12
    readonly property real widthCommandButton: 80
    readonly property real heightCommandButton: widthCommandButton

    readonly property real sizeScreenMargin: 20

    readonly property color colourDataControlsBackground: "#FFFFFF"
    readonly property color colourDataControlsFont: "#131313"
    readonly property int pixelSizeDataControls: 18
    readonly property real widthDataControls: 400
    readonly property real heightDataControls: 40

    readonly property real sizeControlSpacing: 10

    readonly property color colourPanelBackground: "#FFFFFF"
    readonly property color colourPanelBackgroundHover: "#ececec"
    readonly property color colourPanelHeaderBackground: "#131313"
    readonly property color colourPanelHeaderFont: "#ffffff"
    readonly property color colourPanelFont: "#131313"
    readonly property int pixelSizePanelHeader: 18
    readonly property real heightPanelHeader: 40
    readonly property real sizeShadowOffset: 5
    readonly property color colourShadow: "#dedede"

    readonly property color colourItemBackground: "#fefefe"
    readonly property color colourItemBackgroundHover: "#efefef"
    readonly property color colourItemBorder: "#efefef"
    readonly property color colourItemDateFont: "#636363"
    readonly property color colourItemTitleFont: "#131313"
    readonly property real sizeItemMargin: 5
}
