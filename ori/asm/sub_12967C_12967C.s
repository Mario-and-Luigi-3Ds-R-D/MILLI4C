PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R4, R1
VPUSH           {D8}
VMOV.F32        S16, S0
BL              sub_13DF78
CMP             R0, #0
BEQ             loc_1296E0
LDR             R0, =0x131E
CMP             R4, #0
LDRH            R0, [R0,R5]
ADD             R0, R5, R0,LSL#2
ADD             R0, R0, #0x1000
LDR             R0, [R0,#0xA0]
ADD             R1, R0, #4
ADD             R1, R1, R4,LSL#2
VSTR            S16, [R1,#4]
LDREQ           R1, [R0]
ORREQ           R1, R1, #0x1000000
BEQ             loc_1296DC
CMP             R4, #1
LDREQ           R1, [R0]
ORREQ           R1, R1, #0x2000000
BNE             loc_1296E0
STR             R1, [R0]
VPOP            {D8}
POP             {R4-R6,PC}
