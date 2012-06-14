#include <QtCore/QString>
#include <QtTest/QtTest>
#include <QtCore/QCoreApplication>
#include "../ChatterBoxServer.h"

class ServertestTest : public QObject
{
    Q_OBJECT

public:
    ServertestTest();


private Q_SLOTS:

    void sendUserList();

};

ServertestTest::ServertestTest()
{
}


void ServertestTest::sendUserList()
{
    ChatterBoxServer obj1;
    bool flag = obj1.sendUserList();
    QCOMPARE(true,flag);

}

QTEST_MAIN(ServertestTest);

#include "tst_servertesttest.moc"
