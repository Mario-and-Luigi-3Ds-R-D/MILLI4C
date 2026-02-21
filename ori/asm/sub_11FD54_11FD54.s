LDR             R0, =off_6D2428
PUSH            {R4-R8,LR}
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R4, #0
BEQ             loc_11FDEC
MOV             R3, #0x348
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOVS            R4, R0
BEQ             loc_11FDEC
MOV             R1, #0x348
BL              sub_2FFE8C
LDR             R12, =0x1406
MOV             R0, #0
VLDR            S0, =0.0
VLDR            S1, =1.0
MOV             R3, #4
MOV             R1, R0
MOV             R5, #0x3F000000
ADD             R6, R0, R0,LSL#1
ADD             R2, R4, R0,LSL#4
ADD             R7, R4, R6,LSL#3
ADD             R7, R7, #4
ADD             R0, R0, #1
STM             R7, {R3,R12}
CMP             R0, #0x10
VSTR            S0, [R2,#0x190]
VSTR            S0, [R2,#0x18C]
VSTR            S0, [R2,#0x188]
VSTR            S1, [R2,#0x194]
ADD             R2, R4, R6,LSL#2
STR             R1, [R2,#0x28C]
STR             R5, [R2,#0x288]
STR             R1, [R2,#0x290]
BLT             loc_11FDAC
MOV             R0, R4
POP             {R4-R8,PC}
