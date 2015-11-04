TARGET = helloworld

QT += network
QT -= gui

CONFIG += debug_and_release

INCLUDEPATH += ../../src
LIBS += -L../../lib

CONFIG(debug, debug|release): LIBS += -lqhttpserverd
CONFIG(release, debug|release): LIBS += -lqhttpserver

SOURCES = helloworld.cpp
HEADERS = helloworld.h
