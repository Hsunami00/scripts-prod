"""
Maya Icon Generator UI
By: Howard Hsu (howard@howardhsu.com)
"""

from PySide2.QtWidgets import (QColorDialog, QPushButton, QLineEdit, QGraphicsView,
                               QFileDialog, QLabel)
from PySide2.QtUiTools import QUiLoader
from PySide2.QtCore import QFile
from PySide2 import QtGui, QtCore, QtWidgets
from shiboken2 import wrapInstance
import pymel.core as pm
import maya.OpenMayaUI as omui
import os

from MayaIconMaker import IconGenerator

uiFile = "C:\\Users\\howar\\OneDrive\\scripts\\maya\\MayaIconMaker\\MayaIconMaker.ui"


def maya_main_window():
    """
    Return the Maya main window widget as a Python object
    """
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(main_window_ptr), QtWidgets.QWidget)


class MayaIconMakerUI(QtWidgets.QDialog):
    def __init__(self, uiFile, parent=maya_main_window()):
        # boilerplate
        super(MayaIconMakerUI, self).__init__(parent)
        uiFile = QFile(uiFile)
        uiFile.open(QFile.ReadOnly)
        loader = QUiLoader()
        self.window = loader.load(uiFile, parentWidget=self)
        uiFile.close()

        # set .ini file path for saving window size/position
        self.settings_path = os.path.join((os.getenv('HOME') + "/maya/Presets/"), "SCRIPT_WIN_SETTINGS.ini")

        # Create instance of main Icon Maker class
        self.ig = IconGenerator.IconGenerator()

        def create_layout():
            # restore window size/position
            self.window.setFixedSize(350, 250)
            # settings_obj = QtCore.QSettings(self.settings_path, QtCore.QSettings.IniFormat)
            # self.restoreGeometry(settings_obj.value("windowGeometry"))

            if pm.about(ntOS=True):
                # Windows: remove ? from menu bar
                self.window.setWindowFlags(
                    self.windowFlags() | QtCore.Qt.WindowMinimizeButtonHint | QtCore.Qt.WindowSystemMenuHint |
                    QtCore.Qt.Tool)
            elif pm.about(macOS=True):
                # macOS: keep window on top
                self.window.setWindowFlags(QtCore.Qt.Tool)

            # Embed loaded layout inside this QDialog
            layout = QtWidgets.QVBoxLayout(self)
            layout.addWidget(self.window)
            self.setLayout(layout)

            # Window behavior flags (Maya-friendly)
            self.setWindowFlags(QtCore.Qt.Tool)  # stay on top of Maya only
            self.setAttribute(QtCore.Qt.WA_DeleteOnClose)

            # Restore geometry
            # self._restore_position()
            QtCore.QTimer.singleShot(0, self._restore_position)

            # Example: Connect close event to save position
            self.destroyed.connect(self._save_position)

        def create_widgets():
            # find and set widgets from .ui file
            self.BackgroundColorButton = self.window.findChild(QPushButton, 'BackgroundColorButton')
            self.TextColorButton = self.window.findChild(QPushButton, 'TextColorButton')
            self.CreateIconButton = self.window.findChild(QPushButton, 'CreateIconButton')
            self.SaveAsButton = self.window.findChild(QPushButton, 'SaveAsButton')
            self.SaveAsFilePathName = self.window.findChild(QLineEdit, 'SaveAsFilePathName')
            self.SaveAsFilePathName.setText(self.ig.savedir)
            self.CloseButton = self.window.findChild(QPushButton, 'CloseButton')

            self.CreateIconButton = self.window.findChild(QPushButton, 'CreateIconButton')

            self.PreviewWindow = self.window.findChild(QGraphicsView, 'PreviewWindow')
            scene = QtWidgets.QGraphicsScene()
            self.PreviewWindow.setScene(scene)
            defaultcolor = QtGui.QColor(*self.ig.bgcolor)
            self.PreviewWindow.setBackgroundBrush(QtGui.QBrush(defaultcolor))

            self.Row01Edit = self.window.findChild(QLineEdit, 'Row01Edit')
            self.Row02Edit = self.window.findChild(QLineEdit, 'Row02Edit')
            self.Row03Edit = self.window.findChild(QLineEdit, 'Row03Edit')

            self.Row01LabelPreview = self.window.findChild(QLabel, 'Row01LabelPreview')
            self.Row02LabelPreview = self.window.findChild(QLabel, 'Row02LabelPreview')
            self.Row03LabelPreview = self.window.findChild(QLabel, 'Row03LabelPreview')

            self.Row01Edit.setText('Line 1')
            self.Row02Edit.setText('Line 2')
            self.Row03Edit.setText('Line 3')

            # set default preview text and color
            self.Row01LabelPreview.setText('Line 1')
            self.Row02LabelPreview.setText('Line 2')
            self.Row03LabelPreview.setText('Line 3')

            r, g, b = self.ig.textcolor
            setcolor = f"color: rgb({r}, {g}, {b});"
            self.Row01LabelPreview.setStyleSheet(setcolor)
            self.Row02LabelPreview.setStyleSheet(setcolor)
            self.Row03LabelPreview.setStyleSheet(setcolor)

        def create_connections():
            # Setup the button commands
            self.BackgroundColorButton.clicked.connect(self.choose_bg_color)
            self.TextColorButton.clicked.connect(self.choose_textcolor)

            self.Row01Edit.textEdited.connect(self.edit_row01)
            self.Row02Edit.textEdited.connect(self.edit_row02)
            self.Row03Edit.textEdited.connect(self.edit_row03)

            self.SaveAsFilePathName.textEdited.connect(self.update_save_folder)
            self.SaveAsButton.clicked.connect(self.select_save_folder)
            self.CreateIconButton.clicked.connect(self.make_icon)

        create_layout()
        create_widgets()
        create_connections()

    # ------------------------------------
    # Position save/restore helpers
    # ------------------------------------
    def _settings(self):
        return QtCore.QSettings()

    def _save_position(self):
        settings = self._settings()
        settings.setValue("geometry", self.window.saveGeometry())

    def _restore_position(self):
        settings = self._settings()
        geom = settings.value("geometry")
        if geom:
            # self.restoreGeometry(QtCore.QByteArray(geom))
            if not isinstance(geom, QtCore.QByteArray):
                geom = QtCore.QByteArray(geom)
            self.window.restoreGeometry(geom)

    def closeEvent(self, event):
        """Save position on close."""
        self._save_position()
        super().closeEvent(event)

    def choose_bg_color(self):
        bgcolor = QColorDialog().getColor()
        self.ig.setBGgcolor(bgcolor.getRgb())
        self.PreviewWindow.setBackgroundBrush(QtGui.QBrush(bgcolor))

    def choose_textcolor(self):
        textcolor = QColorDialog().getColor()
        self.ig.setTextcolor(textcolor.getRgb())
        r, g, b, a = textcolor.getRgb()
        setcolor = f"color: rgb({r}, {g}, {b});"
        self.Row01LabelPreview.setStyleSheet(setcolor)
        self.Row02LabelPreview.setStyleSheet(setcolor)
        self.Row03LabelPreview.setStyleSheet(setcolor)

    def edit_row01(self):
        self.ig.setLine1(self.Row01Edit.text())
        self.Row01LabelPreview.setText(self.Row01Edit.text())

    def edit_row02(self):
        self.ig.setLine2(self.Row02Edit.text())
        self.Row02LabelPreview.setText(self.Row02Edit.text())

    def edit_row03(self):
        self.ig.setLine3(self.Row03Edit.text())
        self.Row03LabelPreview.setText(self.Row03Edit.text())

    def update_save_folder(self):
        self.ig.setSavedir(self.SaveAsFilePathName.text())

    def select_save_folder(self):
        # Open the file dialog to select a directory
        folder_path = QFileDialog.getExistingDirectory(self, "Select Directory", "")

        if folder_path:  # Check if a folder was selected (not cancelled)
            self.ig.setSavedir(folder_path)
            self.SaveAsFilePathName.setText(folder_path)
        else:
            pass

    def make_icon(self):
        self.ig.MakeIcon()


def main():
    global MayaIconMakerWindow
    try:
        MayaIconMakerWindow.close()
        MayaIconMakerWindow.deleteLater()
    except:
        pass
    MayaIconMakerWindow = MayaIconMakerUI(uiFile)
    MayaIconMakerWindow.window.show()


if __name__ == "__main__":
    main()
