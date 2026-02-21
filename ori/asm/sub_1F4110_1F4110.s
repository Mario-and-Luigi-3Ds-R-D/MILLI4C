PUSH            {R4,LR}
LDR             R0, [R2,#0xC]
LDR             R1, [R2,#8]
VLDR            S0, [R2,#0x70]
AND             R0, R0, #0xFF
CMP             R0, #3
AND             R1, R1, #0xFF
BEQ             loc_1F4144
CMP             R0, #5
BEQ             loc_1F4160
CMP             R0, #7
BNE             loc_1F4190
B               loc_1F417C
VCVT.S32.F32    S0, S0
LDR             R0, =dword_6E7CD0
VMOV            R2, S0
BL              sub_586F3C
NOP
NOP
B               loc_1F4190
VCVT.S32.F32    S0, S0
LDR             R0, =dword_6E7CD0
VMOV            R2, S0
BL              sub_586F70
NOP
NOP
B               loc_1F4190
VCVT.U32.F32    S0, S0
VMOV            R0, S0
UXTH            R2, R0
LDR             R0, =dword_6E7CD0
BL              sub_586630
MOV             R0, #0
POP             {R4,PC}
