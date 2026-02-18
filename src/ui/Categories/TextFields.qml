import QtQuick
import QtQuick.Layouts
import "../FlatComponents" as Flat

Flat.Layer {
    level: 0

    Flickable {
        anchors.fill: parent
        contentHeight: contentColumn.height + 60
        clip: true

        Column {
            id: contentColumn
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 40
            anchors.leftMargin: 60
            anchors.rightMargin: 60
            spacing: 40

            // Header
            Column {
                width: parent.width
                spacing: 12

                Text {
                    text: "Text Fields"
                    font.pixelSize: 42
                    font.weight: Font.Bold
                    color: Flat.Theme.neutralTextOnSurface
                }

                Text {
                    width: parent.width
                    text: "Text fields allow users to enter and edit text. They support placeholder text, example text hints, and customizable cursor behavior."
                    wrapMode: Text.WordWrap
                    font.pixelSize: 16
                    color: Flat.Theme.neutralTextOnSurface
                    opacity: 0.7
                    lineHeight: 1.4
                }
            }

            // Basic Text Fields Section
            Flat.Layer {
                width: parent.width
                height: sectionBasic.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionBasic
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Basic Text Fields"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Text fields with placeholder text that floats above when focused or filled."
                            wrapMode: Text.WordWrap
                            font.pixelSize: 14
                            color: Flat.Theme.neutralTextOnSurface
                            opacity: 0.6
                            lineHeight: 1.3
                        }
                    }

                    Row {
                        spacing: 24

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Username"
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Default"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Email"
                                width: 280
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Wider"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Password"
                                width: 200
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Narrower"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }
                    }
                }
            }

            // Text Fields with Example Text Section
            Flat.Layer {
                width: parent.width
                height: sectionExample.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionExample
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "With Example Text"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Text fields can show example text when focused to guide users on the expected input format."
                            wrapMode: Text.WordWrap
                            font.pixelSize: 14
                            color: Flat.Theme.neutralTextOnSurface
                            opacity: 0.6
                            lineHeight: 1.3
                        }
                    }

                    Row {
                        spacing: 24

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Phone"
                                exampleText: "+49 176 12345678"
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Phone Format"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Date"
                                exampleText: "TT.MM.YYYY"
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Date Format"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Website"
                                exampleText: "https://arbeitszeitbetrug.jetzt/"
                                width: 280
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "URL Format"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }
                    }
                }
            }

            // Password Fields Section
            Flat.Layer {
                width: parent.width
                height: sectionPassword.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionPassword
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Password Fields"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Text fields support different echo modes for password input. Use echoMode to control how text is displayed."
                            wrapMode: Text.WordWrap
                            font.pixelSize: 14
                            color: Flat.Theme.neutralTextOnSurface
                            opacity: 0.6
                            lineHeight: 1.3
                        }
                    }

                    Row {
                        spacing: 24

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Password"
                                echoMode: TextInput.Password
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Password"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "PIN"
                                echoMode: TextInput.PasswordEchoOnEdit
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Echo On Edit"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Secret"
                                echoMode: TextInput.NoEcho
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "No Echo"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Normal"
                                echoMode: TextInput.Normal
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Normal"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }
                    }
                }
            }

            // Validated Fields Section
            Flat.Layer {
                width: parent.width
                height: sectionValidation.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionValidation
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Input Validators"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Qt provides built-in validators to restrict input. IntValidator for integers, DoubleValidator for decimals, and RegularExpressionValidator for pattern matching."
                            wrapMode: Text.WordWrap
                            font.pixelSize: 14
                            color: Flat.Theme.neutralTextOnSurface
                            opacity: 0.6
                            lineHeight: 1.3
                        }
                    }

                    Row {
                        spacing: 24

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Age (0-120)"
                                inputValidator: IntValidator {
                                    bottom: 0
                                    top: 120
                                }
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "IntValidator"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Price (0.00-999.99)"
                                inputValidator: DoubleValidator {
                                    bottom: 0.0
                                    top: 999.99
                                    decimals: 2
                                    notation: DoubleValidator.StandardNotation
                                }
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "DoubleValidator"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Hex Color (#RRGGBB)"
                                inputValidator: RegularExpressionValidator {
                                    regularExpression: /^#[0-9A-Fa-f]{0,6}$/
                                }
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "RegExpValidator"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }
                    }

                    Row {
                        spacing: 24

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Phone (digits only)"
                                inputValidator: RegularExpressionValidator {
                                    regularExpression: /^[0-9]*$/
                                }
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Digits Only"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Letters only"
                                inputValidator: RegularExpressionValidator {
                                    regularExpression: /^[A-Za-z]*$/
                                }
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Letters Only"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Percentage (0-100)"
                                inputValidator: IntValidator {
                                    bottom: 0
                                    top: 100
                                }
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Percentage"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }
                    }
                }
            }

            // Cursor Behavior Section
            Flat.Layer {
                width: parent.width
                height: sectionCursor.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionCursor
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Cursor Behavior"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Cursor blink interval and pause timing can be customized. The cursor pauses blinking while typing or moving."
                            wrapMode: Text.WordWrap
                            font.pixelSize: 14
                            color: Flat.Theme.neutralTextOnSurface
                            opacity: 0.6
                            lineHeight: 1.3
                        }
                    }

                    Row {
                        spacing: 24

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Default"
                                cursorBlinkInterval: 500
                                cursorBlinkCheck: 500
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "500ms Blink"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Fast Blink"
                                cursorBlinkInterval: 250
                                cursorBlinkCheck: 300
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "250ms Blink"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Slow Blink"
                                cursorBlinkInterval: 1000
                                cursorBlinkCheck: 800
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "1000ms Blink"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }
                    }
                }
            }

            // Cursor Animation Section
            Flat.Layer {
                width: parent.width
                height: sectionCursorAnimation.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionCursorAnimation
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Cursor Animation"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "The cursor movement can be animated for a smooth typing experience, or disabled for instant cursor positioning. The animation speed can be adjusted with cursorAnimationFactor."
                            wrapMode: Text.WordWrap
                            font.pixelSize: 14
                            color: Flat.Theme.neutralTextOnSurface
                            opacity: 0.6
                            lineHeight: 1.3
                        }
                    }

                    Row {
                        spacing: 24

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Animated Cursor"
                                cursorAnimation: true
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Animation On"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Instant Cursor"
                                cursorAnimation: false
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Animation Off"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Type to compare"
                                exampleText: "Watch the cursor move"
                                cursorAnimation: true
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "With Example Text"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }
                    }

                    Row {
                        spacing: 24

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Fast Cursor"
                                cursorAnimation: true
                                cursorAnimationFactor: 0.5
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Speed 0.5x"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Normal Cursor"
                                cursorAnimation: true
                                cursorAnimationFactor: 1.0
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Speed 1.0x (default)"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Slow Cursor"
                                cursorAnimation: true
                                cursorAnimationFactor: 3.0
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Speed 3.0x"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }
                    }
                }
            }

            // Different Sizes Section
            Flat.Layer {
                width: parent.width
                height: sectionSizes.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionSizes
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Different Sizes"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Text fields can be sized to fit different layout requirements."
                            wrapMode: Text.WordWrap
                            font.pixelSize: 14
                            color: Flat.Theme.neutralTextOnSurface
                            opacity: 0.6
                            lineHeight: 1.3
                        }
                    }

                    Column {
                        spacing: 16

                        Row {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Short"
                                width: 120
                            }
                            Text {
                                anchors.verticalCenter: parent.children[0].verticalCenter
                                text: "120px width"
                                font.pixelSize: 13
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.6
                            }
                        }

                        Row {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Medium"
                                width: 240
                            }
                            Text {
                                anchors.verticalCenter: parent.children[0].verticalCenter
                                text: "240px width (default)"
                                font.pixelSize: 13
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.6
                            }
                        }

                        Row {
                            spacing: 12
                            Flat.TextField {
                                placeholderText: "Full Width Text Field"
                                width: contentColumn.width - 200
                            }
                            Text {
                                anchors.verticalCenter: parent.children[0].verticalCenter
                                text: "Full width"
                                font.pixelSize: 13
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.6
                            }
                        }
                    }
                }
            }
        }
    }
}

