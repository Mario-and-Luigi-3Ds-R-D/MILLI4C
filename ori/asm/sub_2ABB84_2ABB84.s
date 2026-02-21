PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x10
LDR             R0, [R0,#0x94]
VLDR            S16, =1.0
VMOV.F32        S0, S16
UXTH            R5, R0
ADD             R0, R4, #0x3C ; '<'
BL              sub_5A2484
MOV             R6, R0
MOV             R0, R5
BL              sub_2AF718
LDR             R0, [R0]
MOV             R0, R0,LSL#17
MOV             R1, R0,LSR#26
LDR             R0, [R4,#0xC]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x108
LDR             R0, [R0]
LDR             R2, [R0]
LDR             R2, [R2,#0x124]
BLX             R2
LDM             R6, {R1-R3}
ADD             R5, R0, #0x30 ; '0'
STM             R5, {R1-R3}
LDR             R1, [R0,#0x3C]
ORR             R1, R1, #0x800
STR             R1, [R0,#0x3C]
ADD             R0, R4, #0x3C ; '<'
BL              sub_5F19B8
CMP             R0, #0
VLDREQ          S0, =12.0
BNE             loc_2ABC38
MOV             R1, SP
VLDR            S1, =1.25
VLDR            S2, =0.4
VSTR            S1, [SP,#0x28+var_28]
VSTR            S16, [SP,#0x28+var_24]
VSTR            S2, [SP,#0x28+var_20]
ADD             R0, R4, #0x3C ; '<'
BL              sub_5A1E58
LDR             R1, =off_67DA24
LDRD            R0, R1, [R1,#(off_67DA3C - 0x67DA24)]
STRD            R0, R1, [R4,#4]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
