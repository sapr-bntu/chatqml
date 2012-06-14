#ifndef __ChatterBoxServer_H__
#define __ChatterBoxServer_H__

#include <QStringList>
#include <QTcpServer>
#include <QTcpSocket>
#include <QMap>
#include <QSet>

class ChatterBoxServer : public QTcpServer
{
    Q_OBJECT

    public:
        ChatterBoxServer(QObject *parent=0);

    public slots:
        bool readyRead();
        bool disconnected();
        bool sendUserList();

   public:
        void incomingConnection(int socketfd);


        QSet<QTcpSocket*> clients;
        QMap<QTcpSocket*,QString> users;
};

#endif
