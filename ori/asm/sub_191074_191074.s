PUSH            {R4-R7,LR}
MOV             R4, R0
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
SUB             SP, SP, #0xC; int
LDRH            R0, [R0,#4]
BL              sub_2AF718
ADD             R5, R4, #0x13C00
ADD             R5, R5, #0x13C
LDR             R0, [R0,#0x10]
LDR             R1, [R5]
LDR             R6, =off_67DC1C
CMP             R1, R0
BNE             loc_1910C0
LDR             R1, =off_6D1648
LDR             R1, [R1]
LDR             R1, [R1,#0xC8]
TST             R1, #7
BEQ             loc_191144
STR             R0, [R5]
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0xF0]
MOV             R0, R4
BLX             R2
LDR             R0, [R4,#4]
LDR             R1, [R5]
MOV             R7, #0
LDR             R0, [R0,#0x40]
BL              sub_158E18
CMP             R0, #0
NOP
BEQ             loc_191118
MOV             R0, #0x7F
STMEA           SP, {R0,R7}
STR             R7, [SP,#0x20+var_18]; float
LDR             R2, [R5]; int
LDR             R3, =dword_6ED9B8; int
LDR             R0, [R4,#4]; int
MOV             R1, #0; int
BL              sub_532794
LDR             R1, =0x13D34
ADD             R6, R6, #0x18
MOV             R3, #0
STR             R0, [R1,R4]
LDR             R0, [R4]
LDM             R6, {R1,R2}
LDR             R12, [R0,#0x50]
ADD             SP, SP, #0xC
MOV             R0, R4
POP             {R4-R7,LR}
BX              R12
LDR             R0, [R4]
ADD             R6, R6, #0x20 ; ' '
MOV             R3, #1
LDM             R6, {R1,R2}
LDR             R12, [R0,#0x50]
ADD             SP, SP, #0xC
MOV             R0, R4
POP             {R4-R7,LR}
BX              R12
