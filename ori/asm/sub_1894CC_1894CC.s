PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
SUB             SP, SP, #0x10; int
LDRH            R0, [R0,#4]
BL              sub_2AF718
LDR             R0, [R0,#0x10]
ADD             R5, R4, #0x13C00
ADD             R5, R5, #0x13C
MOV             R1, #0
STR             R0, [R5]
LDR             R0, [R4]
LDR             R2, [R0,#0xF0]
MOV             R0, R4
BLX             R2
LDR             R0, [R4,#4]
LDR             R1, [R5]
MOV             R6, #0
LDR             R0, [R0,#0x40]
BL              sub_158E18
CMP             R0, #0
BEQ             loc_189548
MOV             R0, #0x7F
STMEA           SP, {R0,R6}
STR             R6, [SP,#0x20+var_18]; float
LDR             R2, [R5]; int
LDR             R3, =dword_6ED9B8; int
LDR             R0, [R4,#4]; int
MOV             R1, #0; int
BL              sub_532794
LDR             R1, =0x13D34
MOV             R3, #0
STR             R0, [R1,R4]
LDR             R0, [R4]
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DA9C
LDM             R0, {R1,R2}
ADD             SP, SP, #0x10
MOV             R0, R4
POP             {R4-R6,LR}
BX              R12
