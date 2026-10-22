//%attributes = {}
var $error; $colJSON : Collection
$error:=Last errors:C1799
var $obFile : 4D:C1709.File
var $created : Boolean
var $fileContent : Text

If ($error.length=0)
	$error:=[{}]
End if 
$error[$error.length-1].time:=String:C10(Current date:C33)+" "+String:C10(Current time:C178)
$error[$error.length-1].app:=Application info:C1599
$error[$error.length-1].version:=Application version:C493
$error[$error.length-1].os:=System info:C1571.osVersion
$error[$error.length-1].method:=Error method
$error[$error.length-1].line:=Error line
$error[$error.length-1].formula:=Error formula
$obFile:=Folder:C1567(fk logs folder:K87:17).file("errors.json")
If (Not:C34($obFile.exists))
	$created:=$obFile.create()
	If (Not:C34($created))
		LOG EVENT:C667(Into 4D diagnostic log:K38:8; Localized string("LogErrorFileCreationFailed"); Error message:K38:3)
	End if 
	$colJSON:=[]
Else 
	$fileContent:=$obFile.getText()
	If ($fileContent#"")
		$colJSON:=JSON Parse:C1218($fileContent)
	Else 
		$colJSON:=[]
	End if 
End if 
$colJSON.push($error)
$obFile.setText(JSON Stringify:C1217($colJSON; *))

//ALERT("Write Error !")
