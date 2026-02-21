PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x420]
SUB             SP, SP, #0x18
MOV             R5, #0
CMP             R0, #0
BEQ             loc_1FC7BC
BL              sub_533330
STR             R5, [R4,#0x420]
LDR             R0, [R4,#0x41C]
CMP             R0, #0
BEQ             loc_1FC7D0
BL              sub_533330
STR             R5, [R4,#0x41C]
LDR             R0, [R4,#0x418]
CMP             R0, #0
BEQ             loc_1FC7E4
BL              sub_533330
STR             R5, [R4,#0x418]
VLDR            S0, =0.0
LDR             R6, =off_6CE970
VLDR            S1, =-1.0
VSTR            S0, [SP,#0x28+var_20]
ADD             R0, SP, #0x28+var_1C
MOV             R1, #1
VSTM            R0, {S0-S1}
ADD             R3, SP, #0x28+var_20
LDR             R0, [R6]
STMEA           SP, {R1,R5}
ADD             R2, R4, #4
MOV             R1, #0x33 ; '3'
BL              sub_52C764
STR             R0, [R4,#0x418]
STRH            R5, [R0,#0xA]
LDR             R0, [R6]
MOV             R1, #0x15
STMEA           SP, {R1,R5}
ADD             R3, SP, #0x28+var_20
ADD             R2, R4, #4
MOV             R1, #0x36 ; '6'
BL              sub_52C764
STR             R0, [R4,#0x41C]
STRH            R5, [R0,#0xA]
ADD             SP, SP, #0x18
POP             {R4-R6,PC}
