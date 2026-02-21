PUSH            {R4-R10,LR}
MOV             R4, R0
ADD             R6, R4, #0x3800
MOV             R10, #0x1E
LDR             R0, [R0,#8]
LDR             R9, =off_6D1648
MOV             R8, #1
ADD             R3, R0, #0x400
LDRSH           R1, [R0]
LDR             R2, [R9]
LDRH            R5, [R3,#0xC8]
CMP             R1, #0x1E
MOV             R7, #0
ADD             R6, R6, #0x1A8
BEQ             loc_1A6CC8
BGT             loc_1A6B30
CMP             R1, #3
BEQ             loc_1A6C80
BGE             loc_1A6B14
CMP             R1, #0
BEQ             loc_1A6B74
CMP             R1, #1
BEQ             loc_1A6C38
CMP             R1, #2
BNE             loc_1A6E5C
B               loc_1A6C80
CMP             R1, #4
BEQ             loc_1A6B74
CMP             R1, #0x11
BEQ             loc_1A6D1C
CMP             R1, #0x1A
BNE             loc_1A6E5C
B               loc_1A6D44
CMP             R1, #0x28 ; '('
BEQ             loc_1A6DFC
BGT             loc_1A6B58
CMP             R1, #0x1F
BEQ             loc_1A6D84
CMP             R1, #0x20 ; ' '
BEQ             loc_1A6DC4
CMP             R1, #0x27 ; '''
BNE             loc_1A6E5C
B               loc_1A6DFC
CMP             R1, #0x29 ; ')'
BEQ             loc_1A6DFC
CMP             R1, #0x2D ; '-'
BEQ             loc_1A6C38
CMP             R1, #0x2E ; '.'
BNE             loc_1A6E5C
B               loc_1A6E24
CMP             R5, #0x1A
LDRSHNE         R1, [R0,#2]
CMPNE           R1, #0x2E ; '.'
BEQ             loc_1A6BDC
CMP             R1, #0x31 ; '1'
CMPNE           R1, #0x1F
BEQ             loc_1A6BDC
CMP             R5, #0x27 ; '''
CMPNE           R5, #0x20 ; ' '
BEQ             loc_1A6C48
LDR             R1, [R4,#4]
ADD             R1, R1, #0x19C00
LDRB            R1, [R1,#0x44]
CMP             R1, #0
BEQ             loc_1A6E5C
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
MOV             R2, #0
MOV             R1, #0x1E
STRH            R2, [R0]
STRH            R1, [R0,#2]
STRB            R7, [R0,#4]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
STRH            R7, [R0,#0xC8]
B               loc_1A6E5C
MOV             R0, R2
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
STRB            R8, [R0,#0x28F]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
STRB            R7, [R0,#0x290]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_1E33A0
LDR             R0, [R4,#8]
MOV             R1, #1
ADD             R0, R0, #0x400
STRH            R7, [R0,#0xC8]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
STRH            R7, [R0]
STRH            R1, [R0,#2]
B               loc_1A6CC0
LDRSH           R1, [R0,#2]
CMP             R1, #2
CMPNE           R1, #3
BEQ             loc_1A6C58
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
STRH            R7, [R0]
B               loc_1A6C68
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
MOV             R1, #0
STRH            R1, [R0]
STRH            R8, [R0,#2]
STRB            R7, [R0,#4]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
STRH            R8, [R0,#0xC8]
B               loc_1A6E5C
LDRH            R0, [R3,#0xCA]
CMP             R0, #0x1A
BNE             loc_1A6E5C
MOV             R0, R2
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x14000
MOV             R0, #3
STRB            R7, [R1,#0x290]
LDR             R1, [R4,#8]
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
STRH            R7, [R0]
STRH            R8, [R0,#2]
STRB            R7, [R0,#4]
B               loc_1A6E5C
MOV             R0, R2
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
STRB            R8, [R0,#0x28F]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_1E33A0
LDR             R0, [R4,#8]
MOV             R2, #0
MOV             R1, #1
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
STRH            R2, [R0]
STRH            R1, [R0,#2]
STRB            R7, [R0,#4]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
STRH            R10, [R0,#0xC8]
B               loc_1A6E5C
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
STRH            R7, [R0]
STRH            R8, [R0,#2]
STRB            R7, [R0,#4]
LDR             R1, [R4,#8]
MOV             R0, #0x11
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
B               loc_1A6E5C
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
STRH            R7, [R0]
STRH            R8, [R0,#2]
STRB            R7, [R0,#4]
LDR             R1, [R4,#8]
MOV             R0, #0x1A
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
LDR             R1, [R6]
ADD             R0, R0, #0x14000
LDRB            R1, [R1,#0xDC]
STRB            R1, [R0,#0x290]
B               loc_1A6E5C
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
STRH            R7, [R0]
STRH            R8, [R0,#2]
STRB            R7, [R0,#4]
LDR             R1, [R4,#8]
MOV             R0, #0x1F
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
LDR             R1, [R6]
ADD             R0, R0, #0x14000
LDRB            R1, [R1,#0xDC]
STRB            R1, [R0,#0x290]
B               loc_1A6E5C
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
STRH            R7, [R0]
STRH            R8, [R0,#2]
STRB            R7, [R0,#4]
LDR             R1, [R4,#8]
MOV             R0, #0x20 ; ' '
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
STRB            R7, [R0,#0x290]
B               loc_1A6E5C
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
STRH            R7, [R0]
STRH            R8, [R0,#2]
STRB            R7, [R0,#4]
LDR             R1, [R4,#8]
MOV             R0, #0x27 ; '''
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
B               loc_1A6E5C
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
STRH            R7, [R0]
STRH            R8, [R0,#2]
STRB            R7, [R0,#4]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
STRB            R7, [R0,#0x28F]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_5A18B8
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
LDRH            R1, [R0,#0xC8]
CMP             R1, R5
STRHNE          R5, [R0,#0xCA]
POP             {R4-R10,PC}
