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



};

#endif // MAINWINDOW_H
