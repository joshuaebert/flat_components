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
                    text: "Shadows"
                    font.pixelSize: 42
                    font.weight: Font.Bold
                    color: Flat.Theme.neutralTextOnSurface
                }

                Text {
                    width: parent.width
                    text: "Shadows add depth and visual hierarchy to UI elements. They can be applied in different directions and intensities to create various effects."
                    wrapMode: Text.WordWrap
                    font.pixelSize: 16
                    color: Flat.Theme.neutralTextOnSurface
                    opacity: 0.7
                    lineHeight: 1.4
                }
            }

            // Shadow Directions Section
            Flat.Layer {
                width: parent.width
                height: sectionDirections.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionDirections
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Shadow Directions"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Shadows can be cast in four directions: Down, Up, Left, and Right. Use None for a centered shadow with no offset."
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
                                { name: "None", dir: Flat.Theme.ShadowDirection.None },
                                { name: "Down", dir: Flat.Theme.ShadowDirection.Down },
                                { name: "Up", dir: Flat.Theme.ShadowDirection.Up },
                                { name: "Left", dir: Flat.Theme.ShadowDirection.Left },
                                { name: "Right", dir: Flat.Theme.ShadowDirection.Right }
                            ]

                            delegate: Column {
                                spacing: 12

                                Rectangle {
                                    width: 80
                                    height: 80
                                    color: Flat.Theme.surface
                                    border.color: Flat.Theme.border
                                    border.width: 1
                                    radius: Flat.Theme.radiusSmall
                                    layer.enabled: true
                                    layer.effect: Flat.Shadow {
                                        show: true
                                        direction: modelData.dir
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

            // Combined Directions Section
            Flat.Layer {
                width: parent.width
                height: sectionCombined.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionCombined
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Combined Directions"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Shadow directions can be combined using bitwise OR to create diagonal shadows."
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
                                { name: "Down + Right", dir: Flat.Theme.ShadowDirection.Down | Flat.Theme.ShadowDirection.Right },
                                { name: "Down + Left", dir: Flat.Theme.ShadowDirection.Down | Flat.Theme.ShadowDirection.Left },
                                { name: "Up + Right", dir: Flat.Theme.ShadowDirection.Up | Flat.Theme.ShadowDirection.Right },
                                { name: "Up + Left", dir: Flat.Theme.ShadowDirection.Up | Flat.Theme.ShadowDirection.Left }
                            ]

                            delegate: Column {
                                spacing: 12

                                Rectangle {
                                    width: 80
                                    height: 80
                                    color: Flat.Theme.surface
                                    border.color: Flat.Theme.border
                                    border.width: 1
                                    radius: Flat.Theme.radiusSmall
                                    layer.enabled: true
                                    layer.effect: Flat.Shadow {
                                        show: true
                                        direction: modelData.dir
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

            // Shadow Intensity Section
            Flat.Layer {
                width: parent.width
                height: sectionIntensity.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionIntensity
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Shadow Intensity"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "The intensity property controls how strong the shadow appears. Values range from 0.0 (invisible) to 1.0 (full strength) and beyond."
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
                                { name: "0.25", val: 0.25 },
                                { name: "0.5", val: 0.5 },
                                { name: "1.0", val: 1.0 },
                                { name: "1.5", val: 1.5 },
                                { name: "2.0", val: 2.0 }
                            ]

                            delegate: Column {
                                spacing: 12

                                Rectangle {
                                    width: 80
                                    height: 80
                                    color: Flat.Theme.surface
                                    border.color: Flat.Theme.border
                                    border.width: 1
                                    radius: Flat.Theme.radiusSmall
                                    layer.enabled: true
                                    layer.effect: Flat.Shadow {
                                        show: true
                                        direction: Flat.Theme.ShadowDirection.Down
                                        intensity: modelData.val
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

            // Shadow on Layers Section
            Flat.Layer {
                width: parent.width
                height: sectionLayers.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionLayers
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Shadow on Layers"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Layers have built-in shadow support. Enable the shadow property and set the shadowDirection to add depth."
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
                            Flat.Layer {
                                width: 80
                                height: 80
                                level: 2
                                shadow: false
                                radius: Flat.Theme.radiusSmall
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "No Shadow"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.Layer {
                                width: 80
                                height: 80
                                level: 2
                                shadow: true
                                shadowDirection: Flat.Theme.ShadowDirection.Down
                                radius: Flat.Theme.radiusSmall
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Down"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.Layer {
                                width: 80
                                height: 80
                                level: 2
                                shadow: true
                                shadowDirection: Flat.Theme.ShadowDirection.Right
                                radius: Flat.Theme.radiusSmall
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Right"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }

                        Column {
                            spacing: 12
                            Flat.Layer {
                                width: 80
                                height: 80
                                level: 2
                                shadow: true
                                shadowDirection: Flat.Theme.ShadowDirection.Down | Flat.Theme.ShadowDirection.Right
                                radius: Flat.Theme.radiusSmall
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Down + Right"
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
