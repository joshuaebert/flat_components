//
// Created by Joshua Ebert on 1/13/26.
//

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <qqmlcomponent.h>
#include <QQuickStyle>
#include <QStyleHints>

int main(int argc, char *argv[]) {
    QQuickStyle::setStyle("Basic");

    QGuiApplication app(argc, argv);
    app.styleHints()->setColorScheme(Qt::ColorScheme::Dark);

    QQmlApplicationEngine engine;


    if (engine.rootObjects().isEmpty()) {
        return -1;
    }

    const auto exec_result = app.exec();

    return exec_result;
}