pragma Singleton
import QtQuick

QtObject {
    // Button style enum
    enum ButtonStyle {
        Filled,
        Outlined,
        Text
    }

    enum Theme {
        Light,
        Dark
    }


    enum ShadowDirection {
        None  = 0,
        Left  = 1,
        Right = 2,
        Up    = 4,
        Down  = 8
    }

    property int theme: Theme.Light

    // Animation durations
    readonly property int animationVeryFast: 100
    readonly property int animationFast: 150
    readonly property int animationNormal: 250
    readonly property int animationSlow: 400

    // Color palette
    readonly property color primary: "#0496FF"
    readonly property color primaryDisabled: "#BAD0DE"
    readonly property color textOnPrimary: "white"
    readonly property color textOnPrimaryDisabled: "white"

    // Validation colors
    readonly property color error: "#D32F2F"
    readonly property color success: "#388E3C"

    property color surface: theme === Theme.Light ? "white" : "#121212"

    Behavior on surface {
        ColorAnimation {
            duration: Theme.animationSlow
            easing.type: Easing.InOutQuad
        }
    }

    property color neutralTextOnSurface: theme === Theme.Light ? "#000000" : "#FFFFFF"

    Behavior on neutralTextOnSurface {
        ColorAnimation {
            duration: Theme.animationSlow
            easing.type: Easing.InOutQuad
        }
    }

    property color neutralTextOnSurfaceDisabled: theme === Theme.Light ? "#757575" : "#BDBDBD"

    readonly property color textOnSurface: "#0496FF"
    readonly property color textOnSurfaceDisabled: "#BAD0DE"

    readonly property color border: "#0496FF"
    readonly property color borderDisabled: "#BAD0DE"

    // Spacing
    readonly property int paddingSmall: 8
    readonly property int paddingMedium: 12
    readonly property int paddingLarge: 20

    // Border radius
    readonly property int radiusSmall: 4
    readonly property int radiusMedium: 8
    readonly property int radiusLarge: 20
    readonly property int radiusRound: 45

    // Shadow properties
    readonly property real shadowBlur: 0.6
    readonly property real shadowOpacity: 0.5
    readonly property int shadowOffset: 4
}

