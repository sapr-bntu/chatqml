#
# This is your project .pro file
#
# This file was automatically generated by running:
#
#    qmake -project
#
# You only need to run that command once, and afterwards you can
# modify this file from then by hand.
#

# The "app" template means we want to build an application rather
# than a library or other kind of project
TEMPLATE = app

# Some variables that help the compiler do its thing:
DEPENDPATH += .
INCLUDEPATH += .

# This gives us access to the Qt socket classes (QTcpSocket)
QT += network

# This bundles any images we want right into our executable, so
# we do not have to ship any image files with our installer or RPM
# or deb package or whatever:
RESOURCES += images.qrc

# This is our list of files in the project. You can add files
# to these lists as you add new windows, custom widgets, or new
# functionality:

FORMS   += MainWindow.ui 

HEADERS += MainWindow.h 

SOURCES += MainWindow.cxx \
           main.cpp

OTHER_FILES += \
    android/AndroidManifest.xml \
    android/res/drawable/icon.png \
    android/res/drawable/logo.png \
    android/res/drawable-hdpi/icon.png \
    android/res/drawable-ldpi/icon.png \
    android/res/drawable-mdpi/icon.png \
    android/res/layout/splash.xml \
    android/res/values/libs.xml \
    android/res/values/strings.xml \
    android/res/values-de/strings.xml \
    android/res/values-el/strings.xml \
    android/res/values-es/strings.xml \
    android/res/values-et/strings.xml \
    android/res/values-fa/strings.xml \
    android/res/values-fr/strings.xml \
    android/res/values-id/strings.xml \
    android/res/values-it/strings.xml \
    android/res/values-ja/strings.xml \
    android/res/values-ms/strings.xml \
    android/res/values-nb/strings.xml \
    android/res/values-nl/strings.xml \
    android/res/values-pl/strings.xml \
    android/res/values-pt-rBR/strings.xml \
    android/res/values-ro/strings.xml \
    android/res/values-rs/strings.xml \
    android/res/values-ru/strings.xml \
    android/res/values-zh-rCN/strings.xml \
    android/res/values-zh-rTW/strings.xml \
    android/src/org/kde/necessitas/ministro/IMinistro.aidl \
    android/src/org/kde/necessitas/ministro/IMinistroCallback.aidl \
    android/src/org/kde/necessitas/origo/QtActivity.java \
    android/src/org/kde/necessitas/origo/QtApplication.java \
    android/version.xml


