import os
import sys
import json
import platform

from PySide2 import QtCore
from PySide2 import QtGui
from PySide2 import QtWidgets
from shiboken2 import wrapInstance

import pymel.core as pm
import maya.OpenMayaUI as omui


def maya_main_window():
    """
    Return the Maya main window widget as a Python object
    """
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(main_window_ptr), QtWidgets.QWidget)


class TEMPLATE_UI(QtWidgets.QDialog):
    def __init__(self, parent=maya_main_window()):
        super(TEMPLATE_UI, self).__init__(parent)

        self.setWindowTitle('Window Title')
        # self.setFixedSize(800, 800)
        # set .ini file path for saving window size/position
        self.settings_path = os.path.join((os.getenv('HOME') + "/maya/Presets/"), "SCRIPT_WIN_SETTINGS.ini")

        if pm.about(ntOS=True):
            # Windows: remove ? from menu bar
            self.setWindowFlags(
                self.windowFlags() | QtCore.Qt.WindowMinimizeButtonHint | QtCore.Qt.WindowSystemMenuHint)
        elif pm.about(macOS=True):
            # macOS: keep window on top
            self.setWindowFlags(QtCore.Qt.Tool)

        def create_widgets():
            # restore window size/position
            if os.path.exists(self.settings_path):
                settings_obj = QtCore.QSettings(self.settings_path, QtCore.QSettings.IniFormat)
                self.restoreGeometry(settings_obj.value("windowGeometry"))

            # set font styles
            menufont = QtGui.QFont('Serif', 10)
            menufont.setItalic(True)
            menufont.setBold(True)
            sht = ('QPushButton {    \
                    text-align: left;\
                    padding-left: 10;')

            # create some widgets
            self.combo_box = QtWidgets.QListWidget()
            node = QtWidgets.QListWidgetItem()
            node.setText('Test Item')
            node.setFont(menufont)
            color = QtCore.Qt.green
            node.setForeground(color)
            self.combo_box.addItem(node)

            self.other_widgets = [
                QtWidgets.QCheckBox,
                QtWidgets.QComboBox,
                QtWidgets.QDateEdit,
                QtWidgets.QDateTimeEdit,
                QtWidgets.QDial,
                QtWidgets.QDoubleSpinBox,
                QtWidgets.QFontComboBox,
                QtWidgets.QLCDNumber,
                QtWidgets.QLabel,
                QtWidgets.QLineEdit,
                QtWidgets.QProgressBar,
                QtWidgets.QPushButton,
                QtWidgets.QRadioButton,
                QtWidgets.QSlider,
                QtWidgets.QSpinBox,
                QtWidgets.QTimeEdit,
            ]

            self.push_button = QtWidgets.QPushButton("Button Text")
            self.push_button.setMinimumSize(335, 50)
            self.push_button.setMaximumSize(335, 50)
            self.push_button.setFont(menufont)
            self.push_button.setStyleSheet(sht + 'color: #f8ff1f' + '}')

            self.preview_image_label = QtWidgets.QLabel()
            self.preview_image_label.setMinimumSize(QtCore.QSize(256, 256))
            # pixmap = QtGui.QPixmap(self.img_logo)
            # pixmap = pixmap.scaled(QtCore.QSize(256, 256), QtCore.Qt.KeepAspectRatio, QtCore.Qt.SmoothTransformation)
            # self.preview_image_label.setPixmap(pixmap)

            self.close_btn = QtWidgets.QPushButton("Close")

        def create_layout():
            _layout = QtWidgets.QVBoxLayout(self)
            _layout.setSpacing(2)
            _layout.setContentsMargins(6, 6, 6, 6)

            _layout.addWidget(self.push_button)

            _layout.addWidget(self.combo_box)
            # _layout.addWidget(self.preview_image_label)

            for w in self.other_widgets:
                _layout.addWidget(w())

        def create_connections():
            pass
            # self.push_button.clicked.connect()
            # self.combo_box.addItems()
            # self.close_btn.clicked.connect(self.close)
            # self.mesh_list_wdg.itemClicked.connect()

        create_widgets()
        create_layout()
        create_connections()

    # Save window's geometry
    def closeEvent(self, event):
        settings_obj = QtCore.QSettings(self.settings_path, QtCore.QSettings.IniFormat)
        settings_obj.setValue("windowGeometry", self.saveGeometry())


def main():
    global w

    try:
        w.close()  # pylint: disable=E0601
        w.deleteLater()
    except:
        pass
    w = TEMPLATE_UI()
    w.show()


if __name__ == "__main__":
    main()


