#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "cat.h"

int main(int argc, char *argv[])
{
    qmlRegisterType<Cat>("com.company.cat",1,0,"Cat");

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/qmlb-11-assign/Main.qml"_qs);
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
