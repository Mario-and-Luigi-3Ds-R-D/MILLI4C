PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
SUB             SP, SP, #0x10
LDRH            R0, [R0,#4]
BL              sub_2AF718
MOV             R5, R0
LDR             R0, [R0,#0x14]
CMN             R0, #1
BEQ             loc_18F984
ADD             R6, R4, #0x14800
ADD             R6, R6, #0x364
LDR             R0, [R6]
CMP             R0, #0
BNE             loc_18F984
LDR             R0, [R4,#4]
MOV             R2, #6
MOV             R1, #0
BL              sub_53708C
LDR             R1, =0x80007F
MOV             R0, #0
STR             R0, [SP,#0x20+var_1C]; int
STR             R1, [SP,#0x20+var_20]; int
STR             R0, [SP,#0x20+var_18]; float
ADD             R3, R4, #0x13C00
LDR             R0, [R4,#4]; int
LDR             R2, [R5,#0x14]; int
ADD             R3, R3, #0x5C ; '\'; int
MOV             R1, #0; int
BL              sub_532794
STR             R0, [R6]
LDR             R0, [R4]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DCBC
LDM             R0, {R1,R2}
ADD             SP, SP, #0x10
MOV             R0, R4
POP             {R4-R6,LR}
BX              R12
