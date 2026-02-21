PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
MOV             R5, R2
LDR             R0, [R0]
BL              sub_52F538
CMP             R0, R4
BNE             loc_14C964
LDR             R0, [R4,#0x20]
CMP             R0, #0
LDREQ           R0, [R4,#0xE4]
CMPEQ           R0, #0
STRNE           R5, [R4,#0xEC]
POP             {R4-R6,PC}
ADD             R1, R4, #0xE8
STM             R1, {R0,R5}
ADD             R1, R4, #0x14
POP             {R4-R6,LR}
ADD             R0, R0, #0xD8
B               sub_1CF9FC
