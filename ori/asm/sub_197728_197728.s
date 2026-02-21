PUSH            {R3-R5,LR}
MOV             R4, R0
LDRB            R1, [R0,#0x3C4]
LDR             R0, [R0,#0x214]
BL              sub_4BD5FC
STR             R0, [SP,#0x10+var_10]
LDRB            R0, [R4,#0x254]
ADD             R0, R4, R0,LSL#2
LDR             R5, [R0,#0x218]
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R2, R0, #0xCC
LDR             R0, [R5]
MOV             R3, #0
MOV             R1, SP
LDR             R12, [R0,#0x30]
MOV             R0, R5
BLX             R12
LDRB            R0, [R4,#0x254]
LDR             R1, =0xFFFFFE00
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x218]
ADD             R0, R0, #0xB0
BL              sub_123CE8
LDRB            R0, [R4,#0x254]
MOV             R1, #1
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x218]
STRH            R1, [R0,#0xB6]
LDRB            R0, [R4,#0x254]
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x218]
LDRH            R1, [R0,#0xBA]
ORR             R1, R1, #1
STRH            R1, [R0,#0xBA]
POP             {R3-R5,PC}
