::ffmpeg -i in.mp4 -filter:v "crop=out_w:out_h:x_start:y_start" out.mp4
::-------------------------------------------------------------------------------
::cuts 1400x1500 image into map tiles 4 wide by 5 tall starting with top left corner
::in same order as Fallout 2's requirement, but also converts to monochrome black and white
::-------------------------------------------------------------------------------
ECHO off
set filetype=PNG
set /p filetype="Enter the Image File Type you want to convert (Default %filetype%):"
IF NOT DEFINED filetype set "filetype=PNG"
For /F "tokens=*" %%G IN ('dir /b *.%filetype%') DO ffmpeg -i "%%G" -filter_complex "[0:v]crop=350:300:0:0[out00]; [0:v]crop=350:300:350:0[out01]; [0:v]crop=350:300:700:0[out02]; [0:v]crop=350:300:1050:0[out03]; [0:v]crop=350:300:0:300[out04]; [0:v]crop=350:300:350:300[out05]; [0:v]crop=350:300:700:300[out06]; [0:v]crop=350:300:1050:300[out07]; [0:v]crop=350:300:0:600[out08]; [0:v]crop=350:300:350:600[out09]; [0:v]crop=350:300:700:600[out10]; [0:v]crop=350:300:1050:600[out11]; [0:v]crop=350:300:0:900[out12]; [0:v]crop=350:300:350:900[out13]; [0:v]crop=350:300:700:900[out14]; [0:v]crop=350:300:1050:900[out15]; [0:v]crop=350:300:0:1200[out16]; [0:v]crop=350:300:350:1200[out17]; [0:v]crop=350:300:700:1200[out18]; [0:v]crop=350:300:1050:1200[out19]" ^
-pix_fmt monob -map [out00] wrldmp00.BMP ^
-pix_fmt monob -map [out01] wrldmp01.BMP ^
-pix_fmt monob -map [out02] wrldmp02.BMP ^
-pix_fmt monob -map [out03] wrldmp03.BMP ^
-pix_fmt monob -map [out04] wrldmp04.BMP ^
-pix_fmt monob -map [out05] wrldmp05.BMP ^
-pix_fmt monob -map [out06] wrldmp06.BMP ^
-pix_fmt monob -map [out07] wrldmp07.BMP ^
-pix_fmt monob -map [out08] wrldmp08.BMP ^
-pix_fmt monob -map [out09] wrldmp09.BMP ^
-pix_fmt monob -map [out10] wrldmp10.BMP ^
-pix_fmt monob -map [out11] wrldmp11.BMP ^
-pix_fmt monob -map [out12] wrldmp12.BMP ^
-pix_fmt monob -map [out13] wrldmp13.BMP ^
-pix_fmt monob -map [out14] wrldmp14.BMP ^
-pix_fmt monob -map [out15] wrldmp15.BMP ^
-pix_fmt monob -map [out16] wrldmp16.BMP ^
-pix_fmt monob -map [out17] wrldmp17.BMP ^
-pix_fmt monob -map [out18] wrldmp18.BMP ^
-pix_fmt monob -map [out19] wrldmp19.BMP

For /F "tokens=*" %%G IN ('dir /b *.bmp') DO msk2bmp2020.exe %%G
