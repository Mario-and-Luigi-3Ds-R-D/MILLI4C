PUSH            {R4,LR}
MOV             R4, R0
LDR             R2, =dword_6D1F40
LDR             R1, =0x167
MOV             R0, #0
BL              sub_47EADC
VMOV            S0, R0
VLDR            S1, =0.71111
VCVT.F32.S32    S0, S0
VSTR            S0, [R4,#0x20]
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S1, [R4,#0x18]
LDR             R0, =off_6CE098
LDR             R2, =dword_6D1F40
VMUL.F32        S0, S0, S1
VSTR            S0, [R4,#0x24]
LDR             R0, [R0]
LDR             R1, [R0,#0x8C]
ADD             R1, R1, #0x400
ADD             R1, R1, #0xB4
LDM             R1, {R0,R1}
BL              sub_47EADC
VMOV            S0, R0
MOV             R0, #0
VCVT.F32.S32    S0, S0
VSTR            S0, [R4,#0x28]
STRB            R0, [R4,#8]
POP             {R4,PC}
