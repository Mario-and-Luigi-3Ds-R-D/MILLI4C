PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0xC78]
VMOV.F32        S4, S0
ADD             R2, R4, #0xC00
LDR             R0, [R0]
LDR             R3, [R0,#0x358]
CMP             R3, #0
VLDREQ          S0, =0.0
VSTREQ          S0, [R2,#0x68]
LDR             R3, [R4,#0xC74]
CMP             R3, #0
MOVNE           R3, #0
STRNE           R3, [R4,#0xC74]
STRB            R1, [R4,#0xC64]
ANDS            R1, R1, #0xFF
ADDEQ           R0, R0, #0x370
BEQ             loc_25F770
CMP             R1, #1
CMPNE           R1, #2
ADDEQ           R0, R0, #0x380
BNE             loc_25F774
VLDM            R0, {S2-S3}
MOV             R0, R4
VLDR            S0, [R2,#0x68]
VSUB.F32        S0, S1, S0
VMOV.F32        S1, S4
BL              sub_25F0A8
MOV             R0, #1
STRB            R0, [R4,#0x3F8]
POP             {R4,PC}
