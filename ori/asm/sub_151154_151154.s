PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R1, #0
LDR             R0, [R0,#8]
LDR             R6, =off_6CE970
LDR             R5, [R0,#0x18]
LDR             R0, [R6]
BL              sub_5EE540
VCVT.S32.F32    S0, S0
LDR             R7, =unk_63FC24
VMOV            R0, S0
CMP             R0, #1
BEQ             loc_15119C
CMP             R0, #2
BEQ             locret_1511F4
CMP             R0, #3
BNE             loc_1511D8
B               loc_1511C0
VLDR            S0, =0.0
MOV             R1, #0
VSTR            S0, [R5,#0x98]
LDR             R0, [R6]
VLDR            S0, =2.0
BL              sub_52A480
LDRD            R0, R1, [R7,#(off_63FC90 - 0x63FC24)]
NOP
B               loc_1511F0
VLDR            S0, =1.0
MOV             R1, #0
VSTR            S0, [R5,#0x98]
LDR             R0, [R6]
VLDR            S0, =4.0
BL              sub_52A480
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #4
MOV             R0, R5
BL              sub_14C548
LDRD            R0, R1, [R7,#(off_63FC98 - 0x63FC24)]
STRD            R0, R1, [R4,#0xC]
POP             {R4-R8,PC}
