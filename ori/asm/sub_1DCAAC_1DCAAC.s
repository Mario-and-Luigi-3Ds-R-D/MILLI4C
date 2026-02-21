PUSH            {R4,LR}
MOV             R4, R0
ADD             R0, R0, #0x10C00
ADD             R0, R0, #0x254
BL              sub_2C6680
CMP             R0, #0
BEQ             locret_1DCAF8
ADD             R0, R4, #0x250
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_1DCAF8
LDR             R0, =0x8995
LDR             R2, =off_656BE4
MOV             R1, #1
STRB            R1, [R0,R4]
LDM             R2, {R1,R2}
ADD             R0, R4, #0x20800
ADD             R0, R0, #0x2BC
STM             R0, {R1,R2}
POP             {R4,PC}
