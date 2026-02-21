VMOV.F64        D2, D0
PUSH            {R4,LR}
CMP             R1, #0x400
MOV             R4, R0
BEQ             loc_12ABC4
SUB             R0, R1, #0x400
SUBS            R0, R0, #1
MOVEQ           R0, #0x140
BEQ             loc_12AB68
CMP             R0, #0xF
MOVNE           R0, #0
BEQ             loc_12ABC4
VMOV            S0, R0
CMP             R1, #0x400
SUBNE           R0, R1, #0x400
SUBSNE          R0, R0, #1
VCVT.F32.U32    S1, S0
BEQ             loc_12ABCC
CMP             R0, #0xF
MOVNE           R0, #0
BEQ             loc_12ABCC
VMOV            S0, R0
CMP             R3, #0
VCVT.F32.U32    S2, S0
VNEGNE.F32      S2, S2
CMP             R2, #0
BEQ             loc_12ABD4
MOV             R1, #1
VLDR            S0, =0.0
MOV             R0, R4
VMOV.F32        S3, S0
BL              sub_133624
NOP
NOP
B               loc_12ABFC
MOV             R0, #0x190
B               loc_12AB68
MOV             R0, #0xF0
B               loc_12AB8C
VLDR            S3, =0.5
MOV             R1, #1
MOV             R0, R4
VMUL.F32        S6, S1, S3
VMUL.F32        S7, S2, S3
VNMUL.F32       S0, S1, S3
VNMUL.F32       S3, S2, S3
VMOV.F32        S1, S6
VMOV.F32        S2, S7
BL              sub_133624
MOV             R0, R4
POP             {R4,PC}
