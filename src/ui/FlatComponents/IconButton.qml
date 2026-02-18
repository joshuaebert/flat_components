import QtQuick
import QtQuick.Controls
import QtQuick.Effects
import QtQuick.Layouts

Button {
    id: root

    implicitWidth: diameter
    implicitHeight: diameter

    Layout.fillWidth: false
    Layout.fillHeight: false

    property bool dropShadow: true
    property int buttonStyle: Theme.ButtonStyle.Filled
    property int diameter: 48

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
                color: "transparent"
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

    background: Item {
        Rectangle {
            id: bg
            anchors.fill: parent
            // use half of the smallest side so the rectangle becomes a circle
            radius: Math.min(bg.width, bg.height) / 2

            Ripple {
                id: rippleEffect
            }

            layer.enabled: root.enabled && root.dropShadow
            layer.effect: Shadow {
                show: root.hovered
            }

            /*Behavior on color {
                ColorAnimation {
                    duration: Theme.animationNormal
                    easing.type: Easing.InOutQuad
                }
            }*/
        }
    }

    FontLoader {
        id: iconFont
        source: "../fonts/fa7.otf"
    }

    contentItem: Item {
        Text {
            id: iconText
            anchors.fill: parent
            text: root.text
            font.family: iconFont.name
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter

            /*Behavior on color {
                ColorAnimation {
                    duration: Theme.animationNormal
                    easing.type: Easing.InOutQuad
                }
            }*/
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: (mouse) => {
            rippleEffect.trigger(mouse.x, mouse.y)
            root.clicked()
        }
    }
}