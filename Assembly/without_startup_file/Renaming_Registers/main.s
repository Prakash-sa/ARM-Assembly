VAL1 	RN	R0
VAL2	RN	R1
SUM		RN  R2

		AREA code,CODE,READONLY
		ENTRY
		EXPORT __main
__main

		MOV VAL1,#0x2345
		MOV VAL2,#0x1564
		ADD SUM,VAL1,VAL2
		
STOP	B STOP
		END