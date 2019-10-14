@echo off
REM set the project name
@set PROJECTNAME=%PrimitiveLayer
REM Set the path to the Graphics Resource Converter (grc.jar)
@set GRCPATH=%../../../Microchip/Graphics/bin/grc
java -jar %GRCPATH%/grc.jar -XML "InternalResource%PROJECTNAME%.xml" -B C30 -O ../InternalResourceC30.c
java -jar %GRCPATH%/grc.jar -XML "InternalResource%PROJECTNAME%.xml" -B C32 -O ../InternalResourceC32.c
