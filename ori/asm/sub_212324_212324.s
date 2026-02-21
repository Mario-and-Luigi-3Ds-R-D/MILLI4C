PUSH            {R4-R8,LR}
LDR             R0, [R2,#8]
LDR             R3, [R1,#4]
LDR             R2, [R2,#0xC]
UXTH            R1, R0
LDR             R0, =off_6CE970
ADD             R6, R3, R2
LDR             R0, [R0]
BL              sub_52F508
LDR             R4, =off_642EF0; "TunogonAtk1" ...
MOV             R7, R0
ADD             R5, R4, #0x38 ; '8'
CMP             R4, R5
BEQ             loc_212374
LDR             R0, [R4]
MOV             R1, R6
BL              sub_3000AC
CMP             R0, #0
ADDNE           R4, R4, #8
BNE             loc_212354
LDR             R1, [R4,#4]
MOV             R0, R7
BLX             R1
CMP             R0, #0
STRNE           R0, [R7,#0x140]
MOV             R0, #0
POP             {R4-R8,PC}
