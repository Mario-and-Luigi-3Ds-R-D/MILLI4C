PUSH            {R4,LR}
MOV             R4, R0
LDR             R2, =dword_6D1F40
LDR             R1, =0x167
MOV             R0, #0
BL              sub_47EADC
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VSTR            S0, [R4,#0x1C]
POP             {R4,PC}
