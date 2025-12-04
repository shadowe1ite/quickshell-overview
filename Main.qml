import QtQuick
import Quickshell
import Quickshell.Io
import "./modules/overview"
import "./services"

Item {
    id: root
    property var pluginApi: null

    // Instantiate the Overview Window
    // It contains the PanelWindow which handles its own visibility/layering
    Overview {
        id: overviewInstance
    }

    // IPC Handler to control it externally
    // Usage: qs ipc call plugin:noctalia-overview toggle
    IpcHandler {
        target: "plugin:noctalia-overview"
        
        function toggle() {
            GlobalStates.overviewOpen = !GlobalStates.overviewOpen;
        }
        function open() {
            GlobalStates.overviewOpen = true;
        }
        function close() {
            GlobalStates.overviewOpen = false;
        }
    }
}
