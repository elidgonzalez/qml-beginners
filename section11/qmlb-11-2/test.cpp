#include "test.h"

Test::Test(QObject *parent)
    : QObject{parent}
{}

int Test::number()
{
    // return a number
    qInfo() << "Called number()";
    return 42;
}

void Test::bark()
{
    qInfo() << "Bark bark bark";
}
