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
    return wrapInstance((main_window_ptr), QtWidgets.QWidget)

class _UI(QtWidgets.QDialog):
    def __init__(self, parent=maya_main_window()):
        super(_UI, self).__init__(parent)
        self.setWindowTitle('Window ')
        self.setFixedSize(350, 500)

        if pm.about(ntOS=True):
            # Windows: remove ? from menu bar
            self.setWindowFlags(
                self.windowFlags() | QtCore.Qt.WindowMinimizeButtonHint | QtCore.Qt.WindowSystemMenuHint)
        elif pm.about(macOS=True):
            # macOS: keep window on top
            self.setWindowFlags(QtCore.Qt.Tool)

        # self.img_logo = os.path.join(self.img_path, "filepng")

        self.create_widgets()
        self.create_layout()
        self.create_connections()

    def create_widgets(self):
        self.asset_type_comboBox = QtWidgets.QComboBox()

        self.playerchar_label = QtWidgets.QLabel("Characters:")
        self.skins_label = QtWidgets.QLabel("Skins:")
        self.anims_label = QtWidgets.QLabel("Animations:")

        self.ref_playerchar_btn = QtWidgets.QPushButton("Reference Rig")
        self.open_playerchar_btn = QtWidgets.QPushButton("Open Rig")
        self.open_anim_btn = QtWidgets.QPushButton("Open Anim.")
        self.open_skin_btn = QtWidgets.QPushButton("Open Skin")

        menufont = QtGui.QFont('Serif',12)
        self.playerchar_label.setFont(menufont)

        sht = ('QPushButton {    \
                text-align: left;\
                padding-left: 10;')

        self.playerchar_box = QtWidgets.QListWidget()
        self.playerchar_box.setFixedSize(150, 350)

        self.skins_box = QtWidgets.QListWidget()
        self.skins_box.setFixedSize(150, 200)

        self.anims_box = QtWidgets.QListWidget()
        self.anims_box.setFixedSize(150, 200)
        # for icon in sorted(self.ASSETS.keys()):
        #     self.mesh_list_wdg.addItem(' '.join(icon.split('_')))


    def create_layout(self):
        main_layout = QtWidgets.QHBoxLayout(self)
        main_layout.setSpacing(5)
        main_layout.setContentsMargins(5, 5, 5, 5)

        playerchar_layout = QtWidgets.QVBoxLayout(self)
        playerchar_layout.setAlignment(QtCore.Qt.AlignTop)
        playerchar_layout.addWidget(self.playerchar_label)
        playerchar_layout.addWidget(self.playerchar_box)
        playerchar_layout.addStretch()

        char_btn_layout = QtWidgets.QHBoxLayout(self)

        extras_layout = QtWidgets.QVBoxLayout(self)
        extras_layout.setAlignment(QtCore.Qt.AlignTop)
        extras_layout.addWidget(self.anims_label)
        extras_layout.addWidget(self.anims_box)

        extras_layout.addWidget(self.skins_label)
        extras_layout.addWidget(self.skins_box)
        extras_layout.addStretch()

        main_layout.addLayout(playerchar_layout)
        main_layout.addLayout(extras_layout)
        main_layout.addStretch()



    def create_connections(self):
        pass
        # self.set_frame_range.clicked.connect()
        # self.asset_type_comboBox.addItems()
        # self.close_btn.clicked.connect(self.close)
        # self.mesh_list_wdg.itemClicked.connect()



def main():
    pass
    # Show UI


if __name__ == "__main__":
    try:
        b.close()  # pylint: disable=E0601
        b.deleteLater()
    except:
        pass

    b = _UI()
    b.show()
