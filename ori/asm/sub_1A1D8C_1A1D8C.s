PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
LDR             R5, [R0,#0x5C]
LDR             R0, =off_6CE388
LDR             R0, [R0]
LDR             R0, [R0,#0x9C]
BL              sub_1A634C
MOV             R1, R0
LDR             R0, [R5]
MOV             R2, #0
LDR             R3, [R0,#0x58]
MOV             R0, R5
BLX             R3
LDR             R0, [R4,#4]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x2E ; '.'
LDR             R0, [R0,#0x5C]
BL              sub_14C548
LDR             R0, [R4,#4]
MOV             R1, #0
LDR             R0, [R0,#0x5C]
STRB            R1, [R0,#0xF3]
POP             {R4-R6,PC}
