#TF config

QT += sql network xml
greaterThan(QT_MAJOR_VERSION, 4): QT += qml

LIBS += $$PWD/3rdparty/mongo-c-driver/libmongoc.a
