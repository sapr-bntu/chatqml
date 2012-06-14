#-------------------------------------------------
#
# Project created by QtCreator 2012-06-14T19:42:41
#
#-------------------------------------------------

QT       += network sql script xmlpatterns testlib   declarative core gui

TARGET = tst_testqmltest
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app


SOURCES += tst_testqmltest.cpp \
    ../mainwindow.cpp
DEFINES += SRCDIR=\\\"$$PWD/\\\"

HEADERS += \
    ../mainwindow.h


