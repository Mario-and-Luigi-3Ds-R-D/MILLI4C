LDR             R0, =off_6CE970
PUSH            {R4,LR}
LDR             R0, [R0]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_58E684
MOV             R0, #0
POP             {R4,PC}
