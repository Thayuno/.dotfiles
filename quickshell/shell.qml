import Quickshell.Services.SystemTray
import Quickshell
import QtQuick
import Quickshell.Io

PanelWindow {
  color: "#313131"
  anchors {
    top: true
    left: true
    right: true
  }

  implicitHeight: 30

  Text {
    id: clock
    color: "#ffffff"
    anchors.centerIn: parent

    Process {
      id: dateProc
        command: ["date"]
      running: true

      stdout: StdioCollector {
        onStreamFinished: clock.text = this.text
      }
    }

    Timer {
      interval: 1000
      running: true
      repeat: true

      onTriggered: dateProc.running = true
    }
  }
}
