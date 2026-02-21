PUSH            {R4-R8,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x53]
LDR             R7, =0xFFFDF53B
LDR             R6, =off_6CE970
CMP             R0, #1
BLS             loc_1DB958
LDRH            R0, [R4,#0x4A]
CMP             R0, #0
BNE             loc_1DB958
LDR             R0, [R6]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#0xB4]
BL              sub_1464D4
MOV             R5, R0
LDR             R0, [R6]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#0xAC]
BL              sub_1464D4
SUB             R1, R4, R7
LDRB            R1, [R1]
CMP             R1, #1
BNE             loc_1DB958
TST             R5, #0x30
BEQ             loc_1DB890
LDR             R1, =flt_6E34B0
LDR             R1, [R1,#(dword_6E357C - 0x6E34B0)]
STRB            R1, [R4,#0x51]
B               loc_1DB8C0
LDRSB           R1, [R4,#0x51]
CMP             R1, #0
BLE             loc_1DB8C0
LDR             R0, [R6]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#0xE2]
MOV             R2, R0,ASR#31
ADD             R0, R0, R2,LSR#24
SUB             R0, R1, R0,ASR#8
STRB            R0, [R4,#0x51]
B               loc_1DB958
TST             R0, #0x10
MOVNE           R1, #1
BEQ             loc_1DB9C8
LDRB            R2, [R4,#0x4D]
ADD             R0, R2, R1
CMP             R0, #0
STRB            R2, [R4,#0x4E]
LDRBLT          R2, [R4,#0x53]
ADDLT           R0, R0, R2
LDRB            R2, [R4,#0x53]
CMP             R2, R0
SUBLE           R0, R0, R2
AND             R0, R0, #0xFF
STRB            R0, [R4,#0x4D]
MOV             R2, #0
ADD             R0, R4, R0,LSL#2
STRH            R2, [R4,#0x4A]
STRB            R1, [R4,#0x4C]
LDR             R0, [R0,#0x54]
LDRB            R1, [R0,#0x3F6]
LDR             R0, [R6]
BL              sub_52A450
LDR             R0, =0x20AC8
LDR             R12, [R6]
LDR             R2, =0x3000B
MOV             R3, #0
LDR             R0, [R0,R4]
LDR             R1, [R0,#0x18]
LDR             R0, =0xFFE683CC
SUB             R0, R12, R0
BL              sub_503720
LDRB            R0, [R4,#0x4D]
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x54]
LDRB            R1, [R0,#0x3F6]
ADD             R0, R4, #0x10800
ADD             R0, R0, #0x3A8
BL              sub_2A2D7C
MOV             R1, #1
MOV             R0, #0
ADD             R2, R0, R0,LSL#1
ADD             R0, R0, #1
ADD             R2, R4, R2,LSL#2
SUB             R2, R2, R7
LDRB            R2, [R2]
CMP             R2, #1
MOVNE           R1, #0
CMP             R0, #2
BLT             loc_1DB960
CMP             R1, #0
BEQ             locret_1DB9D8
LDR             R0, [R6]
LDR             R1, =byte_19CF31
LDRB            R1, [R1,R0]
CMP             R1, #0
BEQ             locret_1DB9D8
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#0xB4]
TST             R0, #0x100
BEQ             locret_1DB9D8
MOV             R0, R4
POP             {R4-R8,LR}
MOV             R2, #8
MOV             R1, #0xFFFFFFFF
B               sub_1DE038
TST             R0, #0x20
MOVNE           R1, #0xFFFFFFFF
BNE             loc_1DB8CC
B               loc_1DB958
POP             {R4-R8,PC}
