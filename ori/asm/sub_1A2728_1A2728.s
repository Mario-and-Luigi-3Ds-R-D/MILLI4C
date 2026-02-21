PUSH            {R4-R6,LR}
ADD             R4, R0, #0x400
LDR             R1, [R0,#0x94]
ADD             R4, R4, #0xCC
MOV             R2, #0
LDR             R5, [R1,#0x18]
LDR             R1, [R4]
LDR             R0, [R5]
LDR             R3, [R0,#0x58]
MOV             R0, R5
BLX             R3
LDRB            R1, [R4,#0x16]
MOV             R0, R5
BL              sub_14C450
LDR             R0, [R5]
ADD             R1, R4, #4
LDR             R2, [R0,#0x20]
MOV             R0, R5
BLX             R2
LDR             R0, [R4,#0x10]
MOV             R3, #0x100
MOV             R2, #0
AND             R1, R0, #0xFF
MOV             R0, R5
BL              sub_14C430
LDRB            R0, [R4,#0x14]
STRB            R0, [R5,#0xF3]
LDRB            R0, [R4,#0x15]
STRB            R0, [R5,#0xF4]
POP             {R4-R6,PC}
