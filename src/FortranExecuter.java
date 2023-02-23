/**

	Only JNI and C++ support

	Credits, John Van Derton (2023)
	
	Notes : 
		- signature function might be into minus
		- a type premapping (jstring->string) must be done between Java and C++ 
	TODO :
		- fix the character type definition 'character(len=35)' from fortran because of random artifacts
		- change name FortranExecuter to FortranDLLRunner

**/
public class FortranExecuter {
 
	private static native int computexmldata(String a, String b);
 
	private static final String incomingXMLFolderPath = "c:\\processor\\incoming\\";
	private static final String incomingXMLFilename = "in.xml";
	private static final String outcomingXMLFolderPath = "c:\\processor\\outcoming\\";
	private static final String outcomingXMLFilename = "out.xml";
	private static final String dllLibraryFilePath = "C:\\";
	private static final String dllLibraryFilename = "FortranExecuter.dll";
 
	static {
		System.load(dllLibraryFilePath+dllLibraryFilename);
	}
 
	public static void main(String[] args) {
		int c = FortranExecuter.computexmldata(incomingXMLFolderPath+incomingXMLFilename,outcomingXMLFolderPath+outcomingXMLFilename);
		System.out.println("Catched code result from Fortran : " + c);
	}
} 