#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QtDeclarative/QDeclarativeView>
#include <QGraphicsObject>
#include <QtGui>
#include <QDeclarativeContext>
#include <QtNetwork/QTcpSocket>
namespace Ui {
    class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

    Q_INVOKABLE void FunctionC();//Функция C++ вызываемая из QML
    Q_INVOKABLE void connectC();//Функция подключения к серверу
    Q_INVOKABLE  void sayButton();

private:
    QDeclarativeView *ui;
    QObject *Root;//корневой элемент QML модели
    QTcpSocket *socket;

private slots:    

    // This is a function we'll connect to a socket's readyRead()
    // signal, which tells us there's text to be read from the chat
    // server.
    void readyRead();

    // This function gets called when the socket tells us it's connected.
 //   void connected();


};

#endif // MAINWINDOW_H
