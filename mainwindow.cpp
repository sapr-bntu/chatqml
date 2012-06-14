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
    socket = new QTcpSocket(this);
    connect(socket, SIGNAL(readyRead()), this, SLOT(readyRead()));

}

MainWindow::~MainWindow()
{
    //������� QML
    delete ui;
}

bool MainWindow::FunctionC()
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
    return true;
}
bool  MainWindow::connectC()
{

    QObject* textinput = Root->findChild<QObject*>("textinput");
    QString str;

    str=(textinput->property("text")).toString();
    socket->connectToHost(str, 4200);
    textinput=Root->findChild<QObject*>("textinput2");
    str=(textinput->property("text")).toString();
    socket->write(QString("/me:" + str + "\n").toUtf8());
    return true;
}

bool MainWindow::sayButton()
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
    return true;
}

void MainWindow::readyRead()
{
    // We'll loop over every (complete) line of text that the server has sent us:
    while(socket->canReadLine())
    {
        // Here's the line the of text the server sent us (we use UTF-8 so
        // that non-English speakers can chat in their native language)
        QString line = QString::fromUtf8(socket->readLine()).trimmed();
        QObject* textedit = Root->findChild<QObject*>("textedit1");
        QString text =textedit->property("text").toString();        
        QRegExp messageRegex("^([^:]+):(.*)$");
        QRegExp usersRegex("^/users:(.*)$");
        QObject* textinput = Root->findChild<QObject*>("textinput2");
        QString str;
        str=(textinput->property("text")).toString();
        // Is this a users message:
               QString smileok= QString("=)");
               QString smilesad= QString("=(");
               if(usersRegex.indexIn(line) != -1)
               {

               }
               // Is this a normal chat message:
               else if(messageRegex.indexIn(line) != -1)
               {

                   if  (line.contains(smileok))
                   {
                       int k = line.indexOf(smileok);
                       line.replace(k,2,"<img src=\":/crazy.gif\"/>");
                   }
                   if  (line.contains(smilesad))
                   {
                       int k = line.indexOf(smilesad);
                       line.replace(k,2,"<img src=\":/beee.gif\"/>");
                   }
                   text=text+"\n"+line;
                   textedit->setProperty("text",text);
               }
    }
}
