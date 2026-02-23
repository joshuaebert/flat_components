import QtQuick
import QtQuick.Controls
import QtQuick.Effects
import QtQuick.Layouts

Rectangle {
    id: root

    implicitWidth: diameter
    implicitHeight: diameter

    Layout.fillWidth: false
    Layout.fillHeight: false

    property bool dropShadow: true
    property int buttonStyle: Theme.ButtonStyle.Filled
    property int diameter: 48
    property alias text: iconText.text
    property bool hovered: false

    color: "transparent"
    // use half of the smallest side so the rectangle becomes a circle
    radius: Math.min(width, height) / 2

    signal clicked()

    states: [
        State {
            name: "filled"
            when: buttonStyle === Theme.ButtonStyle.Filled
            PropertyChanges {
                target: bg
                color: root.enabled ? Theme.primary : Theme.primaryDisabled
                border.width: 0
            }
            PropertyChanges {
                target: iconText
                color: root.enabled ? Theme.textOnPrimary : Theme.textOnPrimaryDisabled
            }
            PropertyChanges {
                target: rippleEffect
                rippleColor: root.enabled ? Theme.textOnPrimary : Theme.textOnPrimaryDisabled
            }
        },
        State {
            name: "outlined"
            when: buttonStyle === Theme.ButtonStyle.Outlined
            PropertyChanges {
                target: bg
                color: Theme.surface
                border.color: root.enabled ? Theme.border : Theme.borderDisabled
                border.width: 2
            }
            PropertyChanges {
                target: iconText
                color: root.enabled ? Theme.textOnSurface : Theme.textOnSurfaceDisabled
            }
            PropertyChanges {
                target: rippleEffect
                rippleColor: root.enabled ? Theme.textOnSurface : Theme.textOnSurfaceDisabled
            }
        },
        State {
            name: "text"
            when: buttonStyle === Theme.ButtonStyle.Text
            PropertyChanges {
                target: bg
                color: Theme.neutralTextOnSurface
                opacity: root.hovered ? 0.05 : 0.0
                border.width: 0
            }
            PropertyChanges {
                target: iconText
                color: root.enabled ? Theme.neutralTextOnSurface : Theme.textOnSurfaceDisabled
            }
            PropertyChanges {
                target: rippleEffect
                rippleColor: root.enabled ? Theme.neutralTextOnSurface : Theme.textOnSurfaceDisabled
            }
            PropertyChanges {
                target: root
                dropShadow: false
            }
        }
    ]

    Rectangle {
        id: bg
        anchors.fill: parent
        radius: parent.radius

        layer.enabled: root.enabled && root.dropShadow
        layer.effect: Shadow {
            show: root.hovered
        }

        Behavior on border.color {
            ColorAnimation {
                duration: Theme.animationNormal
                easing.type: Easing.InOutQuad
            }
        }

        Behavior on opacity {
            NumberAnimation {
                duration: Theme.animationNormal
                easing.type: Easing.InOutQuad
            }
        }
    }

    Ripple {
        id: rippleEffect
    }

    FontLoader {
        id: iconFont
        source: "../fonts/fa7.otf"
    }

    Text {
        id: iconText
        anchors.fill: parent
        text: root.text
        font.family: iconFont.name
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: (mouse) => {
            rippleEffect.trigger(mouse.x, mouse.y)
            root.clicked()
        }

        onEntered: {
            root.hovered = true
        }

        onExited: {
            root.hovered = false
        }
    }
}