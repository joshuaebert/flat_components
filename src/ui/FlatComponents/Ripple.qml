import QtQuick
import QtQuick.Controls
import QtQuick.Effects

Item {
    id: root

    property color rippleColor: Theme.primary
    property real rippleOpacity: 0.5
    property int duration: Theme.animationSlow
    property Item boundaries: parent

    anchors.fill: boundaries
    clip: true

    layer.enabled: true
    layer.effect: MultiEffect {
        maskEnabled: true
        maskThresholdMin: 0.5
        maskSpreadAtMin: 1.0
        maskSource: ShaderEffectSource {
            sourceItem: Rectangle {
                width: root.width
                height: root.height
                radius: root.parent.radius
            }
        }
    }

    Rectangle {
        id: ripple
        radius: Math.hypot(root.width, root.height) * 2
        color: root.rippleColor

        property real centerX: 0
        property real centerY: 0

        x: centerX - width / 2
        y: centerY - height / 2
        width: 0
        height: 0
        opacity: root.rippleOpacity

        ParallelAnimation {
            id: rippleAnimation
            NumberAnimation {
                target: ripple
                property: "width"
                duration: root.duration
                easing.type: Easing.OutQuad
                from: 0
                //to: Math.hypot(root.width, root.height) * 2 correct but too much computational overhead. Approximation is fine
                to: Math.max(root.width, root.height) * 2
            }
            NumberAnimation {
                target: ripple
                property: "height"
                duration: root.duration
                easing.type: Easing.OutQuad
                from: 0
                //to: Math.hypot(root.width, root.height) * 2 correct but too much computational overhead. Approximation is fine
                to: Math.max(root.width, root.height) * 2
            }
            NumberAnimation {
                target: ripple
                property: "opacity"
                duration: root.duration
                easing.type: Easing.OutQuad
                from: root.rippleOpacity
                to: 0
            }
            alwaysRunToEnd: false
        }
    }

    function trigger(x, y) {
        ripple.centerX = x
        ripple.centerY = y
        rippleAnimation.stop()
        rippleAnimation.start()
    }
}