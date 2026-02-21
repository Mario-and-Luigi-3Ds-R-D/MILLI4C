PUSH            {R4-R8,LR}
MOV             R6, R1
MOV             R5, R2
MOV             R7, R3
MOV             R4, R0
MOV             R2, #0xFFFFFFFF
MOV             R1, #3
BL              sub_4A10F0
LDR             R1, =0x137D0
ADD             R2, R4, #0x13400
ADD             R3, R4, #0x13400
ADD             R12, R4, #0x13400
CMP             R7, #0
MOV             R0, #0
ADD             R2, R2, #0x3D4
ADD             R3, R3, #0x3D8
ADD             R12, R12, #0x3DC
STR             R6, [R1,R4]
BEQ             loc_1C8BC8
MOV             R1, R5,LSR#1
STR             R1, [R12]
STR             R1, [R3]
ADD             R1, R1, R6
STR             R1, [R2]
B               loc_1C8BD4
STR             R5, [R3]
STR             R0, [R2]
STR             R0, [R12]
ADD             R1, R4, #0x13000
ADD             R1, R1, #0x7F0
LDR             R3, =0x137F1
LDRB            R2, [R1]
MVN             R12, R3
SUB             R12, R4, R12
ADD             R2, R4, R2,LSL#2
ADD             R2, R2, #0x13000
ADD             R2, R2, #0x7D0
LDR             R5, [R2]
SUB             R2, R3, #0x11
STR             R5, [R2,R4]
ADD             R2, R4, #0x10000
STRB            R0, [R1]
ADD             R2, R2, #0x3700
STRB            R0, [R4,R3]
STRB            R0, [R12]
STRH            R0, [R2,#0xF4]
STRH            R0, [R2,#0xF6]
STRH            R0, [R2,#0xF8]
POP             {R4-R8,PC}
