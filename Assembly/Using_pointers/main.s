;P=O+R+S
;O=2,R=6,S=8
		AREA eq3,CODE,READONLY
		ENTRY
		EXPORT __main
__main
		ADRL R0,value
		
		LDR R1,[R0,#O]
		LDR R2,[R0,#R]
		LDR R3,[R0,#S]
		MOV R4,#0
		ADD R4,R1,R2
		
		ADD R4,R4,R3
		STR R4,[R0,#P]
STOP	B STOP		
		
		
P		EQU 0
O		EQU 4
R		EQU 8
S		EQU 12		
		
		
		AREA eq3,DATA,READONLY
value	SPACE 4  
		DCD 2
		DCD 6
		DCD 8
			
		ALIGN
		END
			