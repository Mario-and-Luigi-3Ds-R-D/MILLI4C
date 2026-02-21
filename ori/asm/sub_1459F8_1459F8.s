PUSH            {R4,R5,LR}
MOV             R5, R1
MOV             R4, R2
VPUSH           {D8}
VMOV.F64        D8, D0
SUB             SP, SP, #0x24
BL              sub_146084
ADD             R1, SP, #0x38+var_20
VLDR            S3, =0.5
VLDR            S2, =1.0
ADD             R3, SP, #0x38+var_20
VSTM            R1, {S16-S17}
LDRSH           R1, [R0,#6]
BIC             R2, R1, #1
VMOV            S0, R2
TST             R1, #1
LDRSH           R1, [R0,#4]
BIC             R2, R1, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S3
VADDNE.F32      S0, S0, S2
TST             R1, #1
LDRSH           R1, [R0,#8]
STR             R4, [SP,#0x38+var_34]
VCVT.S32.F32    S1, S0
VMOV            S0, R2
ADD             R2, SP, #0x38+var_30
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S3
VADDNE.F32      S0, S0, S2
VCVT.S32.F32    S0, S0
VSTM            R2, {S0-S1}
MOV             R2, R5
STR             R1, [SP,#0x38+var_28]
LDRH            R1, [R0,#0xA]
AND             R1, R1, #0xFF
STR             R1, [SP,#0x38+var_38]
LDR             R1, =off_6D1648
VLDR            S0, [R0,#0xC]
LDR             R1, [R1]
LDR             R12, [R1,#0x9C]
LDR             R1, [R0]
MOV             R0, R12
BL              sub_321500
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8}
POP             {R4,R5,PC}
