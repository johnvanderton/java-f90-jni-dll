#include <jni.h>
#include <stdio.h>
#include <windows.h>
#include "FortranExecuter.h"

/**
	Signature definiton to retrieve from DLL Library
**/ 
typedef int (__stdcall * DLLCOMPUTEXMLDATA) (const char*,const char*);

/**
	JNI Call Definition
		- fortrandll1.dll is loaded locally 
**/
JNIEXPORT jint JNICALL Java_FortranExecuter_computexmldata(JNIEnv * env, jclass cl, jstring a, jstring b) {
    HINSTANCE hModDll2;
	int retVal=0;
    if (hModDll2 = LoadLibrary("fortrandll1.dll")) {
       DLLCOMPUTEXMLDATA ImpFunc2DLL = (DLLCOMPUTEXMLDATA) GetProcAddress((HINSTANCE) hModDll2, "computexmldata_");
       if (ImpFunc2DLL) {
		jboolean blnIsCopy;
		const char* strCIn1 = (env)->GetStringUTFChars(a, &blnIsCopy);
		const char* strCIn2 = (env)->GetStringUTFChars(b, &blnIsCopy);
		retVal=ImpFunc2DLL(strCIn1,strCIn2);
       }
       FreeLibrary(hModDll2);            
    }
	return retVal;
}