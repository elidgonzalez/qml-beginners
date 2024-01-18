#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "machine.h"

int main(int argc, char *argv[])
{
    qmlRegisterType<Machine>("com.company.machine", 1, 0, "Machine");

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/qmlb-11-5/Main.qml"_qs);
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
