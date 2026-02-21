PUSH            {R4-R6,LR}
VSUB.F32        S5, S5, S2
MOV             R4, R0
VPUSH           {D8-D12}
VMOV.F64        D8, D3
VMOV.F32        S20, S1
VMOV.F32        S19, S0
MOV             R5, R1
VSTR            S2, [R0,#0xE4]
VSUB.F32        S2, S0, S6
VMOV.F32        S6, S16
VSUB.F32        S0, S20, S7
VMOV.F32        S7, S17
VSTR            S5, [R0,#0xE8]
VLDR            S1, =0.0
VSUB.F32        S24, S3, S6
VSUB.F32        S18, S4, S7
VMUL.F32        S5, S2, S2
VMUL.F32        S3, S24, S24
VMLA.F32        S5, S0, S0
VMLA.F32        S3, S18, S18
VMLA.F32        S5, S1, S1
VMLA.F32        S3, S1, S1
VMOV.F32        S1, S2
VSQRT.F32       S21, S5
VSQRT.F32       S23, S3
BL              sub_4645C0
VLDR            S25, =1.4062
VMOV.F32        S1, S24
VMUL.F32        S22, S0, S25
VMOV.F32        S0, S18
BL              sub_4645C0
VMUL.F32        S0, S0, S25
VLDR            S2, =0.0055556
VMUL.F32        S1, S0, S2
VMUL.F32        S0, S22, S2
BL              sub_5982EC
VLDR            S1, =180.0
VSUB.F32        S2, S23, S21
MOV             R1, #0
VMUL.F32        S0, S0, S1
STRH            R1, [R4,#0xC8]
STRH            R5, [R4,#0xCA]
VSTR            S21, [R4,#0xD4]
VMOV.F64        D3, D8
ADD             R1, R4, #0xCC
MOV             R0, #2
VSTR            S2, [R4,#0xD8]
VSTR            S22, [R4,#0xDC]
VSTR            S0, [R4,#0xE0]
VMOV.F32        S0, S19
VSTR            S0, [R4,#0xEC]
VSTR            S20, [R4,#0xF0]
VSTM            R1, {S6-S7}
LDR             R1, =unk_68A5A4
STRB            R0, [R4,#0xBC]
ADD             R4, R4, #0x114
LDRD            R0, R1, [R1,#(off_68A5C8 - 0x68A5A4)]
STM             R4, {R0,R1}
VPOP            {D8-D12}
POP             {R4-R6,PC}
