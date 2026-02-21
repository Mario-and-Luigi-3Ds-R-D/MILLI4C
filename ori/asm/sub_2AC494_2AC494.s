PUSH            {R4-R9,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
MOV             R8, R2
MOV             R7, R1
MOV             R0, R1
BL              sub_2AF718
LDR             R1, [R4,#0xC]
LDR             R0, [R0]
MOV             R9, #0xFFFFFFFF
ADD             R1, R1, #0x13C00
ADD             R1, R1, #0x108
MOV             R0, R0,LSL#17
LDR             R5, [R1]
ADD             R6, R9, R0,LSR#26
MOV             R1, R0,LSR#26
MOV             R0, R5
LDR             R2, [R5]
LDR             R3, [R2,#0x138]
MOV             R2, SP
BLX             R3
LDR             R0, [R5,#0xA4]
MOV             R1, #0
MOV             R2, R6,LSL#1
LDR             R0, [R0,#8]
LDR             R3, [R0,#0xC0]!
CMP             R3, #0
ADDNE           R0, R0, R3
MOVEQ           R0, R1
CMP             R0, #0
MOVEQ           R1, #0
BEQ             loc_2AC524
ADD             R0, R0, R2,LSL#4
LDR             R2, [R0,#0x28]!
CMP             R2, #0
ADDNE           R1, R2, R0
VLDR            S0, =0.0
VLDR            S1, [R1,#0x80]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
BNE             loc_2AC550
CMP             R8, #0
STR             R7, [R4,#0x94]
BEQ             loc_2AC558
LDR             R1, =off_67DA24
LDRD            R0, R1, [R1,#(off_67DA2C - 0x67DA24)]
STRD            R0, R1, [R4,#4]
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
UXTH            R0, R7
MOV             R5, #1
BL              sub_2AF718
LDR             R0, [R0]
MOV             R2, R5
MOV             R0, R0,LSL#17
ADD             R1, R9, R0,LSR#26
MOV             R0, R4
BL              sub_2AC378
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
