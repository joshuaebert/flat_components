import QtQuick
import QtQuick.Controls
import QtQuick.Effects

Button {
    id: root
    property bool dropShadow: true
    property int buttonStyle: Theme.ButtonStyle.Filled

    topPadding: Theme.paddingMedium
    bottomPadding: Theme.paddingMedium
    leftPadding: Theme.paddingLarge
    rightPadding: Theme.paddingLarge

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
                target: labelText
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
                target: labelText
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
                target: labelText
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
            radius: Theme.radiusMedium

            Ripple {
                id: rippleEffect
            }

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

            /*Behavior on color {
                ColorAnimation {
                    duration: Theme.animationNormal
                    easing.type: Easing.InOutQuad
                }
            }*/
        }
    }


    contentItem: Row {
        spacing: 6
        anchors.centerIn: parent

        FontLoader {
            id: iconFont
            source: "../fonts/fa7.otf"
        }

        Text {
            id: iconText
            text: root.icon.name
            font.family: iconFont.name
            font.pixelSize: 20
            visible: root.icon.name !== ""

            /*Behavior on color {
                ColorAnimation {
                    duration: Theme.animationNormal
                    easing.type: Easing.InOutQuad
                }
            }*/
        }

        Text {
            id: labelText
            text: root.text
            font.pixelSize: 16
            visible: root.text !== ""

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