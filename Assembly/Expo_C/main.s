		AREA |.text|,CODE,READONLY
		ENTRY
		IMPORT adder
		IMPORT num
		EXPORT __main
__main
		LDR R0,=num
		MOV R1,#36
		STR R1,[R0]
		BL adder
		
		END
		