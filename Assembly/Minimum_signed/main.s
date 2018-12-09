


		AREA mycode,CODE,READONLY
		ENTRY
		EXPORT __main
__main

		LDR R0,=data
		MOV R1,#10
		LDRSB R2,[R0]
		ADD R0,R0,#1
		
		
BEGIN   LDRSB R3,[R0]
		CMP R3,R2
		BGE NEXT
		MOV R2,R3
		
NEXT    ADD R0,R0,#1
		SUBS R1,R1,#1
		BNE BEGIN

STOP	B STOP


data  	DCB -13,+24,+56,+12,-14,-23,+14,+24,-23

		AREA mydata,DATA,READONLY
		

		END

