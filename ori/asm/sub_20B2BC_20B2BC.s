PUSH            {R4,LR}
LDR             R0, [R2,#8]
AND             R1, R0, #0xFF
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_58F5A4
MOV             R0, #0
POP             {R4,PC}
