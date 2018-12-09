
		AREA mycode,CODE,READONLY
		ENTRY
		EXPORT __main
__main

		LDR R0,=0xE000ED88
		LDR R1,[R0]
		ORR R1,R1,#(0xF<<20)
		STR R1,[R0]
		ADRL R2,TABLE
		
		VLDR.F32 S0,[R2,#8]
		VLDR.F32 S1,[R2,#12]
		VMUL.F32 S2,S1,S0
		
STOP    B STOP

TABLE   DCD 0x00003265
		DCD 0x0154FAB2
		DCD 0x23514552
		DCD 0x2CBAD256
		DCD 0xBAD4512B
			
		END

