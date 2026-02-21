PUSH            {R4-R6,LR}
MOV             R5, R1
LDR             R1, =off_6CE970
LDR             R12, [R2,#8]
MOV             R4, R2
LDRH            R2, [R2]
LDR             R3, [R1]
MOV             R6, R0
CMP             R2, #0x170
MOV             R0, #0
AND             R1, R12, #0xFF
BEQ             loc_210160
SUB             R2, R2, #0x100
SUBS            R2, R2, #0x71 ; 'q'
BEQ             loc_21017C
CMP             R2, #1
BNE             loc_2101A8
B               loc_210198
MOV             R2, #0
MOV             R0, R3
SXTB            R1, R1
BL              sub_52B978
NOP
NOP
B               loc_2101A8
MOV             R2, #0
MOV             R0, R3
SXTB            R1, R1
BL              sub_52B420
NOP
NOP
B               loc_2101A8
MOV             R2, #0
MOV             R0, R3
SXTB            R1, R1
BL              sub_52C264
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
