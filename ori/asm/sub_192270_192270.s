PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R5, R1
BL              sub_2B5268
MOV             R1, #0x400
ADD             R0, R4, #0x2C4
BL              sub_5994C8
MOV             R3, #0
MOV             R2, R3
MOV             R1, R5
MOV             R0, #0x400000
BL              sub_1143B4
MOV             R1, R0
ADD             R0, R4, #0x13C00
ADD             R0, R0, #0x5C ; '\'
MOV             R2, #0x400000
MOV             R6, R0
BL              sub_108CA0
LDR             R0, [R4]
LDR             R1, [R0,#0x2A0]
MOV             R0, R4
BLX             R1
MOV             R3, #0
MOV             R2, R3
MOV             R1, R6
MOV             R0, #0x108
BL              sub_10A358
MOVS            R5, R0
BEQ             loc_192304
MOV             R1, #0x108
BL              sub_2FFE8C
LDR             R1, =nullsub_872
MOV             R3, #6
MOV             R2, #0x1C
ADD             R0, R5, #0x60 ; '`'
BLX             sub_1002F4
SUB             R0, R0, #0x60 ; '`'
LDR             R1, =0x14614
MOV             R3, #0
MOV             R2, R3
STR             R0, [R1,R4]
LDR             R0, =0x3108
MOV             R1, R6
BL              sub_1143B4
CMP             R0, #0
NOP
BEQ             loc_192350
ADD             R0, R0, #8
MOV             R2, #0x40 ; '@'
SUB             R5, R0, #8
MOV             R1, #0xC4
MOV             R3, R2
STM             R5, {R1,R2}
MOV             R2, R1
LDR             R1, =sub_3D8D7C
BLX             sub_1002F4
ADD             R5, R4, #0x14800
ADD             R5, R5, #0x35C
MOV             R3, #0
STR             R0, [R5]
MOV             R2, R3
MOV             R1, R6
MOV             R0, #0xC
BL              sub_10A358
CMP             R0, #0
MOV             R7, #0
BEQ             loc_19238C
ADD             R1, R0, #4
STR             R1, [R0,#4]
STR             R7, [R0]
STR             R1, [R0,#8]
LDR             R1, =0x14B60
MOV             R3, #0xC0
MOV             R12, #0x184
STR             R0, [R1,R4]
MOV             R0, #0
LDR             R8, [R5]
ADD             R1, R0, R0,LSL#2
ADD             R2, R0, R0,LSL#4
ADD             R2, R2, R0,LSL#5
ADD             R1, R4, R1,LSL#2
ADD             R9, R3, R2,LSL#2
ADD             R10, R1, #0x14400
ADD             R10, R10, #0x25C
STR             R10, [R8,R9]
LDR             R8, [R5]
ADD             R1, R1, #0x14000
ADD             R2, R12, R2,LSL#2
ADD             R0, R0, #2
ADD             R1, R1, #0x670
CMP             R0, #0x40 ; '@'
STR             R1, [R8,R2]
BLT             loc_1923A0
MOV             R3, #0
MOV             R2, R3
MOV             R1, R6
MOV             R0, #0x280
BL              sub_1143B4
CMP             R0, #0
NOP
BEQ             loc_192414
LDR             R1, =sub_3D8D6C
MOV             R3, #0x20 ; ' '
MOV             R2, #0x14
BLX             sub_1002F4
ADD             R5, R4, #0x14000
ADD             R5, R5, #0xFF0
MOV             R3, #0
STR             R0, [R5]
MOV             R2, R3
MOV             R1, R6
MOV             R0, #0xC
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_192450
ADD             R1, R0, #4
STR             R1, [R0,#4]
STR             R7, [R0]
STR             R1, [R0,#8]
LDR             R1, =0x14FF4
MOV             R12, #0x10
MOV             R3, #0x24 ; '$'
STR             R0, [R1,R4]
MOV             R0, #0
LDR             R7, [R5]
ADD             R1, R0, R0,LSL#3
ADD             R2, R0, R0,LSL#2
ADD             R1, R4, R1,LSL#2
ADD             R8, R12, R2,LSL#2
ADD             R9, R1, #0x14000
ADD             R9, R9, #0xB70
STR             R9, [R7,R8]
LDR             R7, [R5]
ADD             R2, R3, R2,LSL#2
ADD             R1, R1, #0x14800
ADD             R0, R0, #2
ADD             R1, R1, #0x394
CMP             R0, #0x20 ; ' '
STR             R1, [R7,R2]
BLT             loc_192464
MOV             R3, #0
MOV             R2, R3
MOV             R1, R6
MOV             R0, #0x1F0
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_597394
ADD             R5, R4, #0x15000
MOV             R3, #0
STR             R0, [R5,#0x18]
LDR             R0, =0xC38
MOV             R2, R3
MOV             R1, R6
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_5B08B4
MOV             R2, R6
MOV             R1, R4
STR             R0, [R5,#0x20]
POP             {R4-R10,LR}
MOV             R3, #0x7F
B               sub_5AF648
