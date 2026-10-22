//%attributes = {}
var $errors : Collection
$errors:=New collection:C1472()
Try
	throw:C1805(123; Localized string("ErrorFirst"))
	ALERT:C41(Localized string("AlertNotExecuted"))
Catch
	$errors.push(Last errors:C1799)
	Try
		throw:C1805(456; Localized string("ErrorSecond"))
	Catch
		$errors.push(Last errors:C1799)
		// $errors collection contains the two previous errors
	End try
End try