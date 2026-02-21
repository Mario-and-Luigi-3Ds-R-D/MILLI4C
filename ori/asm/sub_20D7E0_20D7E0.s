LDR             R0, =off_6CE970
PUSH            {R4,LR}
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x21000
LDR             R0, [R0,#0x9C]
BL              sub_3B4888
MOV             R0, #0
POP             {R4,PC}
