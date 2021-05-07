::ffmpeg -i in.mp4 -filter:v "crop=out_w:out_h:x_start:y_start" out.mp4
-------------------------------------------------------------------------------
::cuts 1400x1500 image into map tiles 4 wide by 5 tall starting with top left corner in same order as Fallout 2's requirement
-------------------------------------------------------------------------------
For /F "tokens=*" %%G IN ('dir /b *.PNG') DO ffmpeg -i "%%G" -filter_complex "[0:v]crop=350:300:0:0[out00];[0:v]crop=350:300:350:0[out01];[0:v]crop=350:300:700:0[out02];[0:v]crop=350:300:1050:0[out03];[0:v]crop=350:300:0:300[out04];[0:v]crop=350:300:350:300[out05];[0:v]crop=350:300:700:300[out06];[0:v]crop=350:300:1050:300[out07];[0:v]crop=350:300:0:600[out08];[0:v]crop=350:300:350:600[out09];[0:v]crop=350:300:700:600[out10];[0:v]crop=350:300:1050:600[out11];[0:v]crop=350:300:0:900[out12];[0:v]crop=350:300:350:900[out13];[0:v]crop=350:300:700:900[out14];[0:v]crop=350:300:1050:900[out15];[0:v]crop=350:300:0:1200[out16];[0:v]crop=350:300:350:1200[out17];[0:v]crop=350:300:700:1200[out18];[0:v]crop=350:300:1050:1200[out19]" ^
-map [out00] wrldmp00.PNG ^
-map [out01] wrldmp01.PNG ^
-map [out02] wrldmp02.PNG ^
-map [out03] wrldmp03.PNG ^
-map [out04] wrldmp04.PNG ^
-map [out05] wrldmp05.PNG ^
-map [out06] wrldmp06.PNG ^
-map [out07] wrldmp07.PNG ^
-map [out08] wrldmp08.PNG ^
-map [out09] wrldmp09.PNG ^
-map [out10] wrldmp10.PNG ^
-map [out11] wrldmp11.PNG ^
-map [out12] wrldmp12.PNG ^
-map [out13] wrldmp13.PNG ^
-map [out14] wrldmp14.PNG ^
-map [out15] wrldmp15.PNG ^
-map [out16] wrldmp16.PNG ^
-map [out17] wrldmp17.PNG ^
-map [out18] wrldmp18.PNG ^
-map [out19] wrldmp19.PNG
