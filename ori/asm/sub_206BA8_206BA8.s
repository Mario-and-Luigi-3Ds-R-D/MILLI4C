PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, =off_6CE970
MOV             R4, R1
MOV             R6, R2
LDR             R0, [R0]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_58EEE8
CMP             R0, #0
BEQ             locret_206BF0
CMP             R4, #0
ADDNE           R1, R4, #4
MOVEQ           R1, #0
MOV             R2, R6
MOV             R0, R5
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R6,PC}
