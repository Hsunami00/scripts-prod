from PySide2.QtUiTools import QUiLoader
from PySide2.QtCore import QFile, QObject
from PySide2 import QtGui, QtCore, QtWidgets
from shiboken2 import wrapInstance
import maya.OpenMayaUI as omui


uiFile = ".ui"


def maya_main_window():
    """
    Return the Maya main window widget as a Python object
    """
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(main_window_ptr), QtWidgets.QWidget)


class testUI(QtWidgets.QDialog):
    def __init__(self, uiFile, parent=maya_main_window()):
        # boilerplate
        super().__init__(parent)
        uiFile = QFile(uiFile)
        uiFile.open(QFile.ReadOnly)
        loader = QUiLoader()
        self.window = loader.load(uiFile, parentWidget=self)
        uiFile.close()

        def create_layout():
            # restore window size/position
            # self.window.setFixedSize(350, 250)
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
            # self.BackgroundColorButton = self.window.findChild(QPushButton, 'BackgroundColorButton')
            pass

        def create_connections():
            # Setup the button commands
            # self.BackgroundColorButton.clicked.connect(self.choose_bg_color)
            pass

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


def main():
    global testUIWindow
    try:
        testUIWindow.close()
        testUIWindow.deleteLater()
    except:
        pass

    testUIWindow = testUI(uiFile)
    testUIWindow.window.show()


if __name__=="__main__":
    main()