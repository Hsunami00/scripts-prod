import os
import platform

def get_scrpath():
    user_home = os.path.expanduser('~')
    if platform.system() == 'Darwin':
        return os.path.join(user_home,
                            'Library/Preferences/Autodesk/maya/scripts')
    elif platform.system() == 'Windows':
        # return os.path.join(user_home, 'maya/scripts/astral_installer_copied_scripts').replace('/', '\\')
        return 'c:\\users\\Howar\\OneDrive\\scripts\\dev'