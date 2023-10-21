QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

MOC_DIR = common\build\moc
RCC_DIR = common\build\rcc
OBJECTS_DIR = coomon\build\obj
win32:OBJECTS_DIR = common\build\o\win32

TEMPLATE = app
TARGET = stogl

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

CONFIG(debug, debug|release){
    DESTDIR = $$OUT_PWD\debug
}else{
    DESTDIR = $$OUT_PWD\..\app\appSOGL
    QMAKE_POST_LINK += && xcopy /Y /S $$system_path($$OUT_PWD\release) $$system_path($$DESTDIR)
}

QMAKE_POST_LINK = $$(QTDIR)\bin\windeployqt --no-translations $$system_path($$DESTDIR)
