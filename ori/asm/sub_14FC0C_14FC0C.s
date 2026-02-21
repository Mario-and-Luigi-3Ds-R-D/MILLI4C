PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
LDR             R5, [R0,#0x18]
MOV             R0, R5
BL              sub_5C5820
CMP             R0, #0
BNE             locret_14FC68
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #7
MOV             R0, R5
BL              sub_14C548
LDR             R0, =dword_6E197C
MOV             R1, #0
LDR             R0, [R0,#(dword_6E19AC - 0x6E197C)]
VMOV            S0, R0
ADD             R0, R5, #0x1DC
VCVT.F32.U32    S0, S0
BL              sub_5A2708
LDR             R1, =unk_63E868
LDRD            R0, R1, [R1,#(off_63E8E0 - 0x63E868)]
STRD            R0, R1, [R4,#0xC]
POP             {R4-R6,PC}
