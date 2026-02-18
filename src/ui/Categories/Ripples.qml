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
                    text: "Ripples"
                    font.pixelSize: 42
                    font.weight: Font.Bold
                    color: Flat.Theme.neutralTextOnSurface
                }

                Text {
                    width: parent.width
                    text: "Ripples provide visual feedback when users interact with elements. They create a wave effect that emanates from the point of interaction, enhancing the tactile feel of the interface."
                    wrapMode: Text.WordWrap
                    font.pixelSize: 16
                    color: Flat.Theme.neutralTextOnSurface
                    opacity: 0.7
                    lineHeight: 1.4
                }
            }

            // Basic Ripple Section
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
                            text: "Basic Ripple"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Click anywhere on the surface to trigger a ripple effect. The ripple emanates from the click position."
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

                            Rectangle {
                                id: basicRippleBox
                                width: 150
                                height: 100
                                color: Flat.Theme.surface
                                border.color: Flat.Theme.border
                                border.width: 1
                                radius: Flat.Theme.radiusMedium

                                Flat.Ripple {
                                    id: basicRipple
                                }

                                MouseArea {
                                    anchors.fill: parent
                                    onPressed: (mouse) => basicRipple.trigger(mouse.x, mouse.y)
                                }

                                Text {
                                    anchors.centerIn: parent
                                    text: "Click me"
                                    color: Flat.Theme.neutralTextOnSurface
                                    font.pixelSize: 14
                                    font.weight: Font.Medium
                                }
                            }

                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Default Ripple"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }
                    }
                }
            }

            // Ripple Colors Section
            Flat.Layer {
                width: parent.width
                height: sectionColors.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionColors
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Ripple Colors"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "The ripple color can be customized to match your design. Use the rippleColor property to set any color."
                            wrapMode: Text.WordWrap
                            font.pixelSize: 14
                            color: Flat.Theme.neutralTextOnSurface
                            opacity: 0.6
                            lineHeight: 1.3
                        }
                    }

                    Row {
                        spacing: 24

                        Repeater {
                            model: [
                                { name: "Primary", color: Flat.Theme.primary },
                                { name: "Red", color: "#E53935" },
                                { name: "Green", color: "#43A047" },
                                { name: "Purple", color: "#8E24AA" },
                                { name: "Orange", color: "#FB8C00" }
                            ]

                            delegate: Column {
                                spacing: 12

                                Rectangle {
                                    width: 100
                                    height: 80
                                    color: Flat.Theme.surface
                                    border.color: Flat.Theme.border
                                    border.width: 1
                                    radius: Flat.Theme.radiusSmall

                                    Flat.Ripple {
                                        id: colorRipple
                                        rippleColor: modelData.color
                                    }

                                    MouseArea {
                                        anchors.fill: parent
                                        onPressed: (mouse) => colorRipple.trigger(mouse.x, mouse.y)
                                    }

                                    Rectangle {
                                        anchors.bottom: parent.bottom
                                        anchors.bottomMargin: 8
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        width: 20
                                        height: 20
                                        radius: 10
                                        color: modelData.color
                                    }
                                }

                                Text {
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    text: modelData.name
                                    font.pixelSize: 13
                                    font.weight: Font.Medium
                                    color: Flat.Theme.neutralTextOnSurface
                                    opacity: 0.8
                                }
                            }
                        }
                    }
                }
            }

            // Ripple Opacity Section
            Flat.Layer {
                width: parent.width
                height: sectionOpacity.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionOpacity
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Ripple Opacity"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Control the intensity of the ripple effect with the rippleOpacity property. Lower values create subtle effects, higher values are more pronounced."
                            wrapMode: Text.WordWrap
                            font.pixelSize: 14
                            color: Flat.Theme.neutralTextOnSurface
                            opacity: 0.6
                            lineHeight: 1.3
                        }
                    }

                    Row {
                        spacing: 24

                        Repeater {
                            model: [
                                { name: "0.2", val: 0.2 },
                                { name: "0.4", val: 0.4 },
                                { name: "0.5 (default)", val: 0.5 },
                                { name: "0.7", val: 0.7 },
                                { name: "1.0", val: 1.0 }
                            ]

                            delegate: Column {
                                spacing: 12

                                Rectangle {
                                    width: 100
                                    height: 80
                                    color: Flat.Theme.surface
                                    border.color: Flat.Theme.border
                                    border.width: 1
                                    radius: Flat.Theme.radiusSmall

                                    Flat.Ripple {
                                        id: opacityRipple
                                        rippleOpacity: modelData.val
                                    }

                                    MouseArea {
                                        anchors.fill: parent
                                        onPressed: (mouse) => opacityRipple.trigger(mouse.x, mouse.y)
                                    }
                                }

                                Text {
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    text: modelData.name
                                    font.pixelSize: 13
                                    font.weight: Font.Medium
                                    color: Flat.Theme.neutralTextOnSurface
                                    opacity: 0.8
                                }
                            }
                        }
                    }
                }
            }

            // Ripple Duration Section
            Flat.Layer {
                width: parent.width
                height: sectionDuration.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionDuration
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Ripple Duration"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "The duration property controls how long the ripple animation takes. Faster durations feel snappier, slower ones more elegant."
                            wrapMode: Text.WordWrap
                            font.pixelSize: 14
                            color: Flat.Theme.neutralTextOnSurface
                            opacity: 0.6
                            lineHeight: 1.3
                        }
                    }

                    Row {
                        spacing: 24

                        Repeater {
                            model: [
                                { name: "Fast (150ms)", val: 150 },
                                { name: "Normal (250ms)", val: 250 },
                                { name: "Slow (400ms)", val: 400 },
                                { name: "Very Slow (800ms)", val: 800 }
                            ]

                            delegate: Column {
                                spacing: 12

                                Rectangle {
                                    width: 120
                                    height: 80
                                    color: Flat.Theme.surface
                                    border.color: Flat.Theme.border
                                    border.width: 1
                                    radius: Flat.Theme.radiusSmall

                                    Flat.Ripple {
                                        id: durationRipple
                                        duration: modelData.val
                                    }

                                    MouseArea {
                                        anchors.fill: parent
                                        onPressed: (mouse) => durationRipple.trigger(mouse.x, mouse.y)
                                    }
                                }

                                Text {
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    text: modelData.name
                                    font.pixelSize: 13
                                    font.weight: Font.Medium
                                    color: Flat.Theme.neutralTextOnSurface
                                    opacity: 0.8
                                }
                            }
                        }
                    }
                }
            }

            // Ripples on Buttons Section
            Flat.Layer {
                width: parent.width
                height: sectionButtons.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionButtons
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Ripples on Buttons"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Buttons have built-in ripple effects that automatically match the button style. The ripple color adapts to ensure visibility."
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
                                text: "Filled Button"
                                buttonStyle: Flat.Theme.ButtonStyle.Filled
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "White Ripple"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.Button {
                                text: "Outlined Button"
                                buttonStyle: Flat.Theme.ButtonStyle.Outlined
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Primary Ripple"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.Button {
                                text: "Text Button"
                                buttonStyle: Flat.Theme.ButtonStyle.Text
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Neutral Ripple"
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
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Icon Button"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }
                    }
                }
            }

            // Different Shapes Section
            Flat.Layer {
                width: parent.width
                height: sectionShapes.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionShapes
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Ripples on Different Shapes"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Ripples automatically clip to the shape of their container, working seamlessly with different border radii."
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

                            Rectangle {
                                width: 100
                                height: 80
                                color: Flat.Theme.surface
                                border.color: Flat.Theme.border
                                border.width: 1
                                radius: 0

                                Flat.Ripple {
                                    id: squareRipple
                                }

                                MouseArea {
                                    anchors.fill: parent
                                    onPressed: (mouse) => squareRipple.trigger(mouse.x, mouse.y)
                                }
                            }

                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Square"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12

                            Rectangle {
                                width: 100
                                height: 80
                                color: Flat.Theme.surface
                                border.color: Flat.Theme.border
                                border.width: 1
                                radius: Flat.Theme.radiusMedium

                                Flat.Ripple {
                                    id: roundedRipple
                                }

                                MouseArea {
                                    anchors.fill: parent
                                    onPressed: (mouse) => roundedRipple.trigger(mouse.x, mouse.y)
                                }
                            }

                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Rounded"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12

                            Rectangle {
                                width: 100
                                height: 80
                                color: Flat.Theme.surface
                                border.color: Flat.Theme.border
                                border.width: 1
                                radius: Flat.Theme.radiusLarge

                                Flat.Ripple {
                                    id: pillRipple
                                }

                                MouseArea {
                                    anchors.fill: parent
                                    onPressed: (mouse) => pillRipple.trigger(mouse.x, mouse.y)
                                }
                            }

                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Pill"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12

                            Rectangle {
                                width: 80
                                height: 80
                                color: Flat.Theme.surface
                                border.color: Flat.Theme.border
                                border.width: 1
                                radius: 40

                                Flat.Ripple {
                                    id: circleRipple
                                }

                                MouseArea {
                                    anchors.fill: parent
                                    onPressed: (mouse) => circleRipple.trigger(mouse.x, mouse.y)
                                }
                            }

                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Circle"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
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

