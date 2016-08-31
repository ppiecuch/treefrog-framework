TARGET = helper
TEMPLATE = lib
CONFIG += staticlib x86_64
QT  -= gui
QT  += 
DESTDIR = ../lib
DEPENDPATH +=

include(../appbase.pri)

HEADERS += applicationhelper.h
SOURCES += applicationhelper.cpp
HEADERS += hellohelper.h
SOURCES += hellohelper.cpp
