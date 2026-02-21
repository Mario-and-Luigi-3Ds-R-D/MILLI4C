PUSH            {R4,LR}
MRC             p15, 0, R0,c13,c0, 3
ADD             R2, R0, #0x60 ; '`'
STR             R2, [R0,#0x5C]
LDR             R0, =0
MOV             R1, #0
MOV             R4, R2
CMP             R0, #0
LDR             R0, =sub_300218
STR             R0, [R2,#4]
LDR             R0, =sub_118BEC
STR             R0, [R2,#8]
STR             R1, [R2]
STRB            R1, [R2,#0xC]
STR             R1, [R2,#0x10]
STR             R1, [R2,#0x14]
MOVEQ           R0, #0
STR             R1, [R2,#0x18]
BLNE            sub_100570
STR             R0, [R4,#0x1C]
POP             {R4,PC}
