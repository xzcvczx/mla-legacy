@echo OFF
REM set the project name
@set PROJECTNAME=%MultiApp
REM Set the path to the Graphics Resource Converter (grc.jar)
@set GRCPATH=%../../../Microchip/Graphics/bin/grc
REM Check for presence of files.
if not exist "fireflysung.ttf" (
echo ERROR: fireflysung.ttf font file missing please look at "GMAP Demo ReadMe.txt" on how to obtain the file. 
echo GRC will not generate the files of the XML project that has the missing file.
)
if not exist "UnBatang_0613.ttf" (
echo ERROR: UnBatang_0613.ttf font file missing please look at "GMAP Demo ReadMe.txt" on how to obtain the file. 
echo GRC will not generate the files of the XML project that has the missing file.
)
java -jar %GRCPATH%/grc.jar -XML "InternalResource%PROJECTNAME%.xml" -B C30 -O ../InternalResourceC30.c
java -jar %GRCPATH%/grc.jar -XML "InternalResource%PROJECTNAME%Set2.xml" -B C30 -O ../InternalResourceSet2C30.c
java -jar %GRCPATH%/grc.jar -XML "InternalResource%PROJECTNAME%.xml" -B C32 -O ../InternalResourceC32.c
java -jar %GRCPATH%/grc.jar -XML "InternalResource%PROJECTNAME%Set2.xml" -B C32 -O ../InternalResourceSet2C32.c
java -jar %GRCPATH%/grc.jar -XML "ExternalResource%PROJECTNAME%.xml" -CS 2 -O ../ExternalResource.hex
move ..\ExternalResource.hex ExternalResource.hex
del ExternalResource-%PROJECTNAME%.hex
rename ExternalResource.hex ExternalResource-%PROJECTNAME%.hex

