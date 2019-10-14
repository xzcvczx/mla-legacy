@echo OFF
REM set the project name
@set PROJECTNAME=%ColorDepth
REM Set the path to the Graphics Resource Converter (grc.jar)
@set GRCPATH=%../../../../Microchip/Graphics/bin/grc
java -jar %GRCPATH%/grc.jar -XML 1BPP/"InternalResource%PROJECTNAME%_1BPPMode.xml" -B C30 -O ../InternalResourceC30_1BPPMode.c
java -jar %GRCPATH%/grc.jar -XML 4BPP/"InternalResource%PROJECTNAME%_4BPPMode.xml" -B C30 -O ../InternalResourceC30_4BPPMode.c
java -jar %GRCPATH%/grc.jar -XML 8BPP/"InternalResource%PROJECTNAME%_8BPPMode.xml" -B C30 -O ../InternalResourceC30_8BPPMode.c
java -jar %GRCPATH%/grc.jar -XML 1BPP/"InternalResource%PROJECTNAME%_1BPPModeCompressed.xml" -B C30 -O ../InternalResourceC30_1BPPModeIPU.c
java -jar %GRCPATH%/grc.jar -XML 4BPP/"InternalResource%PROJECTNAME%_4BPPModeCompressed.xml" -B C30 -O ../InternalResourceC30_4BPPModeIPU.c
java -jar %GRCPATH%/grc.jar -XML 8BPP/"InternalResource%PROJECTNAME%_8BPPModeCompressed.xml" -B C30 -O ../InternalResourceC30_8BPPModeIPU.c
