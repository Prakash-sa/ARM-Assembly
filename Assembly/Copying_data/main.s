RAM1_ADD EQU 0x20000000
RAM2_ADD EQU 0x20001000	
		
		 AREA  code,CODE,READONLY
		 ENTRY
		 EXPORT __main
__main

		 BL FILL	
		 BL COPY
		 
STOP	 B STOP

FILL
		 LDR R0,=RAM1_ADD
		 LDR R1,=0xDEADBEEF
		 MOV R2,#10
		 
L1		 STR R1,[R0]
		 ADD R0,R0,#4
		 SUBS R2,R2,#1
		 BNE  L1
		 BX LR

COPY     
		 LDR R0,=RAM1_ADD
		 LDR R1,=RAM2_ADD
		 MOV R2,#10
		 
L2		 LDR R3,[R0]
		 STR R3,[R1]
		 ADD R0,R0,#4
		 ADD R1,R1,#4
		 SUBS R2,R2,#1
		 BNE L2
		 BX LR


		END