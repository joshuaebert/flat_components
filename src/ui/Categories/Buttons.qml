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
                    text: "Buttons"
                    font.pixelSize: 42
                    font.weight: Font.Bold
                    color: Flat.Theme.neutralTextOnSurface
                }

                Text {
                    width: parent.width
                    text: "Buttons are interactive elements that trigger actions when clicked. They support multiple styles, icons, and can be disabled when needed."
                    wrapMode: Text.WordWrap
                    font.pixelSize: 16
                    color: Flat.Theme.neutralTextOnSurface
                    opacity: 0.7
                    lineHeight: 1.4
                }
            }

            // Button Styles Section
            Flat.Layer {
                width: parent.width
                height: sectionStyles.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionStyles
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Button Styles"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Buttons come in three styles: Filled (primary actions), Outlined (secondary actions), and Text (tertiary actions)."
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
                            Flat.Button {
                                text: "Filled"
                                buttonStyle: Flat.Theme.ButtonStyle.Filled
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Filled"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.Button {
                                text: "Outlined"
                                buttonStyle: Flat.Theme.ButtonStyle.Outlined
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Outlined"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.Button {
                                text: "Text"
                                buttonStyle: Flat.Theme.ButtonStyle.Text
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Text"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }
                    }
                }
            }

            // Buttons with Icons Section
            Flat.Layer {
                width: parent.width
                height: sectionIcons.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionIcons
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Buttons with Icons"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Buttons can include icons to provide visual context for the action."
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
                            Flat.Button {
                                text: "Save"
                                icon.name: "\uF0C7"
                                buttonStyle: Flat.Theme.ButtonStyle.Filled
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "With Icon"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.Button {
                                text: "Delete"
                                icon.name: "\uF1F8"
                                buttonStyle: Flat.Theme.ButtonStyle.Outlined
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Outlined + Icon"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.Button {
                                text: "Settings"
                                icon.name: "\uF013"
                                buttonStyle: Flat.Theme.ButtonStyle.Text
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Text + Icon"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }
                    }
                }
            }

            // Disabled Buttons Section
            Flat.Layer {
                width: parent.width
                height: sectionDisabled.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionDisabled
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Disabled Buttons"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Buttons can be disabled to indicate that an action is not currently available."
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
                            Flat.Button {
                                text: "Disabled"
                                buttonStyle: Flat.Theme.ButtonStyle.Filled
                                enabled: false
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Filled"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.Button {
                                text: "Disabled"
                                buttonStyle: Flat.Theme.ButtonStyle.Outlined
                                enabled: false
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Outlined"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.Button {
                                text: "Disabled"
                                buttonStyle: Flat.Theme.ButtonStyle.Text
                                enabled: false
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Text"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }
                    }
                }
            }

            // Icon Buttons Section
            Flat.Layer {
                width: parent.width
                height: sectionIconButtons.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionIconButtons
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Icon Buttons"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Icon buttons are circular buttons that display only an icon. They are useful for compact actions or toolbars."
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
                            Flat.IconButton {
                                text: "\uF015"
                                buttonStyle: Flat.Theme.ButtonStyle.Filled
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Filled"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.IconButton {
                                text: "\uF002"
                                buttonStyle: Flat.Theme.ButtonStyle.Outlined
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Outlined"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.IconButton {
                                text: "\uF013"
                                buttonStyle: Flat.Theme.ButtonStyle.Text
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Text"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }
                    }
                }
            }

            // Icon Button Sizes Section
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
                            text: "Icon Button Sizes"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Icon buttons can have different diameters to fit various UI contexts."
                            wrapMode: Text.WordWrap
                            font.pixelSize: 14
                            color: Flat.Theme.neutralTextOnSurface
                            opacity: 0.6
                            lineHeight: 1.3
                        }
                    }

                    Row {
                        spacing: 24
                        anchors.left: parent.left

                        Column {
                            spacing: 12
                            Flat.IconButton {
                                text: "\uF004"
                                buttonStyle: Flat.Theme.ButtonStyle.Filled
                                diameter: 32
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Small (32)"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.IconButton {
                                text: "\uF004"
                                buttonStyle: Flat.Theme.ButtonStyle.Filled
                                diameter: 48
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Default (48)"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.IconButton {
                                text: "\uF004"
                                buttonStyle: Flat.Theme.ButtonStyle.Filled
                                diameter: 64
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Large (64)"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }
                    }
                }
            }

            // Disabled Icon Buttons Section
            Flat.Layer {
                width: parent.width
                height: sectionDisabledIcons.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionDisabledIcons
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Disabled Icon Buttons"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Icon buttons can also be disabled to indicate unavailable actions."
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
                            Flat.IconButton {
                                text: "\uF00D"
                                buttonStyle: Flat.Theme.ButtonStyle.Filled
                                enabled: false
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Filled"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.IconButton {
                                text: "\uF00D"
                                buttonStyle: Flat.Theme.ButtonStyle.Outlined
                                enabled: false
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Outlined"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.IconButton {
                                text: "\uF00D"
                                buttonStyle: Flat.Theme.ButtonStyle.Text
                                enabled: false
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Text"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }
                    }
                }
            }

            // Interactive Demo Section
            Flat.Layer {
                width: parent.width
                height: sectionInteractive.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionInteractive
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Interactive Demo"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Click the toggle button to enable or disable the other buttons."
                            wrapMode: Text.WordWrap
                            font.pixelSize: 14
                            color: Flat.Theme.neutralTextOnSurface
                            opacity: 0.6
                            lineHeight: 1.3
                        }
                    }

                    Row {
                        spacing: 24

                        Flat.Button {
                            id: toggleButton
                            text: "Toggle Buttons"
                            icon.name: "\uF0EC"
                            buttonStyle: Flat.Theme.ButtonStyle.Filled
                            onClicked: {
                                demoButton1.enabled = !demoButton1.enabled
                                demoButton2.enabled = !demoButton2.enabled
                                demoIconButton.enabled = !demoIconButton.enabled
                            }
                        }

                        Flat.Button {
                            id: demoButton1
                            text: "Enabled"
                            buttonStyle: Flat.Theme.ButtonStyle.Outlined
                        }

                        Flat.Button {
                            id: demoButton2
                            text: "Enabled"
                            buttonStyle: Flat.Theme.ButtonStyle.Text
                        }

                        Flat.IconButton {
                            id: demoIconButton
                            text: "\uF00C"
                            buttonStyle: Flat.Theme.ButtonStyle.Filled
                        }
                    }
                }
            }

            // Bottom spacing
            Item {
                width: 1
                height: 40
            }
        }
    }
}