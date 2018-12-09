

		AREA mycode,CODE,READONLY
		ENTRY
		EXPORT __main
			
__main
		MOV R0,#5
		MOV R1,#1
		
AGAIN   MUL R1,R1,R0
		SUBS R0,R0,#1
		BNE AGAIN
		
STOP    B STOP
		END