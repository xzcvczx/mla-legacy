@echo off
REM set the project name
@set PROJECTNAME=%ExternalMemory
REM Set the path to the Graphics Resource Converter (grc.jar)
@set GRCPATH=%../../../Microchip/Graphics/bin/grc
java -jar %GRCPATH%/grc.jar -XML "InternalResource%PROJECTNAME%.xml" -B C30 -O ../InternalResourceC30.c
java -jar %GRCPATH%/grc.jar -XML "InternalResource%PROJECTNAME%.xml" -B C32 -O ../InternalResourceC32.c
java -jar %GRCPATH%/grc.jar -XML "ExternalResource%PROJECTNAME%.xml"  -O ../ExternalResource.hex
move ..\ExternalResource.hex ExternalResource.hex
del ExternalResource-%PROJECTNAME%.hex
rename ExternalResource.hex ExternalResource-%PROJECTNAME%.hex
