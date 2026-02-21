PUSH            {R4-R12,LR}
MOV             R5, R0
LDRB            R0, [R0,#0x110]
CMP             R0, #0
BEQ             loc_21F3C0
ADD             R0, R0, R0,LSL#3
LDR             R1, =dword_6ED9B8
MOV             R0, R0,LSL#2
MOV             R3, #0x800000
MOV             R2, #0
BL              sub_1143B4
LDRB            R1, [R5,#0x110]
STR             R0, [R5,#0x170]
MOV             R4, R0
CMP             R1, #0
MOV             R6, #0
STRB            R1, [R5,#0x174]
BLE             loc_21F3B0
MOV             R8, #4
MOV             R9, #8
MOV             R10, #0x10
MOV             R11, #0x20 ; ' '
ADD             R7, R5, R6,LSL#2
LDRH            R1, [R4,#0x10]
LDR             R0, [R7,#0x10]
BIC             R2, R1, #3
ADD             R1, R0, #0x800
LDR             R3, [R0,#0x8F4]
ADD             R12, R0, #0x400
AND             R3, R3, #3
ORR             R2, R2, R3
STRH            R2, [R4,#0x10]
LDRH            R3, [R1,#0xCC]
BIC             R2, R2, #4
STRH            R3, [R4]
LDR             R3, [R0,#0x8D4]
ADD             R3, R3, #0x100
LDRH            R3, [R3,#0x74]
STRH            R3, [R4,#2]
LDRH            R1, [R1,#0xD8]
STRH            R1, [R4,#4]
LDR             R1, [R0,#0x8DC]
STR             R1, [R4,#8]
LDR             R1, [R0,#0x8E0]
STR             R1, [R4,#0xC]
LDRB            R1, [R0,#0xDE]
AND             R1, R8, R1,LSL#2
ORR             R1, R1, R2
STRH            R1, [R4,#0x10]
LDR             R2, [R0,#0x8F4]
BIC             R1, R1, #8
AND             R2, R9, R2,LSL#1
ORR             R1, R1, R2
STRH            R1, [R4,#0x10]
LDR             R2, [R0,#0x648]
BIC             R1, R1, #0x10
AND             R2, R10, R2,LSL#3
ORR             R1, R1, R2
BIC             R2, R1, #0x20 ; ' '
STRH            R1, [R4,#0x10]
LDR             R1, [R0,#0x648]
AND             R1, R11, R1,LSL#3
ORR             R1, R1, R2
STRH            R1, [R4,#0x10]
LDR             R1, [R0,#0x108]
STR             R1, [R4,#0x14]
LDR             R1, [R0,#0x10C]
STR             R1, [R4,#0x18]
LDR             R0, [R0,#0x110]
STR             R0, [R4,#0x1C]
LDR             R0, [R12,#0xC4]
STR             R0, [R4,#0x20]
LDR             R0, [R7,#0x10]!
CMP             R0, #0
BEQ             loc_21F39C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #0
STR             R0, [R7]
LDRB            R0, [R5,#0x110]
ADD             R6, R6, #1
ADD             R4, R4, #0x24 ; '$'
CMP             R0, R6
BGT             loc_21F2B4
MOV             R0, #0
STRB            R0, [R5,#0x110]
STR             R0, [R5,#8]
STR             R0, [R5,#0xC]
LDRB            R0, [R5,#0x113]
MOV             R4, #0
CMP             R0, #0
MOVGT           R7, #0
BLE             loc_21F404
ADD             R6, R5, R4,LSL#2
LDR             R0, [R6,#0x114]!
CMP             R0, #0
BEQ             loc_21F3F4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R7, [R6]
LDRB            R0, [R5,#0x113]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_21F3D4
MOV             R0, #0
STRB            R0, [R5,#0x113]
POP             {R4-R12,PC}
