import QtQuick
import QtQuick.Controls
import QtQuick.Effects
import QtQuick.Shapes

Item {
    id: root

    property alias placeholderText: placeholder.text
    property alias exampleText: example.text
    property alias echoMode: input.echoMode
    property alias text: input.text
    property alias inputValidator: input.validator

    // Validation
    property bool isValid: true
    property string errorText: ""

    //Determines how often the cursor should blink in milliseconds
    property int cursorBlinkInterval: 500

    //Determines how fast the cursor should blink after text change in milliseconds
    property int cursorBlinkCheck: 500

    //Determines whether the cursor should be animated or not
    property bool cursorAnimation: true

    //Determines how fast the cursor should be animated (lower values = faster)
    property real cursorAnimationFactor: 1.0

    // Internal
    property bool hasFocus: false
    property bool hasText: false
    property bool shouldBlink: false
    property real lastCursorX: 0

    implicitWidth: 240
    implicitHeight: 50

    Rectangle {
        id: bg
        anchors.fill: parent

        topLeftRadius: Theme.radiusSmall
        topRightRadius: Theme.radiusSmall
        color: Theme.surface

        Rectangle {
            id: bar
            color: Theme.textOnSurfaceDisabled
            anchors.top: bg.bottom
            width: bg.width
            height: 1

            Behavior on color {
                ColorAnimation {
                    duration: Theme.animationNormal
                    easing.type: Easing.InOutQuad
                }
            }
        }
    }

    TextInput {
        id: input
        anchors.fill: parent
        anchors.leftMargin: 4
        leftPadding: 4
        rightPadding: 4
        anchors.rightMargin: 4
        verticalAlignment: TextInput.AlignVCenter
        topPadding: 10
        font.pixelSize: 14
        focus: true
        clip: true

        cursorVisible: false

        cursorDelegate: Rectangle {
            visible: false
            width: 0
        }

        selectionColor: Theme.textOnSurfaceDisabled
        color: Theme.neutralTextOnSurface

        Rectangle {
            id: cursor
            visible: input.activeFocus
            color: Theme.primary
            width: 1
            height: input.cursorRectangle.height
            y: input.cursorRectangle.y
            x: input.cursorRectangle.x

            Behavior on x {
                enabled: root.cursorAnimation
                NumberAnimation {
                    duration: Theme.animationVeryFast * root.cursorAnimationFactor
                    easing.type: Easing.OutQuad
                }
            }
        }

        onActiveFocusChanged: {
            root.hasFocus = focus
            if (focus) {
                bar.color = root.isValid ? Theme.primary : Theme.error
                root.shouldBlink = true
                cursor.visible = true
                cursor.x = Qt.binding(function () { return input.cursorRectangle.x })
                return
            }
            bar.color = root.isValid ? Theme.textOnSurfaceDisabled : Theme.error
            root.shouldBlink = false
            cursor.visible = false
        }

        onTextChanged: {
            root.hasText = text.length > 0
            root.shouldBlink = false
            cursor.visible = true
            cursorResumeBlinkTimer.restart()
        }

        onCursorRectangleChanged: {
            if (input.activeFocus && input.cursorRectangle.x !== root.lastCursorX) {
                root.lastCursorX = input.cursorRectangle.x
                root.shouldBlink = false
                cursor.visible = true
                cursorResumeBlinkTimer.restart()
            }
        }

        Text {
            id: example
            anchors.fill: parent
            leftPadding: 4
            rightPadding: 4
            topPadding: 10
            verticalAlignment: Text.AlignVCenter

            font.pixelSize: 14

            opacity: (input.text.length === 0 && root.hasFocus) ? 1 : 0
            color: Theme.neutralTextOnSurfaceDisabled

            Behavior on opacity {
                NumberAnimation {
                    duration: Theme.animationVeryFast
                }
            }
        }
    }

    Timer {
        id: cursorBlinkTimer
        interval: root.cursorBlinkInterval
        running: root.hasFocus && root.shouldBlink
        repeat: true
        onTriggered: {
            cursor.visible = !cursor.visible
        }
    }

    Timer {
        id: cursorResumeBlinkTimer
        interval: root.cursorBlinkCheck
        repeat: false
        onTriggered: {
            root.shouldBlink = true
        }
    }

    Text {
        id: placeholder
        anchors.left: parent.left
        anchors.right: parent.right

        leftPadding: 8
        rightPadding: 4

        font.pixelSize: 16
        transformOrigin: Item.Left

        states: [
            State {
                name: "floating"
                when: hasText || hasFocus
                PropertyChanges {
                    target: placeholder
                    y: 4
                    scale: 0.6875  // target/origin = 11/16 = 0.6875. Scaling is faster than changing the font size
                    leftPadding: 11
                    color: hasFocus ? Theme.primary : Theme.textOnSurfaceDisabled
                }
            },
            State {
                name: "resting"
                when: !hasText && !hasFocus
                PropertyChanges {
                    target: placeholder
                    y: (root.height - 16) / 2
                    scale: 1.0
                    leftPadding: 8
                    color: Theme.textOnSurfaceDisabled
                }
            }
        ]

        transitions: [
            Transition {
                from: "resting"
                to: "floating"
                NumberAnimation {
                    properties: "y, scale, leftPadding"
                    duration: Theme.animationNormal
                    easing.type: Easing.OutCubic
                }
                ColorAnimation {
                    duration: Theme.animationNormal
                    easing.type: Easing.OutCubic
                }
            },
            Transition {
                from: "floating"
                to: "resting"
                NumberAnimation {
                    properties: "y, scale, leftPadding"
                    duration: Theme.animationFast
                    easing.type: Easing.InOutQuad
                }
                ColorAnimation {
                    duration: Theme.animationFast
                    easing.type: Easing.InOutQuad
                }
            }
        ]
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onClicked: {
            input.forceActiveFocus()
        }
        //TODO: implement hover effect
        onEntered: {
            //bg.color = Theme.surface === "white" ? "#F5F5F5" : "#1E1E1E"
        }
        onExited: {
            //bg.color = Theme.surface === "white" ? "#FFFFFF" : "#212121"
        }
    }

    // Error text label
    Text {
        id: errorLabel
        text: root.errorText
        color: Theme.error
        font.pixelSize: 12
        anchors.top: bg.bottom
        anchors.topMargin: 4
        anchors.left: bg.left
        anchors.leftMargin: 4
        visible: !root.isValid && root.errorText.length > 0
        opacity: visible ? 1 : 0

        Behavior on opacity {
            NumberAnimation {
                duration: Theme.animationFast
            }
        }
    }

    onIsValidChanged: {
        if (root.hasFocus) {
            bar.color = root.isValid ? Theme.primary : Theme.error
        } else {
            bar.color = root.isValid ? Theme.textOnSurfaceDisabled : Theme.error
        }
    }
}