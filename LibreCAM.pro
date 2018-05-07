#-------------------------------------------------
#
# Project created by QtCreator 2011-03-22T19:33:11
#
#-------------------------------------------------

QT       += gui xml
TEMPLATE = lib
CONFIG += plugin
VERSION = 1.0.0
TARGET=$$qtLibraryTarget(librecam)

GENERATED_DIR = ../../generated/plugin/LibreCAM
# Use common project definitions.
include(../../common.pri)

# For plugins
INCLUDEPATH    += ../../librecad/src/plugins

SOURCES += \
    librecam.cpp \
    profile/src/camprofiledata.cpp \
    profile/ui/camprofilewidget.cpp \
    profile/ui/camprofilesettings.cpp \
    profile/ui/camprofilesettingslist.cpp \
    profile/src/camprofiledataparser.cpp

HEADERS += \
    librecam.h \
    profile/src/camprofiledata.h \
    profile/ui/camprofilewidget.h \
    profile/ui/camprofilesettings.h \
    profile/ui/camprofilesettingslist.h \
    profile/src/camprofiledataparser.h

FORMS += \
    profile/ui/camprofilesettings.ui \
    profile/ui/camprofilewidget.ui \
    profile/ui/camprofilesettingslist.ui

win32 {
        DESTDIR = ../../windows/resources/plugins
}

unix {
    macx {
	  DESTDIR = ../../LibreCAD.app/Contents/Resources/plugins
    }
    else {
	  DESTDIR = ../../unix/resources/plugins
    }
}

#DEFINES += librecam_LIBRARY
