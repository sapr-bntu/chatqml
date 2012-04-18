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

    Q_INVOKABLE void FunctionC();//������� C++ ���������� �� QML
    Q_INVOKABLE void connectC();//������� ����������� � �������
    Q_INVOKABLE  void sayButton();

private:
    QDeclarativeView *ui;
    QObject *Root;//�������� ������� QML ������
    QTcpSocket *socket;

private slots:



};

#endif // MAINWINDOW_H
