import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Effects

import "FlatComponents" as Flat

import "Categories" as Categories

Window {
    id: window
    visible: true
    width: 1200
    height: 800
    color: Flat.Theme.surface

    ColumnLayout {
        id: mainLayout
        anchors.fill: parent
        spacing: 0
        Flat.Layer {
            Layout.fillWidth: true
            Layout.preferredHeight: 80
            shadow: true
            z: 1000

            RowLayout {
                id: topBarLayout
                anchors.fill: parent
                anchors.margins: 10
                spacing: 10

                Flat.IconButton {
                    id: hamburgerButton
                    buttonStyle: Flat.Theme.ButtonStyle.Text
                    text: "\u{F0C9}"

                    onClicked: {
                        sidenav.expanded = !sidenav.expanded
                    }
                }

                Text {
                    text: "Flat Components"
                    color: Flat.Theme.neutralTextOnSurface
                    font.pixelSize: 20
                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                }

                Item {
                    Layout.fillWidth: true
                }

                Flat.IconButton {
                    id: settingsButton
                    buttonStyle: Flat.Theme.ButtonStyle.Text
                    text: "\u{F013}"
                }

                Flat.IconButton {
                    id: themeButton
                    buttonStyle: Flat.Theme.ButtonStyle.Text
                    text: "\u{25D0}"

                    onClicked: {
                        Flat.Theme.theme = Flat.Theme.theme === Flat.Theme.Theme.Light ? Flat.Theme.Theme.Dark : Flat.Theme.Theme.Light
                    }
                }
            }
        }

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true

            Flat.Layer {
                id: sidenav
                shadow: true
                clip: true
                shadowDirection: Flat.Theme.ShadowDirection.Right
                property bool expanded: false
                width: expanded ? 200 : 0
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.left: parent.left

                Behavior on width {
                    NumberAnimation {
                        duration: Flat.Theme.animationNormal
                        easing.type: Easing.InOutQuad
                    }
                }

                ColumnLayout {
                    anchors.topMargin: 10
                    anchors.leftMargin: 4
                    anchors.rightMargin: 4
                    anchors.fill: parent
                    spacing: 4

                    layer.enabled: true
                    layer.effect: MultiEffect {
                        maskEnabled: true
                        maskThresholdMin: 0.5
                        maskSpreadAtMin: 1.0
                        maskSource: ShaderEffectSource {
                            sourceItem: Rectangle {
                                width: sidenav.width
                                height: sidenav.height
                            }
                        }
                    }

                    Flat.Button {
                        text: "Buttons"
                        //icon.name: "\uF192"
                        buttonStyle: Flat.Theme.ButtonStyle.Text
                        Layout.fillWidth: true

                        onClicked: {
                            content.source = "Categories/Buttons.qml"
                            sidenav.expanded = false
                        }
                    }
                    Flat.Button {
                        text: "Layers"
                        //icon.name: "\uF248"
                        buttonStyle: Flat.Theme.ButtonStyle.Text
                        Layout.fillWidth: true

                        onClicked: {
                            content.source = "Categories/Layers.qml"
                            sidenav.expanded = false
                        }
                    }
                    Flat.Button {
                        text: "Navigation Bar"
                        //icon.name: "\uF601"
                        buttonStyle: Flat.Theme.ButtonStyle.Text
                        Layout.fillWidth: true
                    }
                    Flat.Button {
                        text: "Navigation Drawer"
                        //icon.name: "\uF0C9"
                        buttonStyle: Flat.Theme.ButtonStyle.Text
                        Layout.fillWidth: true
                    }
                    Flat.Button {
                        text: "Ripples"
                        //icon.name: "\uF773"
                        buttonStyle: Flat.Theme.ButtonStyle.Text
                        Layout.fillWidth: true

                        onClicked: {
                            content.source = "Categories/Ripples.qml"
                            sidenav.expanded = false
                        }
                    }
                    Flat.Button {
                        text: "Shadows"
                        //icon.name: "\uF185"
                        buttonStyle: Flat.Theme.ButtonStyle.Text
                        Layout.fillWidth: true

                        onClicked: {
                            content.source = "Categories/Shadows.qml"
                            sidenav.expanded = false
                        }
                    }
                    Flat.Button {
                        text: "Text Fields"
                        //icon.name: "\uF4AD"
                        buttonStyle: Flat.Theme.ButtonStyle.Text
                        Layout.fillWidth: true

                        onClicked: {
                            content.source = "Categories/TextFields.qml"
                            sidenav.expanded = false
                        }
                    }


                    Item {
                        Layout.fillHeight: true
                    }
                }
            }

            Loader {
                id: content
                anchors.fill: parent
                sourceComponent: defaultContent
            }

            Component {
                id: defaultContent
                Flat.Layer {

                    level: 1

                    Column {
                        anchors.fill: parent
                        anchors.leftMargin: 60
                        anchors.topMargin: 40
                        spacing: 6
                        Flat.TextField {
                            id: textField
                            placeholderText: "Hallo"
                            exampleText: "Hallo 2"
                        }
                        Flat.TextField {
                            id: textField2
                        }
                    }
                }
            }
        }
    }

    /*Row {
        spacing: 6
        anchors.centerIn: parent
        Column {
            spacing: 6

            Flat.Button {
                id: disableMe
                enabled: true
                icon.name: "\uf2b9"
                text: ""
                buttonStyle: Flat.Theme.ButtonStyle.Outlined
            }

            Flat.Button {
                enabled: true
                text: "Disable button..."
                buttonStyle: Flat.Theme.ButtonStyle.Outlined

                onClicked: {
                    disableMe.enabled = !disableMe.enabled
                    disableMe2.enabled = !disableMe2.enabled
                    this.text = disableMe.enabled ? "Disable button..." : "Enable button..."
                }
            }

            Flat.IconButton {
                id: "disableMe2"
                enabled: true
                text: "\uf2b9"
                buttonStyle: Flat.Theme.ButtonStyle.Outlined
            }

            Flat.TextField {
                enabled: true
            }
        }
    }*/
}