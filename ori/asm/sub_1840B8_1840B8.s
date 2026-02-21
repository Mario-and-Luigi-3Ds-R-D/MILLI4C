PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R3, #0
STR             R2, [R0,#4]
LDR             R0, =off_6D1648
MOV             R7, R1
ADD             R5, R4, #0x460
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
CMP             R2, R0
MOVEQ           R6, #0x40 ; '@'
MOVNE           R6, #0x20 ; ' '
MOV             R2, R3
ADD             R0, R6, R6,LSL#1
STRB            R6, [R4,#0x460]
MOV             R0, R0,LSL#2
BL              sub_1143B4
CMP             R0, #0
BEQ             loc_184114
LDR             R1, =sub_35B04C
MOV             R3, R6
MOV             R2, #0xC
BLX             sub_1002F4
STR             R0, [R4,#0x45C]
LDRB            R0, [R4,#0x460]
MOV             R3, #0
MOV             R2, R3
MOV             R1, R7
MOV             R0, R0,LSL#2
BL              sub_1143B4
STR             R0, [R4,#0x458]
LDRB            R1, [R5]
POP             {R4-R8,LR}
MOV             R2, R1,LSL#2
MOV             R1, #0
B               sub_110BE4
