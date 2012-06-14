#include <QtCore/QString>
#include <QtTest/QtTest>
#include <Qtcore/QCoreApplication>
#include <QMainWindow>
#include <QtDeclarative/QDeclarativeView>
#include <QGraphicsObject>
#include <QtGui>
#include <QDeclarativeContext>
#include <QtNetwork/QTcpSocket>
#include <QtGui/QApplication>
#include "../mainwindow.h"

class TestqmlTest : public QObject
{
    Q_OBJECT

public:
    TestqmlTest();

private Q_SLOTS:
    void testCase1();

    void FunctionC();//Функция C++ вызываемая из QML
    void connectC();//Функция подключения к серверу
    void sayButton();
};

TestqmlTest::TestqmlTest()
{
}

void TestqmlTest::testCase1()
{
    QVERIFY2(true, "Failure");
}

void TestqmlTest::FunctionC()
{
    MainWindow obj1;
    bool flag=obj1.FunctionC();
    QCOMPARE(true, flag);
}

void TestqmlTest::connectC()
{
    MainWindow obj1;
    bool flag=obj1.connectC();
    QCOMPARE(true, flag);
}

void TestqmlTest::sayButton()
{
    MainWindow obj1;
    bool flag=obj1.sayButton();
    QCOMPARE(true, flag);
}

QTEST_APPLESS_MAIN(TestqmlTest);

#include "tst_testqmltest.moc"
