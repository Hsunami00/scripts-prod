"""
Maya Icon Generator
By: Howard Hsu (howard@howardhsu.com)
"""

from PIL import Image, ImageDraw, ImageFont
import os

class IconGenerator:
    def __init__(self):
        # temp vars for testing
        self.savedir = 'C:\\Users\\howar\\OneDrive\\scripts\\maya\\icons\\'
        self.filename = 'testIconFile' + '.png'
        self.bgcolor = (0, 0, 255)
        self.textcolor = (255, 255, 0)
        self.line1 = 'Line 1'
        self.line2 = 'Line 2'
        self.line3 = 'Line 3'
        self.fontname = 'bahnschrift.ttf'
        
    def setSavedir(self, savedir):
        self.savedir = savedir
    
    def getSavedir(self):
        return self.savedir

    def setFilename(self, filename):
        self.filename = filename
    
    def getFilename(self):
        return self.filename
        
    def setBGgcolor(self, bgcolor):
        self.bgcolor = bgcolor

    def getBGcolor(self):
        return self.bgcolor

    def setTextcolor(self, textcolor):
        self.textcolor = textcolor
    
    def getTextcolor(self):
        return self.textcolor
        
    def setLine1(self, line1):
        self.line1 = line1
    
    def getLine1(self):
        return self.line1

    def setLine2(self, line2):
        self.line2 = line2
    
    def getLine2(self):
        return self.line2

    def setLine3(self, line3):
        self.line3 = line3
    
    def getLine3(self):
        return self.line3

    def setLine4(self, line4):
        self.line4 = line4
    
    def getLine4(self):
        return self.line4

    def setFontname(self, fontname):
        self.fontname = fontname
    
    def getFontname(self):
        return self.fontname

    def MakeIcon(self):
        print(f'self.bgcolor: {self.bgcolor}')
        im = Image.new("RGBA", (32,32), self.bgcolor)
        draw = ImageDraw.Draw(im)
        text_font = ImageFont.truetype(self.fontname, 10.5)
        # text_font = ImageFont.load_default()

        # self.setFilename( '{0}_{1}_{2}.png'.format(self.line1, self.line2, self.line3) )
        self.setFilename(f'{self.line1}_{self.line2}_{self.line3}.png')

        draw.text((0,0),  self.line1, fill= self.textcolor, font=text_font)
        draw.text((0,10),  self.line2, fill= self.textcolor, font=text_font)
        draw.text((0,20), self.line3, fill= self.textcolor, font=text_font)
        # draw.text((2,24), self.line4, fill= self.textcolor, font=text_font)

        # write file
        im.save(os.path.join(self.savedir, self.filename), "PNG")