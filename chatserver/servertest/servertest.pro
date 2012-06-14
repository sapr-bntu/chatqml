#-------------------------------------------------
#
# Project created by QtCreator 2012-06-14T18:58:56
#
#-------------------------------------------------

QT       += network testlib

QT       -= gui

TARGET = tst_servertesttest
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app


SOURCES += tst_servertesttest.cpp \
    ../ChatterBoxServer.cpp
DEFINES += SRCDIR=\\\"$$PWD/\\\"

HEADERS += \
    ../ChatterBoxServer.h


