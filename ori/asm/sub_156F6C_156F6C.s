PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R0, #0
ADD             R1, R4, R0,LSL#3
LDR             R2, [R1,#0x9F4]
CMP             R2, #0
LDREQ           R1, [R1,#0x9FC]
CMPEQ           R1, #0
BNE             locret_157094
ADD             R0, R0, #2
CMP             R0, #0x40 ; '@'
BLT             loc_156F78
LDR             R6, =off_6CE970
LDR             R5, [R6]
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_15707C
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
BNE             loc_15707C
B               loc_156FF0
LDR             R2, [R1,#0x3F8]
CMP             R2, #0
BNE             locret_157094
LDR             R1, [R1,#0x3FC]
TST             R1, #1
CMPNE           R1, #0
BNE             locret_157094
ADD             R0, R0, #1
CMP             R0, #0x20 ; ' '
BCS             loc_157000
ADD             R1, R4, R0,LSL#2
LDR             R1, [R1,#0x40]
CMP             R1, #0
BNE             loc_156FC8
LDR             R0, [R6]
MOV             R1, #0
BL              sub_52A4AC
LDR             R0, [R4,#0x4BC]
CMP             R0, #0
BEQ             loc_15707C
ADD             R0, R4, #0x400
ADD             R0, R0, #0x208
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             locret_157094
LDR             R1, [R6]
LDR             R0, [R4,#8]
ADD             R1, R1, #0x100000
ADD             R1, R1, #0xE000
LDR             R7, [R0,#0x18]
LDR             R5, [R1,#(loc_10E090 - 0x10E000)]
ADD             R1, R4, #0x4B0
MOV             R0, R5
LDR             R6, [R5,#0x19C]
BL              sub_149BDC
ADD             R3, R4, #0x800
ADD             R3, R3, #0xA8
MOV             R2, R6
MOV             R1, R7
MOV             R0, R5
BL              sub_14C8F8
ADD             R0, R4, #0x4B0
NOP
BL              sub_528B1C
LDRB            R0, [R4,#0xBF4]
CMP             R0, #0
BNE             locret_157094
LDR             R1, =off_63FDB0
LDRD            R0, R1, [R1,#(dword_63FE88 - 0x63FDB0)]
STRD            R0, R1, [R4,#0xC]
POP             {R4-R8,PC}
