PUSH            {R4,LR}
MOV             R4, R1
LDR             R1, [R0]
LDR             R0, =0x8D40
BL              sub_116200
MOV             R0, #0x100
BL              sub_126EA8
MOV             R1, #1
MOV             R0, #0x100
BL              sub_126FF8
LDR             R0, =unk_6E8F28
TST             R4, #0x80000000
BEQ             loc_11CCB4
LDR             R0, [R0,#(dword_6E97C4 - 0x6E8F28)]
VLDR            S3, =0.0039216
AND             R3, R0, #0xFF
MOV             R1, R0,LSL#16
MOV             R2, R0,LSL#8
VMOV            S2, R3
MOV             R1, R1,LSR#24
MOV             R2, R2,LSR#24
VMOV            S4, R1
MOV             R0, R0,LSR#24
VMOV            S0, R2
VMOV            S1, R0
VCVT.F32.S32    S6, S2
VCVT.F32.S32    S2, S4
VCVT.F32.S32    S5, S0
VCVT.F32.S32    S4, S1
VMUL.F32        S0, S6, S3
VMUL.F32        S1, S2, S3
VMUL.F32        S2, S5, S3
VMUL.F32        S3, S4, S3
BL              sub_126414
LDR             R0, =unk_6E8F28
BL              sub_125778
VNEG.F32        S0, S0
BL              sub_1264B8
LDR             R0, =unk_6E8F28
LDR             R0, [R0,#(dword_6E97C8 - 0x6E8F28)]
BL              sub_1265D8
MOV             R0, R4
POP             {R4,LR}
B               sub_126254
NOP
BL              sub_12575C
LDR             R0, =0x3FFF
POP             {R4,LR}
B               sub_126EA8
