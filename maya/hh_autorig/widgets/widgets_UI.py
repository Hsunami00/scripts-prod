"""
Maya Curve Widget Manager
By: Howard Hsu howard@howardhsu.com
"""

import os
from PySide2 import QtCore
from PySide2 import QtGui
from PySide2 import QtWidgets
from shiboken2 import wrapInstance
import pymel.core as pm
import maya.OpenMayaUI as omui

import hh_autorig.widgets.widgets as widgets


def maya_main_window():
    """
    Return the Maya main window widget as a Python object
    """
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(main_window_ptr), QtWidgets.QWidget)


# noinspection PyAttributeOutsideInit
def mirror_swap_curve():
    widgets.swap_curve(mirror=True)


class CurveWidgetsUI(QtWidgets.QDialog):
    def __init__(self, parent=maya_main_window()):
        super(CurveWidgetsUI, self).__init__(parent)
        self.setWindowTitle('Curve Shape Manager')
        self.setFixedSize(350, 500)
        self.settings_path = os.path.join((os.getenv('HOME') + "/maya/Presets/"), "SCRIPT_WIN_SETTINGS.ini")

        if pm.about(ntOS=True):
            # Windows: remove ? from menu bar
            self.setWindowFlags(
                self.windowFlags() | QtCore.Qt.WindowMinimizeButtonHint | QtCore.Qt.WindowSystemMenuHint)
        elif pm.about(macOS=True):
            # macOS: keep window on top
            self.setWindowFlags(QtCore.Qt.Tool)

        self.scrpath = widgets.scrpath
        self.curveShapes = widgets.curveshapes
        self.curveColorList = widgets.curveColorList
        self.color = QtGui.QColor.fromRgb(0, 4, 96)

        def create_widgets():
            # restore window size/position
            if os.path.exists(self.settings_path):
                settings_obj = QtCore.QSettings(self.settings_path, QtCore.QSettings.IniFormat)
                self.restoreGeometry(settings_obj.value("windowGeometry"))

            menufont = QtGui.QFont('Serif', 10)
            # menufont.setItalic(True)
            menufont.setBold(False)

            sht = ('QPushButton {    \
                    text-align: left;\
                    padding-left: 10;')

            self.lineSep = QtWidgets.QFrame()
            self.lineSep.setFrameShape(QtWidgets.QFrame.HLine)
            self.lineSep.setFrameShadow(QtWidgets.QFrame.Sunken)
            self.lineSep.setMinimumHeight(10)
            # self.lineSep.setStyleSheet('border: 1px solid rgb(25,25,25)')

            self.lineSep02 = QtWidgets.QFrame()
            self.lineSep02.setFrameShape(QtWidgets.QFrame.HLine)
            self.lineSep02.setFrameShadow(QtWidgets.QFrame.Sunken)
            self.lineSep02.setMinimumHeight(10)

            self.lineSep03 = QtWidgets.QFrame()
            self.lineSep03.setFrameShape(QtWidgets.QFrame.HLine)
            self.lineSep03.setFrameShadow(QtWidgets.QFrame.Sunken)
            self.lineSep03.setMinimumHeight(10)

            self.lineSep04 = QtWidgets.QFrame()
            self.lineSep04.setFrameShape(QtWidgets.QFrame.HLine)
            self.lineSep04.setFrameShadow(QtWidgets.QFrame.Sunken)
            self.lineSep04.setMinimumHeight(10)

            self.lineSep05 = QtWidgets.QFrame()
            self.lineSep05.setFrameShape(QtWidgets.QFrame.HLine)
            self.lineSep05.setFrameShadow(QtWidgets.QFrame.Sunken)
            self.lineSep05.setMinimumHeight(10)

            self.curveshapes_cbx = QtWidgets.QComboBox()
            for shape in sorted(self.curveShapes.keys()):
                self.curveshapes_cbx.addItem(QtGui.QIcon(os.path.join(self.scrpath, 'curveicon_{}.png'.format(shape))), self.curveShapes[shape]['longname'].capitalize())
            self.curveshapes_cbx.setMinimumSize(220, 45)
            self.curveshapes_cbx.setMaximumSize(220, 45)
            self.curveshapes_cbx.setIconSize(QtCore.QSize(32, 32))

            self.create_shape_btn = QtWidgets.QPushButton("Create\nShape")
            self.create_shape_btn.setMinimumSize(100, 45)
            self.create_shape_btn.setMaximumSize(100, 45)
            self.create_shape_btn.setFont(menufont)
            self.create_shape_btn.setStyleSheet(sht + 'color: #f8ff1f' + '}')

            self.swap_shape_btn = QtWidgets.QPushButton("Swap\nShape")
            self.swap_shape_btn.setMinimumSize(100, 35)
            self.swap_shape_btn.setMaximumSize(100, 35)
            self.swap_shape_btn.setFont(menufont)
            self.swap_shape_btn.setStyleSheet(sht + 'color: #f8ff1f' + '}')

            self.shapes_menu_label = QtWidgets.QLabel('AVAILABLE SHAPES')
            self.shapes_menu_label.setStyleSheet('color: green')
            self.aim_label = QtWidgets.QLabel('Aim:')
            self.aim_x_label = QtWidgets.QLabel('X:')
            self.aim_y_label = QtWidgets.QLabel('Y:')
            self.aim_z_label = QtWidgets.QLabel('Z:')

            self.aim_x_input = QtWidgets.QLineEdit('1')
            self.aim_x_input.setMaximumWidth(45)
            self.aim_y_input = QtWidgets.QLineEdit('0')
            self.aim_y_input.setMaximumWidth(45)
            self.aim_z_input = QtWidgets.QLineEdit('0')
            self.aim_z_input.setMaximumWidth(45)

            self.scale_label = QtWidgets.QLabel('Scale:')
            self.scale_x_label = QtWidgets.QLabel('X:')
            self.scale_y_label = QtWidgets.QLabel('Y:')
            self.scale_z_label = QtWidgets.QLabel('Z:')

            self.scale_x_input = QtWidgets.QLineEdit('1')
            self.scale_x_input.setMaximumWidth(45)
            self.scale_y_input = QtWidgets.QLineEdit('1')
            self.scale_y_input.setMaximumWidth(45)
            self.scale_z_input = QtWidgets.QLineEdit('1')
            self.scale_z_input.setMaximumWidth(45)

            self.edit_label = QtWidgets.QLabel('EDIT CURVE')
            self.edit_label.setMinimumSize(330, 20)
            self.edit_label.setMaximumSize(330, 20)
            self.edit_label.setStyleSheet('color: green')

            self.color_label = QtWidgets.QLabel('Select color:')
            self.color_label.setMinimumSize(80,20)
            self.color_label.setMaximumSize(80,20)
            self.color_label.setAlignment(QtCore.Qt.Alignment(QtCore.Qt.AlignTop))

            self.color_picker_btn = QtWidgets.QPushButton()
            self.color_picker_btn.setMinimumSize(120, 40)
            self.color_picker_btn.setMaximumSize(120, 40)
            self.color_picker_btn.setStyleSheet("background-color: rgb(0, 4, 96)")

            self.color_picker = QtWidgets.QColorDialog()
            self.color_picker.setCurrentColor((QtGui.QColor(0, 4, 96)))
            self.color_picker.setOption(QtWidgets.QColorDialog.DontUseNativeDialog, 1)

            # self.color_cbx = QtWidgets.QComboBox()
            self.get_curve_btn = QtWidgets.QPushButton("Get Selected\nCurve")
            self.get_curve_btn.setMinimumSize(100, 40)
            self.get_curve_btn.setMaximumSize(100, 40)
            self.get_curve_btn.setFont(menufont)
            self.get_curve_btn.setStyleSheet(sht + 'color: #f8ff1f' + '}')

            self.color_set_btn = QtWidgets.QPushButton("Set Color")
            self.color_set_btn.setMinimumSize(100, 25)
            self.color_set_btn.setMaximumSize(100, 25)
            self.color_set_btn.setFont(menufont)
            self.color_set_btn.setStyleSheet(sht + 'color: #f8ff1f' + '}')

            self.size_lbl = QtWidgets.QLabel('Size: ')
            self.size_int = QtWidgets.QLabel('1')
            self.size_int.setFont(menufont)
            self.size_int.setStyleSheet('color: #f8ff1f')
            self.size_slider = QtWidgets.QSlider(QtCore.Qt.Horizontal)
            self.size_slider.setMinimumWidth(225)
            self.size_slider.setMaximumWidth(225)
            self.size_slider.setMinimumHeight(20)
            self.size_slider.setMaximumHeight(20)
            self.size_slider.setMinimum(1)
            self.size_slider.setMaximum(15)
            self.size_slider.setTickPosition(QtWidgets.QSlider.TicksBothSides)
            self.size_slider.setTickInterval(0.5)
            self.size_slider.setSliderPosition(1)
            self.size_btn = QtWidgets.QPushButton("Set Size")
            self.size_btn.setMinimumSize(100, 25)
            self.size_btn.setMaximumSize(100, 25)
            self.size_btn.setFont(menufont)
            self.size_btn.setStyleSheet(sht + 'color: #f8ff1f' + '}')

            self.colorsize_btn  = QtWidgets.QPushButton("Set Color\nand Size")
            self.colorsize_btn.setMinimumSize(100, 40)
            self.colorsize_btn.setMaximumSize(100, 40)
            self.colorsize_btn.setFont(menufont)
            self.colorsize_btn.setStyleSheet(sht + 'color: #f8ff1f' + '}')

            self.tools_lbl = QtWidgets.QLabel("CURVE TOOLS:")
            self.tools_lbl.setMinimumSize(330, 30)
            self.tools_lbl.setMaximumSize(330, 30)
            self.tools_lbl.setStyleSheet('color: green')

            self.mirror_lbl = QtWidgets.QLabel('Mirror')
            self.mirror_swap_btn = QtWidgets.QPushButton('Mirror and Swap')
            self.mirror_selected_btn = QtWidgets.QPushButton('Mirror selected')

            self.snap_lbl = QtWidgets.QLabel('Snap')
            self.snap_t_btn = QtWidgets.QPushButton('T > T')
            self.snap_r_btn = QtWidgets.QPushButton('R > R')
            self.snap_tr_btn = QtWidgets.QPushButton('TR > TR')

            self.preview_image_label = QtWidgets.QLabel()
            self.preview_image_label.setMinimumSize(QtCore.QSize(256, 256))
            # pixmap = QtGui.QPixmap(self.img_logo)
            # pixmap = pixmap.scaled(QtCore.QSize(256, 256), QtCore.Qt.KeepAspectRatio, QtCore.Qt.SmoothTransformation)
            # self.preview_image_label.setPixmap(pixmap)

            self.close_btn = QtWidgets.QPushButton("Close")

        def create_layout():
            self.main_layout = QtWidgets.QVBoxLayout(self)
            self.main_layout.setSpacing(2)
            self.main_layout.setContentsMargins(6, 6, 6, 6)

            self.creator_layout_row01 = QtWidgets.QHBoxLayout(self)
            self.creator_layout_row01.addWidget(self.shapes_menu_label)

            self.creator_layout_row02 = QtWidgets.QHBoxLayout(self)
            self.creator_layout_row02.addWidget(self.curveshapes_cbx)
            self.creator_layout_row02.addStretch()
            self.creator_layout_row02.addWidget(self.create_shape_btn)

            self.creator_layout_row03 = QtWidgets.QHBoxLayout(self)

            self.creator_layout_row03_left = QtWidgets.QVBoxLayout(self)
            self.creator_layout_row03_left_01 = QtWidgets.QHBoxLayout(self)
            self.creator_layout_row03_left_01.addSpacing(5)
            self.creator_layout_row03_left_01.addWidget(self.aim_label)
            self.creator_layout_row03_left_01.addStretch()
            self.creator_layout_row03_left_01.addWidget(self.aim_x_label)
            self.creator_layout_row03_left_01.addWidget(self.aim_x_input)
            self.creator_layout_row03_left_01.addWidget(self.aim_y_label)
            self.creator_layout_row03_left_01.addWidget(self.aim_y_input)
            self.creator_layout_row03_left_01.addWidget(self.aim_z_label)
            self.creator_layout_row03_left_01.addWidget(self.aim_z_input)
            self.creator_layout_row03_left_01.addSpacing(14)
            self.creator_layout_row03_left_02 = QtWidgets.QHBoxLayout(self)
            self.creator_layout_row03_left_02.addSpacing(5)
            self.creator_layout_row03_left_02.addWidget(self.scale_label)
            self.creator_layout_row03_left_02.addStretch()
            self.creator_layout_row03_left_02.addWidget(self.scale_x_label)
            self.creator_layout_row03_left_02.addWidget(self.scale_x_input)
            self.creator_layout_row03_left_02.addWidget(self.scale_y_label)
            self.creator_layout_row03_left_02.addWidget(self.scale_y_input)
            self.creator_layout_row03_left_02.addWidget(self.scale_z_label)
            self.creator_layout_row03_left_02.addWidget(self.scale_z_input)
            self.creator_layout_row03_left_02.addSpacing(14)
            self.creator_layout_row03_left.addLayout(self.creator_layout_row03_left_01)
            self.creator_layout_row03_left.addLayout(self.creator_layout_row03_left_02)

            self.creator_layout_row03_right = QtWidgets.QVBoxLayout(self)
            self.creator_layout_row03_right.addWidget(self.swap_shape_btn)

            self.creator_layout_row03.addLayout(self.creator_layout_row03_left)
            self.creator_layout_row03.addLayout(self.creator_layout_row03_right)

            self.creator_layout_row04 = QtWidgets.QHBoxLayout(self)
            self.creator_layout_row04.addWidget(self.lineSep)

            self.change_color_layout_row01 = QtWidgets.QHBoxLayout(self)
            self.change_color_layout_row01.addWidget(self.edit_label)
            self.change_color_layout_row02 = QtWidgets.QHBoxLayout(self)
            self.change_color_layout_row02.addWidget(self.color_label)
            self.change_color_layout_row02.addWidget(self.color_picker_btn)
            self.change_color_layout_row02.addStretch()
            self.change_color_layout_row02.addWidget(self.get_curve_btn)
            self.change_color_layout_row03 = QtWidgets.QHBoxLayout(self)
            # self.change_color_layout_row03.addStretch()
            self.change_color_layout_row03.addWidget(self.lineSep02)
            self.change_color_layout_row03.addWidget(self.color_set_btn)
            # self.change_color_layout_row04 = QtWidgets.QHBoxLayout(self)
            # self.change_color_layout_row04.addWidget(self.lineSep02)

            self.sizer_layout_row01 = QtWidgets.QHBoxLayout(self)
            self.sizer_layout_row01.addWidget(self.size_lbl)
            self.sizer_layout_row01.addWidget(self.size_int)
            self.sizer_layout_row01.addStretch()
            self.sizer_layout_row01.addWidget(self.size_btn)
            self.sizer_layout_row02 = QtWidgets.QHBoxLayout(self)
            self.sizer_layout_row02.addWidget(self.size_slider)
            self.sizer_layout_row02.addStretch()
            self.sizer_layout_row02.addWidget(self.colorsize_btn)
            self.sizer_layout_row03 = QtWidgets.QHBoxLayout(self)
            self.sizer_layout_row03.addWidget(self.lineSep03)

            self.mirror_layout_row01 = QtWidgets.QHBoxLayout(self)
            self.mirror_layout_row01.addWidget(self.tools_lbl)
            self.mirror_layout_row02 = QtWidgets.QHBoxLayout(self)
            self.mirror_layout_row02.addWidget(self.mirror_lbl)
            self.mirror_layout_row03 = QtWidgets.QHBoxLayout(self)
            self.mirror_layout_row03.addWidget(self.mirror_selected_btn)
            # self.mirror_layout_row03.addWidget(self.mirror_swap_btn)
            self.mirror_layout_row04 = QtWidgets.QHBoxLayout(self)
            self.mirror_layout_row04.addWidget(self.lineSep04)

            self.snaptools_layout_row01 = QtWidgets.QHBoxLayout(self)
            self.snaptools_layout_row01.addWidget(self.snap_lbl)
            self.snaptools_layout_row02 = QtWidgets.QHBoxLayout(self)
            self.snaptools_layout_row02.addWidget(self.snap_t_btn)
            self.snaptools_layout_row02.addWidget(self.snap_r_btn)
            self.snaptools_layout_row02.addWidget(self.snap_tr_btn)
            self.snaptools_layout_row03 = QtWidgets.QHBoxLayout(self)
            self.snaptools_layout_row03.addWidget(self.lineSep05)

            self.main_layout.addLayout(self.creator_layout_row01)
            self.main_layout.addLayout(self.creator_layout_row02)
            self.main_layout.addLayout(self.creator_layout_row03)
            self.main_layout.addLayout(self.creator_layout_row04)
            self.main_layout.addLayout(self.change_color_layout_row01)
            self.main_layout.addLayout(self.change_color_layout_row02)
            self.main_layout.addLayout(self.change_color_layout_row03)
            self.main_layout.addLayout(self.sizer_layout_row01)
            self.main_layout.addLayout(self.sizer_layout_row02)
            self.main_layout.addLayout(self.sizer_layout_row03)
            self.main_layout.addLayout(self.mirror_layout_row01)
            self.main_layout.addLayout(self.mirror_layout_row02)
            self.main_layout.addLayout(self.mirror_layout_row03)
            self.main_layout.addLayout(self.snaptools_layout_row01)
            self.main_layout.addLayout(self.snaptools_layout_row02)
            self.main_layout.addLayout(self.snaptools_layout_row03)
            self.main_layout.addStretch()

        def create_connections():
            self.create_shape_btn.clicked.connect(self.create_shape)
            self.color_picker_btn.clicked.connect(self.set_color_dialog)
            self.color_set_btn.clicked.connect(self.set_color)
            self.get_curve_btn.clicked.connect(self.get_selected_curve)
            self.size_btn.clicked.connect(self.set_size)
            self.size_slider.sliderMoved.connect(self.size_slider_change)
            self.size_slider.sliderPressed.connect(self.size_slider_change)
            self.colorsize_btn.clicked.connect(self.set_size_color)
            self.swap_shape_btn.clicked.connect(self.swap_curve)
            self.mirror_swap_btn.clicked.connect(mirror_swap_curve)
            self.mirror_selected_btn.clicked.connect(self.mirror_selected_curves)
            self.snap_t_btn.clicked.connect(self.snap_t)
            self.snap_r_btn.clicked.connect(self.snap_r)
            self.snap_tr_btn.clicked.connect(self.snap_tr)

        create_widgets()
        create_layout()
        create_connections()

    def create_shape(self):
        type = self.curveshapes_cbx.currentText()
        for i in self.curveShapes.items():
            # print(self.curveShapes[i[0]]['longname'], type.lower())
            if self.curveShapes[i[0]]['longname'] == type.lower():
                type = i[0]
        aimdir =(int(self.aim_x_input.text()), int(self.aim_y_input.text()), int(self.aim_z_input.text()))
        scale = (int(self.scale_x_input.text()),int(self.scale_y_input.text()),int(self.scale_z_input.text()))
        newcurve = widgets.create_curve(type, ctrl_name='{}_ctrl'.format(type), aimdir=aimdir, scale=scale)
        pm.select(newcurve)
        self.set_size_color()

    def swap_curve(self):
        widgets.swap_curve()

    def get_selected_curve(self):
        c = widgets.get_curve()

        self.curve_width = c[1]
        self.color = QtGui.QColor.fromRgbF(c[0][0], c[0][1], c[0][2])

        # self.size_int.setText(str('{0:.1f}'.format(self.curve_width)))
        self.size_int.setText(str(int(self.curve_width)))
        self.size_slider.setSliderPosition(self.curve_width)
        # print('C:', c)
        print(self.color)
        self.color_picker_btn.setStyleSheet("background-color: rgb{}".format(self.color.getRgb()))

    def set_color_dialog(self):
        self.color = self.color_picker.getColor()
        self.color_picker_btn.setStyleSheet("background-color: rgb{}".format(self.color.getRgb()))

    def set_color(self):
        colorvec = (self.color.redF(), self.color.greenF(), self.color.blueF())
        widgets.change_curve_color(colorvec)

    def set_size(self):
        if pm.selected():
            widgets.change_curve_thickness(self.size_slider.value())
            self.size_int.setText(str(self.size_slider.value()))
            self.size_slider.setSliderPosition(self.size_slider.value())
        else:
            print('Must select at least one curve')

    def size_slider_change(self):
        self.size_int.setText(str(self.size_slider.sliderPosition()))

    def set_size_color(self):
        self.set_size()
        self.set_color()

    def mirror_selected_curves(self):
        widgets.mirror_selected_curves()

    def snap_t(self):
        pm.matchTransform(pm.ls(sl=1)[0], pm.ls(sl=1)[1], pos=1, rot=0)

    def snap_r(self):
        pm.matchTransform(pm.ls(sl=1)[0], pm.ls(sl=1)[1], rot=1, pos=0)

    def snap_tr(self):
        pm.matchTransform(pm.ls(sl=1)[0], pm.ls(sl=1)[1], pos=1, rot=1)

    def snap_piv(self):
        pm.matchTransform(pm.ls(sl=1)[0], pm.ls(sl=1)[1], piv=1, rot=0, pos=0)

    # Save window's geometry
    def closeEvent(self, event):
        settings_obj = QtCore.QSettings(self.settings_path, QtCore.QSettings.IniFormat)
        settings_obj.setValue("windowGeometry", self.saveGeometry())


def main():
    global widgetsUI

    try:
        widgetsUI.close()
        widgetsUI.deleteLater()
    except:
        pass

    widgetsUI = CurveWidgetsUI()
    widgetsUI.show()


if __name__ == "__main__":
    main()
