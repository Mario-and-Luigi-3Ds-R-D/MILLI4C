PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
VMOV.F32        S16, S0
BL              sub_13DF78
CMP             R0, #0
BEQ             loc_1295B0
LDR             R0, =0x131E
LDRH            R0, [R0,R4]
ADD             R0, R4, R0,LSL#2
ADD             R0, R0, #0x1000
LDR             R0, [R0,#0xA0]
VSTR            S16, [R0,#4]
LDR             R1, [R0]
ORR             R1, R1, #0x10000
STR             R1, [R0]
VPOP            {D8}
POP             {R4,PC}
