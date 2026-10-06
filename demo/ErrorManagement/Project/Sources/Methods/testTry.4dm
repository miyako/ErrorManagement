//%attributes = {}
TRACE:C157
var $fileHandle : 4D:C1709.FileHandle:=Try(Folder:C1567(Database folder:K5:14).file("example.txt").open())
If ($fileHandle#Null:C1517)
	Try($fileHandle.writeLine("Hello"))
End if 
If (Last errors:C1799#Null:C1517)
	ErrorWriteDoc()
End if 