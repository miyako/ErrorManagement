//%attributes = {}
var $errors : Collection
$errors:=New collection:C1472()
Try
	throw:C1805(123; "First error")
	ALERT:C41("this alert will not be executed")
Catch
	$errors.push(Last errors:C1799)
	Try
		throw:C1805(456; "Second error")
	Catch
		$errors.push(Last errors:C1799)
		// $errors collection contains the two previous errors
	End try
End try