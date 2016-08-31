win32 {
  INCLUDEPATH += $$quote($$(TFDIR)\\include)
  LIBS += -L$$quote($$(TFDIR)\\bin)
  CONFIG(debug, debug|release) {
    LIBS += -ltreefrogd1
  } else {
    LIBS += -ltreefrog1
  }
} else:macx {
  isEmpty(TFDIR) {
      exists($$PWD/../../dist) {
        TFDIR = $$PWD/../../dist
      	message("*** Using prebuild at $$TFDIR")
      } else {
        TFDIR = /usr/local
      }
  }
  INCLUDEPATH += $$TFDIR/include/treefrog
  LIBS += -ltreefrog -L$$TFDIR/lib
  include(../../tfconfig.pri)
} else:unix {
  INCLUDEPATH += $$PWD/../../include /usr/include/treefrog
  LIBS += -ltreefrog
}

OTHER_FILES += appbase.pri
