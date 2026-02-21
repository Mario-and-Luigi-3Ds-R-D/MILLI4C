PUSH            {R4-R10,LR}
ADD             R7, R0, #0x14400
ADD             R7, R7, #8
MOV             R9, R0
LDR             R0, [R7]
MOV             R10, #0
CMP             R0, #0
BEQ             loc_18A20C
LDR             R1, =off_6B4B04
MOV             R4, R0
MOV             R3, #1
STR             R1, [R0],#0x3C
LDR             R1, =sub_4E6A84
MOV             R2, #0x58 ; 'X'
BLX             sub_1009D8
MOV             R0, R4
BL              sub_300FD4
STR             R10, [R7]
ADD             R8, R9, #0x14400
ADD             R8, R8, #0x18
LDR             R6, [R8]
CMP             R6, #0
MOVNE           R5, #0
MOVNE           R7, #0xFFFFFFFF
BEQ             loc_18A284
ADD             R0, R5, R5,LSL#4
ADD             R0, R0, R5,LSL#5
ADD             R4, R6, R0,LSL#4
ADD             R0, R4, #0x1A8
BL              sub_536F74
STRB            R10, [R4,#0x196]
ADD             R5, R5, #1
STRB            R7, [R4,#0x194]
CMP             R5, #5
STRB            R10, [R4,#0x197]
BLT             loc_18A228
LDR             R0, [R8]
CMP             R0, #0
BEQ             loc_18A280
LDR             R1, =sub_3A308C
MOV             R4, R0
MOV             R3, #5
MOV             R2, #0x310
BLX             sub_1009D8
MOV             R0, R4
NOP
BL              sub_300FD4
STR             R10, [R8]
MOV             R0, R9
POP             {R4-R10,LR}
B               sub_2B5854
