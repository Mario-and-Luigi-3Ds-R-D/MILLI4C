LDR             R1, =dword_6E197C
PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
LDR             R1, [R1,#(dword_6E19A8 - 0x6E197C)]
VMOV            S0, R1
LDR             R0, [R0,#0x18]
MOV             R1, #0
ADD             R0, R0, #0x1DC
VCVT.F32.U32    S0, S0
BL              sub_5A2708
LDR             R1, =unk_63E868
LDRD            R0, R1, [R1,#(off_63E8C8 - 0x63E868)]
STRD            R0, R1, [R4,#0xC]
POP             {R4,PC}
