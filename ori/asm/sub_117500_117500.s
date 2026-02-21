PUSH            {R4-R8,LR}
SUB             SP, SP, #0x20
MOV             R8, R0
LDR             R7, =byte_6D2578
MOV             R3, #1
ADD             R2, SP, #0x38+var_24
ADD             R0, SP, #0x38+var_24
STR             R3, [SP,#0x38+var_28]
STM             R2, {R0,R3}
MOV             R2, R1
LDR             R0, [R7,#(dword_6D2588 - 0x6D2578)]
ADD             R1, SP, #0x38+var_30
STR             R0, [SP,#0x38+var_1C]
LDR             R0, [SP,#0x38+var_24]
STMEA           SP, {R0,R3}
ADD             R0, SP, #0x38+var_1C
BL              sub_120B74
MOVS            R1, R0,LSR#31
BNE             loc_1175A4
LDRD            R4, R5, [SP,#0x38+var_30]
LDR             R0, =dword_700A34
LDR             R6, [R7,#(dword_6D2588 - 0x6D2578)]
BL              sub_1272E4
CMP             R0, #0
BEQ             loc_117574
LDR             R1, =off_6BFF84
STR             R1, [R0]
STRD            R4, R5, [R0,#8]
STR             R6, [R0,#4]
CMP             R0, #0
LDREQ           R4, =0xD8604659
MOVNE           R4, #0
STR             R0, [R8]
MOVS            R0, R4,LSR#31
BEQ             loc_1175A4
LDR             R0, [R7,#(dword_6D2588 - 0x6D2578)]
LDRD            R2, R3, [SP,#0x38+var_30]
STR             R0, [SP,#0x38+var_38]
MOV             R0, SP
BL              sub_120BD4
MOV             R0, R4
ADD             SP, SP, #0x20 ; ' '
POP             {R4-R8,PC}
