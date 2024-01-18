#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include  <QQmlContext>
#include "test.h"
/*
  Registering a C++ class as a QML type
  allows you to use it in QML directl
 */

int main(int argc, char *argv[])
{
    // Register a type in QML
    qmlRegisterType<Test>("com.company.test", 1, 0, "Test");

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/qmlb-11-4/Main.qml"_qs);
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
