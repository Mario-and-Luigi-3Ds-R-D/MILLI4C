PUSH            {R4,LR}
LDR             R0, [R2,#8]
MOV             R4, R2
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528FF0
LDRH            R1, [R4]
CMP             R1, #0xDC
ADDEQ           R0, R0, #0x32C
ADDNE           R0, R0, #0x364
BL              sub_4E63E0
MOV             R0, #0
POP             {R4,PC}
