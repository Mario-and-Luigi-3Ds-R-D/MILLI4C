PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
LDR             R5, [R0,#0x18]
MOV             R0, R5
BL              sub_5C5820
CMP             R0, #0
BNE             locret_150D94
LDRB            R0, [R4,#0x14]
MOV             R3, #0x100
MOV             R2, #0
CMP             R0, #3
BEQ             loc_150D98
MOV             R1, #9
MOV             R0, R5
BL              sub_14C548
LDRSB           R1, [R4,#0x14]
LDR             R0, [R4,#0x30]
MOV             R2, #4
ADD             R1, R2, R1,LSL#2
ADD             R0, R0, R1
MOV             R1, #0
LDR             R0, [R0]
VMOV            S0, R0
ADD             R0, R5, #0x1DC
VCVT.F32.U32    S0, S0
BL              sub_5A2708
LDR             R1, =unk_63FC24
LDRD            R0, R1, [R1,#(off_63FCC8 - 0x63FC24)]
STRD            R0, R1, [R4,#0xC]
POP             {R4-R6,PC}
MOV             R1, #0xD
MOV             R0, R5
BL              sub_14C548
LDR             R0, [R4,#0x30]
MOV             R1, #0
LDR             R0, [R0,#0x10]
VMOV            S0, R0
ADD             R0, R5, #0x1DC
VCVT.F32.U32    S0, S0
BL              sub_5A2708
NOP
NOP
B               loc_150D88
