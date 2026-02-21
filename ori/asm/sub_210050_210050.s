PUSH            {R4-R6,LR}
MOV             R5, R1
LDR             R1, =off_6CE970
MOV             R6, R0
LDRH            R0, [R2]
MOV             R4, R2
LDR             R12, [R1]
SUB             R2, R0, #0x100
SUBS            R2, R2, #0x73 ; 's'
MOV             R0, #0
BEQ             loc_210090
CMP             R2, #1
BEQ             loc_2100B0
CMP             R2, #2
BNE             loc_2100E4
B               loc_2100D4
LDR             R0, [R4,#8]
MOV             R2, #0
SXTB            R1, R0
MOV             R0, R12
BL              sub_52B78C
NOP
NOP
B               loc_2100E4
ADD             R0, R4, #8
MOV             R2, #0
LDM             R0, {R0,R3}
SXTB            R1, R0
MOV             R0, R12
BL              sub_52AF48
NOP
NOP
B               loc_2100E4
LDR             R2, [R4,#8]
MOV             R1, #0
MOV             R0, R12
BL              sub_52BB84
VMOV            S0, R0
LDRH            R3, [R4,#2]
CMP             R5, #0
ADDNE           R2, R5, #4
MOVEQ           R2, #0
MOV             R1, R6
VCVT.F32.U32    S0, S0
MOV             R0, R3
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
