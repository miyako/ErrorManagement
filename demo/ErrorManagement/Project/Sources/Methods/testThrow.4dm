//%attributes = {}
#DECLARE($dividend : Real; $divisor : Real)->$result : Real
If ($divisor=0)
	$result:=0
	throw:C1805(-12345; Localized string("ErrorDivisionByZero"))
Else 
	$result:=($dividend/$divisor)
End if 