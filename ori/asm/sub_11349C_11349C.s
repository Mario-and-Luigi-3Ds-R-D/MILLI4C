PUSH            {R4-R8,LR}
SUBS            R5, R1, #0
SUB             SP, SP, #0x18
BLE             loc_1135D0
LDR             R4, =dword_6FB424
LDR             R0, =dword_6FC544
LDR             R1, [R4]
CMP             R1, R5
BNE             loc_1135C4
LDR             R6, =dword_6FC544
MOV             R7, #0
LDR             R0, [R6]
CMP             R0, #0
MOVNE           R1, #1
MOVNE           R2, R1
BEQ             loc_113508
ADD             R0, R1, R1,LSL#5
LDR             R0, [R6,R0,LSL#4]
CMP             R0, #0
BEQ             loc_113500
ADD             R2, R2, #1
CMP             R2, #0x20 ; ' '
ADD             R1, R1, #1
BLT             loc_1134DC
B               loc_113570
ADD             R0, R1, R1,LSL#5
ADD             R6, R6, R0,LSL#4
CMP             R6, #0
BEQ             loc_113570
LDR             R0, =byte_6D23B8
VLDR            S2, [R4,#0x14]
LDR             R8, [R0,#(dword_6D23C8 - 0x6D23B8)]
LDM             R4, {R0,R3}
CMP             R8, #0
BEQ             loc_113554
CMP             R0, #0
BLEQ            sub_11D858
VSTR            S2, [SP,#0x30+var_20]
VCVT.F64.F32    D1, S1
VCVT.F64.F32    D0, S0
MOV             R2, R0
MOV             R1, #4
VSTMEA          SP, {D0-D1}
LDR             R12, [R8,#0xC]
MOV             R0, R12
BL              sub_11CDA0
ADD             R1, R4, #0x1C
ADD             R0, R6, #8
BL              sub_11D1D8
STR             R5, [R6]
LDR             R0, [R4,#8]
STR             R0, [R6,#4]
B               loc_11358C
MOV             R2, #0xFFFFFFFF
LDR             R0, [R4,#4]
MOV             R1, R2
BL              sub_1250C8
LDR             R0, [R4,#4]
NOP
BL              sub_1361A4
CMP             R4, #0
BEQ             loc_1135D0
STR             R7, [R4]
STR             R7, [R4,#4]
VLDR            S0, =0.0
VLDR            S1, =1.0
ADD             R1, R4, #0xC
STR             R7, [R4,#8]
MOV             R0, #0x21C
VSTM            R1, {S0-S1}
STR             R7, [R4,#0x14]
STR             R7, [R4,#0x18]
STRH            R7, [R0,R4]
B               loc_1135D0
ADD             R4, R4, #0x224
CMP             R4, R0
BNE             loc_1134B4
ADD             SP, SP, #0x18
MOV             R0, R5
POP             {R4-R8,PC}
