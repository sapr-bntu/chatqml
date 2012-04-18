#include "mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent)
{
    //�������� ��� QML
    ui = new QDeclarativeView;
    ui->setSource(QUrl("qrc:/main.qml"));
    setCentralWidget(ui);
    ui->setResizeMode(QDeclarativeView::SizeRootObjectToView);

    //������� �������� �������
    Root = ui->rootObject();
    //��������� C++ � QML, ����� ������� ������� �++ ����� ������� window
    ui->rootContext()->setContextProperty("window", this);
}

MainWindow::~MainWindow()
{
    //������� QML
    delete ui;
}

void MainWindow::FunctionC()
{
    //������ ������ �����
    QObject* textinput = Root->findChild<QObject*>("textinput");

    //������ ���� ������
    QObject* memo = Root->findChild<QObject*>("memo");

    QString str;//�������� ����� ��������� ����������

    //������� ���������� �� ������ ����� ����� �������� text
    str=(textinput->property("text")).toString();

    int a;
    a=str.toInt();//��������� ������ � �����
    a++;//������� � ����� 1

    QString str2;//�������� ��� ���� ��������� ����������
    str2=QString::number(a);//��������� ����� � ������

    //�� � ������� ������� � ���� ������ ���� ����������
    memo->setProperty("text", str+"+1="+str2);
}

void MainWindow::connectC()
{

    QObject* textinput = Root->findChild<QObject*>("textinput");
    QString str;
    socket = new QTcpSocket(this);
    str=(textinput->property("text")).toString();
    socket->connectToHost(str, 4200);
    textinput=Root->findChild<QObject*>("textinput2");
    str=(textinput->property("text")).toString();
    socket->write(QString("/me:" + str + "\n").toUtf8());
}

void MainWindow::sayButton()
{
    QObject* textinput = Root->findChild<QObject*>("textinput1");
    QString message =textinput->property("text").toString();
    if(!message.isEmpty())
    {
        socket->write(QString(message + "\n").toUtf8());
    }
    textinput->setProperty("text","");
   // sayLineEdit->clear();
    //sayLineEdit->setFocus();
}
