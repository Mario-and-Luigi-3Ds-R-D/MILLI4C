PUSH            {R4-R6,LR}
LDR             R4, [R3,#8]
LDR             R12, [R3,#0xC]
ADD             R5, R4, R4,LSL#3
ADD             R4, R5, R4,LSL#4
CMP             R12, #0
ADD             R0, R0, R4,LSL#3
ADD             R0, R0, #0x138
BEQ             loc_177258
CMP             R12, #1
VLDR            S0, =0.0
BNE             loc_177284
B               loc_17726C
LDR             R0, [R0,#0x70]
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               loc_177284
LDR             R0, [R0,#0x70]
TST             R0, #2
BEQ             loc_177284
TST             R0, #4
VLDRNE          S0, =3.0
BEQ             loc_177294
LDRH            R0, [R3,#2]
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
AND             R0, R0, #0x30000
CMP             R0, #0x30000
VLDREQ          S0, =2.0
VLDRNE          S0, =1.0
B               loc_177284
