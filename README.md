# FO2-Modding-Batch_Scripts
A collection of the batch scripts I've created to assist modding Fallout 2

worldmap_2_tiles.bat - Uses FFmpeg to cut up a 1400x1500 pixel image file 
                       into 20 different 300x350 pixel image tiles for
                       Frame Animator.

WorldMapTile2FRM.FAS - Used by Frame Animator to convert a list of PNG 
                       files, produced from the worldmap_2_tiles.bat
                       script, into FRM files ready to add to your mod.
                      
mask_image_2_tiles.bat - Uses FFmpeg to cut up and convert a 1400x1500 pixel 
                       image file into black and white bitmap files, then
                       convert those bitmap files into MSK files using
                       MSK2BMP2020.exe.  MSK2BMP2020.exe should be in the
                       same folder as this batch file for this to work
                       (or you can set it in windows paths, but I have no
                       idea why anyone would bother).
