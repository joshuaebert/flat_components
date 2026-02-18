qt_add_executable(${PROJECT_NAME}
    main.cpp
)

set_source_files_properties(ui/FlatComponents/Theme.qml PROPERTIES
        QT_QML_SINGLETON_TYPE TRUE
)

qt_add_qml_module(${PROJECT_NAME}
        URI components
        VERSION 1.0

        QML_FILES
        ui/Main.qml

        ui/FlatComponents/Theme.qml
        ui/FlatComponents/Ripple.qml
        ui/FlatComponents/Shadow.qml
        ui/FlatComponents/Button.qml
        ui/FlatComponents/IconButton.qml
        ui/FlatComponents/TextField.qml
        ui/FlatComponents/Layer.qml

        RESOURCES
        ui/fonts/fa7.otf
        ui/FlatComponents/qmldir
)

target_link_libraries(${PROJECT_NAME} PRIVATE Qt6::Quick Qt6::QuickControls2)
