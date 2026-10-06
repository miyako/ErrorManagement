//%attributes = {}
#DECLARE($dividend : Real; $divisor : Real)->$result : Real
If ($divisor=0)
	$result:=0
	throw:C1805(-12345; "Division by zero!")
Else 
	$result:=($dividend/$divisor)
End if 