		
		 AREA  code,CODE,READONLY
		 ENTRY
		 EXPORT __main
__main
		 LDR R0,=0xDEADBEEF
		 LDR R1,=0x23145612
		 LDR R2,=0xBEEF1523
		 LDR R3,=0x12245623
		 
		 STMDB SP!,{R0-R3,LR}
		 LDMIA SP!,{R0-R3,PC}
		 		 
STOP	 B STOP

		END