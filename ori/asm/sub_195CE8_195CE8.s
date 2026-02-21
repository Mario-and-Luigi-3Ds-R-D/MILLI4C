PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x10
VLDR            S16, =1.0
ADD             R0, R0, #0x3BC
VMOV.F32        S0, S16
BL              sub_5A2484
ADD             R0, R4, #0x3BC
BL              sub_5F19B8
CMP             R0, #0
VLDREQ          S0, =2.0
BNE             loc_195D44
VSTR            S16, [SP,#0x20+var_20]
VSTR            S16, [SP,#0x20+var_1C]
MOV             R2, SP
VSTR            S16, [SP,#0x20+var_18]
MOV             R1, #0
ADD             R0, R4, #0x3BC
BL              sub_5A2298
LDR             R1, =off_67E4F0
LDRD            R0, R1, [R1,#(off_67E520 - 0x67E4F0)]
STRD            R0, R1, [R4,#0x38]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,PC}
