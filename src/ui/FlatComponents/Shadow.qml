import QtQuick
import QtQuick.Controls
import QtQuick.Effects
import QtQuick.Layouts

MultiEffect {
    id: shadowEffect

    //Controls whether the shadow is shown
    property bool show: false

    //Controls the direction of the shadow
    property int direction: Theme.ShadowDirection.Down

    //Controls the shadow intensity
    property real intensity: 1.0

    onShowChanged: {
        setDirection()
    }

    Component.onCompleted: {
        setDirection()
    }

    shadowEnabled: true
    shadowBlur: show ? Theme.shadowBlur : 0.0
    shadowOpacity: show ? Theme.shadowOpacity * intensity : 0.0
    shadowColor: "black"
    shadowScale: 1.0

    Behavior on shadowBlur {
        NumberAnimation {
            duration: Theme.animationSlow
            easing.type: Easing.OutQuad
        }
    }

    Behavior on shadowOpacity {
        NumberAnimation {
            duration: Theme.animationSlow
            easing.type: Easing.OutQuad
        }
    }

    Behavior on shadowVerticalOffset {
        NumberAnimation {
            duration: Theme.animationNormal
            easing.type: Easing.OutQuad
        }
    }

    Behavior on shadowHorizontalOffset {
        NumberAnimation {
            duration: Theme.animationNormal
            easing.type: Easing.OutQuad
        }
    }

    function setDirection() {
        if(direction & Theme.ShadowDirection.Down) {
            shadowVerticalOffset = show ? Theme.shadowOffset : 0
        } else if(direction & Theme.ShadowDirection.Up) {
            shadowVerticalOffset = show ? -Theme.shadowOffset : 0
        }

        if(direction & Theme.ShadowDirection.Right) {
            shadowHorizontalOffset = show ? Theme.shadowOffset : 0
        } else if(direction & Theme.ShadowDirection.Left) {
            shadowHorizontalOffset = show ? -Theme.shadowOffset : 0
        }
    }
}