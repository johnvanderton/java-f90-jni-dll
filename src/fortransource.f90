function computexmldata (inFilePath,outFilePath) result (resultOperation)
   IMPLICIT NONE
   character(len=30),	INTENT(IN) 	  :: inFilePath, outFilePath
   integer							  :: resultOperation

   write(*,*) "Fortran DLL : Processing computeXMLData Operation"
   write(*,*) "Receiving incoming path for XML reading : ", inFilePath
   write(*,*) "Processing XML datas..."
   write(*,*) "New XML file written at : ", outFilePath
   
   resultOperation = 100

end function computexmldata