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
                    text: "Layers"
                    font.pixelSize: 42
                    font.weight: Font.Bold
                    color: Flat.Theme.neutralTextOnSurface
                }

                Text {
                    width: parent.width
                    text: "Layers are used to group components together and create visual depth. They automatically adapt their background color based on their level, with higher levels appearing darker in dark mode and lighter in light mode."
                    wrapMode: Text.WordWrap
                    font.pixelSize: 16
                    color: Flat.Theme.neutralTextOnSurface
                    opacity: 0.7
                    lineHeight: 1.4
                }
            }

            // Layer Levels Section
            Flat.Layer {
                width: parent.width
                height: sectionLevels.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionLevels
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Layer Levels"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Each layer level has a distinct background color. Use different levels to create visual hierarchy and depth in your UI."
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
                            model: [0, 1, 2, 3, 4, 5]

                            delegate: Column {
                                spacing: 12

                                Flat.Layer {
                                    width: 80
                                    height: 80
                                    level: modelData
                                    radius: Flat.Theme.radiusSmall
                                }

                                Text {
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    text: "Level " + modelData
                                    font.pixelSize: 13
                                    font.weight: Font.Medium
                                    color: Flat.Theme.neutralTextOnSurface
                                    opacity: 0.8
                                }
                            }
                        }

                        Text {
                            text: "..."
                            font.pixelSize: 20
                            font.weight: Font.Bold
                            anchors.verticalCenter: parent.verticalCenter
                            color: Flat.Theme.neutralTextOnSurface
                            opacity: 0.5
                        }
                    }
                }
            }

            // Layers with Shadows Section
            Flat.Layer {
                width: parent.width
                height: sectionShadows.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionShadows
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Layers with Shadows"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Layers have built-in shadow support. Enable the shadow property to add depth and make elements stand out."
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
                                level: 1
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
                                level: 1
                                shadow: true
                                radius: Flat.Theme.radiusSmall
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "With Shadow"
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
                                text: "Diagonal"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }
                    }
                }
            }

            // Layer Radius Section
            Flat.Layer {
                width: parent.width
                height: sectionRadius.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionRadius
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Layer Radius"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Customize the corner radius of layers to match your design. Use theme values for consistency."
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
                                radius: 0
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "None (0)"
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
                                radius: Flat.Theme.radiusSmall
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Small"
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
                                radius: Flat.Theme.radiusMedium
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Medium"
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
                                radius: Flat.Theme.radiusLarge
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Large"
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
                                radius: Flat.Theme.radiusRound
                            }
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Round"
                                font.pixelSize: 13
                                font.weight: Font.Medium
                                color: Flat.Theme.neutralTextOnSurface
                                opacity: 0.8
                            }
                        }
                    }
                }
            }

            // Nested Layers Section
            Flat.Layer {
                width: parent.width
                height: sectionNested.height + 48
                level: 1
                radius: Flat.Theme.radiusMedium

                Column {
                    id: sectionNested
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 24
                    spacing: 20

                    Column {
                        spacing: 8
                        Text {
                            text: "Nested Layers"
                            font.pixelSize: 20
                            font.weight: Font.DemiBold
                            color: Flat.Theme.neutralTextOnSurface
                        }

                        Text {
                            width: contentColumn.width - 108
                            text: "Layers can be nested to create complex UI structures. Each nested layer adds visual depth."
                            wrapMode: Text.WordWrap
                            font.pixelSize: 14
                            color: Flat.Theme.neutralTextOnSurface
                            opacity: 0.6
                            lineHeight: 1.3
                        }
                    }

                    Row {
                        spacing: 40

                        Flat.Layer {
                            width: 200
                            height: 150
                            level: 0
                            radius: Flat.Theme.radiusMedium

                            Flat.Layer {
                                anchors.centerIn: parent
                                width: 150
                                height: 100
                                level: 1
                                radius: Flat.Theme.radiusSmall

                                Flat.Layer {
                                    anchors.centerIn: parent
                                    width: 100
                                    height: 50
                                    level: 2
                                    radius: Flat.Theme.radiusSmall

                                    Text {
                                        anchors.centerIn: parent
                                        text: "Level 2"
                                        font.pixelSize: 12
                                        font.weight: Font.Medium
                                        color: Flat.Theme.neutralTextOnSurface
                                    }
                                }
                            }
                        }

                        Flat.Layer {
                            width: 200
                            height: 150
                            level: 1
                            radius: Flat.Theme.radiusMedium
                            shadow: true

                            Column {
                                anchors.fill: parent
                                anchors.margins: 16
                                spacing: 8

                                Text {
                                    text: "Card Title"
                                    font.pixelSize: 16
                                    font.weight: Font.DemiBold
                                    color: Flat.Theme.neutralTextOnSurface
                                }

                                Text {
                                    width: parent.width
                                    text: "This is an example of a card component built with layers."
                                    font.pixelSize: 12
                                    color: Flat.Theme.neutralTextOnSurface
                                    opacity: 0.7
                                    wrapMode: Text.WordWrap
                                }

                                Item { Layout.fillHeight: true; height: 8 }

                                Flat.Button {
                                    text: "Action"
                                    buttonStyle: Flat.Theme.ButtonStyle.Filled
                                }
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