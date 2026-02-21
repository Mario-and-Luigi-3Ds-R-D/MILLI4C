PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R4, R1
MOV             R6, R2
LDR             R0, [R0,#0xBC]
MOV             R7, R3
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
LDRH            R0, [R0,#4]
BL              sub_2AF718
TST             R6, #0xF000
MOV             R8, R0
MOV             R9, #0xFFFFFFFF
BEQ             loc_1EB678
MOV             R0, R6
BL              sub_50EFC4
STR             R0, [R4,#8]
LDRH            R1, [R4]
LDR             R2, =unk_67E49C
BIC             R1, R1, #3
ORR             R1, R1, #1
STRH            R1, [R4]
LDRB            R2, [R2,R7]
AND             R1, R1, #3
ORR             R1, R1, R2,LSL#2
STRH            R1, [R4]
LDR             R0, [R0,#0xC]
STRH            R0, [R4,#2]
LDR             R0, [R5,#0x60]
ADD             R0, R0, #0x1E0
STR             R0, [R4,#4]
LDR             R0, [R8]
TST             R0, #1
MOVEQ           R0, #0x9D
MOVNE           R0, #0xC7
ADD             R4, R4, #0xC
STM             R4, {R0,R9}
POP             {R4-R10,PC}
MOV             R0, #0
STR             R0, [R4,#8]
LDRH            R0, [R4]
LDR             R2, =unk_67E4BC
BIC             R1, R6, #0xF000
BIC             R0, R0, #3
ORR             R0, R0, #2
STRH            R0, [R4]
LDRB            R2, [R2,R7]
AND             R0, R0, #3
ADD             R1, R1, R1,LSL#1
ORR             R0, R0, R2,LSL#2
STRH            R0, [R4]
STRH            R1, [R4,#2]
LDR             R0, [R5,#0x60]
ADD             R0, R0, #0x240
STR             R0, [R4,#4]
LDR             R0, [R8]
TST             R0, #1
MOVNE           R0, #0x36 ; '6'
MOVEQ           R0, #0x1E
B               loc_1EB66C
