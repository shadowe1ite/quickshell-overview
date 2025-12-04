import QtQuick
import Quickshell
import qs.Widgets
import qs.Commons
import "./services"

NIconButton {
    property var pluginApi: null
    
    // Icon configuration
    icon: "view-dashboard" // Or "checkbox-blank-circle-outline"
    tooltipText: "Toggle Overview"
    
    // Styling
    colorBg: GlobalStates.overviewOpen ? Color.mPrimary : Style.capsuleColor
    colorFg: GlobalStates.overviewOpen ? Color.mOnPrimary : Color.mOnSurface
    
    // Action
    onClicked: {
        GlobalStates.overviewOpen = !GlobalStates.overviewOpen;
    }
}
