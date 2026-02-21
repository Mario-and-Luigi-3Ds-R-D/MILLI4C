PUSH            {R4,LR}
SUB             SP, SP, #0x20
BL              sub_120008
CMP             R0, #0
LDREQ           R0, =0xC8804465
BEQ             loc_10D614
ADD             R12, SP, #0x28+var_10
LDRD            R2, R3, [R0,#8]
LDR             R0, =byte_6D2578
MOV             R4, #0
LDR             R1, [R0,#(dword_6D2588 - 0x6D2578)]
MOV             R0, #1
STR             R0, [SP,#0x28+var_18]
STR             R1, [SP,#0x28+var_14]
ADD             R1, SP, #0x28+var_C
STRD            R0, R1, [SP,#0x28+var_20]
ADD             R0, SP, #0x28+var_14
STMEA           SP, {R4,R12}
BL              sub_1175BC
ADD             SP, SP, #0x20 ; ' '
POP             {R4,PC}
