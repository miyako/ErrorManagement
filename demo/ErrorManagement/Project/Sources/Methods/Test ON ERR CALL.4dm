//%attributes = {}
var $error; $colJSON : Collection
var $fileContent : Text
var $created : Boolean
var $obFile : Object
var $previousErrorHandler : Text

$previousErrorHandler:=Method called on error:C704

LOG EVENT:C667(Into 4D diagnostic log:K38:8; "Runtime error!"; Error message:K38:3)
var $fileHandle : 4D:C1709.FileHandle:=Folder:C1567(Database folder:K5:14).file("example.txt").open()

If ($fileHandle#Null:C1517)
	ON ERR CALL:C155("ErrorWriteDoc")
	$previousErrorHandler:=Method called on error:C704
	$fileHandle.writeLine("hello")
End if 