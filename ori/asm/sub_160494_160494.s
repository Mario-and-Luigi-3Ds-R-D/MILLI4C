PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R1, #1
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
ADD             R0, R0, #0xC
LDM             R0, {R5,R6}
LDR             R0, [R5]
LDR             R2, [R0,#0x84]
MOV             R0, R5
BLX             R2
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x84]
MOV             R0, R6
BLX             R2
LDRB            R2, [R5,#0xDC]
ADD             R5, R4, #0x3C000
ADD             R5, R5, #0x178
MOV             R1, #0
LDM             R5, {R5,R9}
MOV             R0, R1
ADD             R7, R4, #0x3C000
BL              sub_300CF8
ORR             R8, R5, R0
ORR             R5, R9, R1
STR             R5, [R7,#0x17C]
MOV             R1, #0
STR             R8, [R7,#0x178]
LDRB            R2, [R6,#0xDC]
MOV             R0, R1
BL              sub_300CF8
ADD             R7, R7, #0x178
ORR             R0, R0, R8
ORR             R1, R1, R5
STM             R7, {R0,R1}
LDR             R0, [R4]
LDR             R1, [R0,#0x284]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_68AED0
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4-R10,LR}
BX              R12
