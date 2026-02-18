import QtQuick
import QtCore

Rectangle {
    property int level: 0
    property bool shadow: false
    property int shadowDirection: Theme.ShadowDirection.Down

    z: 1000 - level

    color: {
        const baseFactor = 1.0 + (level * 0.05)
        return Qt.darker(Theme.surface, baseFactor)
    }

    layer.enabled: shadow
    layer.effect: Shadow {
        id: shadowEffect
        show: true
        direction: shadowDirection
        intensity: 0.2
    }
}