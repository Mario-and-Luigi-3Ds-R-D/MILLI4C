PUSH            {R4,R5,LR}
MOV             R4, R0
MOV             R5, R1
VPUSH           {D8}
SUB             SP, SP, #0x1C
ADD             R0, SP, #0x30+arg_0
MOV             R1, R2
VLDM            R0, {S16-S17}
MOV             R2, R3
LDR             R0, [R4,#4]
BL              sub_1F343C
VCVT.F32.U32    S1, S16
MOV             R2, R0
VLDR            S0, =0.0
ADD             R0, SP, #0x30+var_24
CMN             R5, #1
ADD             R3, SP, #0x30+var_20
VSTR            S1, [SP,#0x30+var_28]
VCVT.F32.U32    S1, S17
VSTM            R0, {S0-S1}
LDR             R0, =off_6D1648
VSTR            S0, [SP,#0x30+var_1C]
LDREQ           R1, [R4,#4]
LDRNE           R1, [R0]
ADDNE           R1, R1, R5,LSL#2
LDRNE           R1, [R1,#0xBC]
STR             R3, [SP,#0x30+var_30]
LDR             R0, [R0]
ADD             R3, SP, #0x30+var_28
LDR             R0, [R0,#0xB0]
BL              loc_195FFC
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4,R5,PC}
