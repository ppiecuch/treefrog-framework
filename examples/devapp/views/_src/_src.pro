TARGET = view
TEMPLATE = lib
CONFIG += shared x86_64
QT -= gui
QT += network xml
DEFINES += TF_DLL
INCLUDEPATH += ../../helpers ../../models
DEPENDPATH  += ../../helpers ../../models
DESTDIR = ../../lib
LIBS += -L../../lib -lhelper -lmodel

QMAKE_CLEAN = *.cpp source.list

include(../../appbase.pri)

exists($$TFDIR/bin/tmake):TMAKE = $$TFDIR/bin/tmake
else:TMAKE = tmake

tmake.target = source.list
tmake.commands = $$TMAKE -f ../../config/application.ini -v .. -d . -P
tmake.depends = qmake
QMAKE_EXTRA_TARGETS = tmake

!exists(source.list) {
  system( $$tmake.commands )
}
include(source.list)
