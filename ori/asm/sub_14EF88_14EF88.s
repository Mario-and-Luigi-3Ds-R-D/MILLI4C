PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, [R0,#0x10]
LDR             R0, [R1]
MOV             R5, R1
LDR             R1, [R0,#0x54]
MOV             R0, R5
BLX             R1
LDR             R1, [R6]
MOV             R2, #0
LDR             R3, [R1,#0x58]
MOV             R1, R0
MOV             R0, R6
BLX             R3
LDR             R0, [R4,#0x10]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, R5, #0x24 ; '$'
BLX             R2
MOV             R0, R5
BL              sub_5C5500
SXTH            R6, R0
MOV             R0, R5
BL              sub_5C55B8
LDR             R12, [R4,#0x10]
MOV             R1, R0
MOV             R3, #0x100
MOV             R2, R6
MOV             R0, R12
BL              sub_14C548
MOV             R0, R5
BL              sub_5C5590
LDR             R2, [R4,#0x10]
POP             {R4-R6,LR}
MOV             R1, R0
MOV             R0, R2
NOP
