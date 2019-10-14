@echo off
REM set the project name
@set PROJECTNAME=%ObjectLayer
REM Set the path to the Graphics Resource Converter (grc.jar)
REM Check for presence of files.
if not exist "AN1182 Resources/FontFilter/fireflysung.ttf" (
echo ERROR: fireflysung.ttf font file missing please look at "\AN1182 Resources\FontFilter\Loading Fonts ReadMe.txt" on how to obtain the file. 
echo GRC will not generate the files of the XML project that has the missing file.
)
if not exist "AN1182 Resources/FontFilter/UnBatang_0613.ttf" (
echo ERROR: UnBatang_0613.ttf font file missing please look at "\AN1182 Resources\FontFilter\Loading Fonts ReadMe.txt" on how to obtain the file. 
echo GRC will not generate the files of the XML project that has the missing file.
)
@set GRCPATH=%../../../Microchip/Graphics/bin/grc
java -jar %GRCPATH%/grc.jar -XML "AN1136 Resources"/"AN1136_graphics_resources.xml" -B C30 -O "../AN1136 Pictures C30.c"
java -jar %GRCPATH%/grc.jar -XML "AN1136 Resources"/"AN1136_graphics_resources.xml" -B C32 -O "../AN1136 Pictures C32.c"
java -jar %GRCPATH%/grc.jar -XML "AN1182 Resources"/"AN1182_graphics_resources.xml" -B C30 -O "../AN1182 Pictures C30.c"
java -jar %GRCPATH%/grc.jar -XML "AN1182 Resources"/"AN1182_graphics_resources.xml" -B C32 -O "../AN1182 Pictures C32.c"
java -jar %GRCPATH%/grc.jar -XML "AN1182 Resources"/FontFilter/"AN1182Fonts.xml" -B C30 -O "../HelloWorldFonts.c"
java -jar %GRCPATH%/grc.jar -XML "Collated AppNotes.xml" -B C30 -O "../AppNotesDemoResources C30.c"
java -jar %GRCPATH%/grc.jar -XML "Collated AppNotes.xml" -B C32 -O "../AppNotesDemoResources C32.c"
