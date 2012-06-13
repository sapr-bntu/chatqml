#include <QtCore/QString>
#include <QtTest/QtTest>
#include <QtCore/QCoreApplication>
#include "../mainwindow.h"

class TestprojTest : public QObject
{
    Q_OBJECT

public:
    TestprojTest();

private Q_SLOTS:
    void on_loginButton_clicked();
    void on_sayButton_clicked();
    void readyRead();
    void connected();
};

TestprojTest::TestprojTest()
{
}


void TestprojTest::on_loginButton_clicked()
{
    MainWindow obj1;
    bool flag=obj1.on_loginButton_clicked();
    QCOMPARE(true,flag);
}

void TestprojTest::on_sayButton_clicked()
{
    MainWindow obj1;
    bool flag=obj1.on_sayButton_clicked();
    QCOMPARE(true,flag);
}

void TestprojTest::readyRead()
{
    MainWindow obj1;
    bool flag=obj1.readyRead();
    QCOMPARE(true,flag);
}

void TestprojTest::connected()
{
    MainWindow obj1;
    bool flag=obj1.connected();
    QCOMPARE(true,flag);
}

QTEST_MAIN(TestprojTest);

#include "tst_testprojtest.moc"
