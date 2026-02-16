@echo off

ECHO ######
ECHO ## 'compile.bat' 
ECHO ## Licence, John Van Derton (2023-2026)
ECHO ######

ECHO pre-cleaning folder...
del *.o *.class *.h *.dll *.log

ECHO Compiling fortran code...
gfortran -c fortransource.f90

ECHO Linking previous binary(ies) to DLL...
gfortran -shared -o fortrandll1.dll fortransource.o

ECHO Compiling main java source...
javac FortranExecuter.java

ECHO Generate Header File javah...
javah.exe -jni FortranExecuter

ECHO GCC compiling C++ file header...
g++ -I"C:\Java\jdk1.8.0_181\include" -I"C:\Java\jdk1.8.0_181\include\win32" -c FortranExecuter.cpp -o FortranExecuter.o

ECHO GCC Linking compiled C++ to DLL...
g++.exe -Xlinker --add-stdcall-alias -shared -o FortranExecuter.dll FortranExecuter.o
