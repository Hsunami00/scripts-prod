from PIL import Image
import os

class AssetTexture():
    def __init__( self, texturefile ):
        self.FOLDERNAME = os.path.dirname( texturefile )
        self.FILENAME = os.path.basename( texturefile )
        self.FILESIZE = str( os.stat( texturefile ).st_size / 1024 ) + 'KB' # in KB
        self.RESOLUTION = Image.open( texturefile ).size
        self.TEXTURE_TYPE = self.FILENAME.split( '_' )[-1][ :-4] # diff, metl, norm, rough, emis, etc.
    
    def setFoldername( self, foldername ):
        self.FOLDERNAME = foldername
    
    def getFoldername( self ):
        return self.FOLDERNAME
    
    
    def setFilename( self, filename ):
        self.FILENAME = filename
    
    def getFilename( self ):
        return self.FILENAME
    
    
    def setFilesize( self, filesize ):
        self.FILESIZE = filesize
    
    def getFilesize( self ):
        return self.FILESIZE
    
    
    def setResolution( self, filename ):
        self.RESOLUTION = Image.open( filename ).size
    
    def getResolution( self ):
        return self.RESOLUTION
    
    
    def setTexturetype( self, filename ):
        self.TEXTURE_TYPE = filename.split( '_' )[2][ :-4 ]
    
    def getTexturetype( self ):
        return self.TEXTURE_TYPE
    
    
class TextureScrape():
    def __init__( self, writefile ):
        self.WORKINGDIR = os.getcwd()
        self.WRITEFILE = writefile
        self.IMAGELIST = []
    
    def setWorkingDir( self, workingdir ):
        self.WORKINGDIR = workingdir
        
    def getWorkingDir( self ):
        return self.WORKINGDIR

    def scrape_folder( self, folder ):
        for dirpath, dirs, files in os.walk( folder ):
            for file_ in files:
                if (file_[ -3: ] == 'png') or (file_[ -3: ] == 'exr'):
                    #fullfile = os.path.join( dirpath, file_ )
                    fileObject = AssetTexture( os.path.join( dirpath, file_ ) )
                    self.IMAGELIST.append( fileObject )

        return self.IMAGELIST


    def write_file( self ):
        # create new txt file
        writefile = os.open( self.WRITEFILE, os.O_RDWR|os.O_CREAT )
        # write out self.IMAGELIST line by line
        for image in self.IMAGELIST:
            os.write( writefile, '{0} {1} {2} {3} {4}\n'.format( image.getFoldername(), 
                                                                 image.getFilename(), 
                                                                 image.getFilesize(), 
                                                                 image.getResolution(), 
                                                                 image.getTexturetype()) )
        os.close( writefile )


textures = TextureScrape( 'd://temp//AssetTextures.txt' )
textures.scrape_folder( os.getcwd() )
textures.write_file()