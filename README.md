# Introduction

Call a Fortran dynamic library (DLL) from Java bean by using JNI/JNA.

![JNI](/JNIFigure.gif "JNI")

# Demo (`\bin` folder)

This demo is allowing the invocation of one or many DLL. JNI, Java Native Interface, is giving access to the C++ code which is encapsulating the Fortran code. As a test, two parameters (XML files) are sent through the `FortranExecuter class` to the `FortranExecuter.dll` library. In return, a message is sent back from the library to the java code.

To achieve the correct operation to perform, the library `FortranExecuter.dll` should be call by the `fortrandll1.dll` library.

## Content

- Parameters sent by the `FortranExecutor.class`
  - [IN] (`string`) : `'c:\processor\incoming\in.xml'`
  - [IN] (`string`) : `'c:\processor\outcoming\out.xml'`
  - [OUT] (`integer`) : `100` (value code 'no error' sent back from the library)
- DLL files
  - `FortranExecuter.dll` interface that allows to invoke `n` sub-DLL(s)
  -	`fortrandll1.dll` called by `FortranExecuter.dll` and which is containing the Fortran code

## Installation

To test the application,

1) Go to the `'\bin'` folder
2) Copy the `FortranExecuter.dll` DLL to this place : `'C:\FortranExecuter.dll'`
3) Start `run.bat`

Note, as a test an `OK` message code (`100`) should be returned by the library.

# Requirements

You might need a few things for your environment (PATH) such as,
- Java JDK 8
- Compilers,
  - Gnu gfortran (MinGW)
  - Gnu g++ (MinGW)

# Licence

Copyright (C) 2023, John Van Derton

Please read the ['LICENCE'](./LICENSE) file for more information.

# Donate

Feel free to support, thanks! 

BTC, [bc1q84seqrs0tvzy22gekx3u98xf92ujxvju0jsqrl](bitcoin://bc1q84seqrs0tvzy22gekx3u98xf92ujxvju0jsqrl) 