PUSH            {R4-R10,LR}
ADD             R0, R2, #0xC
LDM             R0, {R0,R3}
LDR             R1, [R2,#8]
LDR             R9, =off_6CE970
CMP             R3, #0
UXTH            R4, R0
LDR             R0, [R2,#0x14]
MOVNE           R5, #1
MOVEQ           R5, #0
CMP             R0, #0
LDR             R0, [R2,#0x18]
MOVNE           R6, #1
MOVEQ           R6, #0
CMP             R0, #0
UXTH            R1, R1
LDR             R0, [R9]
MOVNE           R7, #1
MOVEQ           R7, #0
AND             R2, R1, #0xF000
CMP             R2, #0x1000
BEQ             loc_210654
CMP             R2, #0x2000
BNE             loc_2106EC
B               loc_210698
NOP
BL              sub_52F368
MOV             R4, R0
LDR             R0, [R0,#0x13C]
CMP             R0, #0
BEQ             loc_210680
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #0
STR             R0, [R4,#0x13C]
MOV             R1, R5
MOV             R0, R4
BL              sub_4E52E4
NOP
NOP
B               loc_2106EC
NOP
BL              sub_52F508
CMP             R4, #0
MOV             R8, R0
MOVEQ           R0, #0
BEQ             loc_2106BC
LDR             R0, [R9]
MOV             R1, R4
BL              sub_52F480
CMP             R6, #0
MOVNE           R1, #2
MOVEQ           R1, #0
CMP             R7, #0
ORR             R1, R1, R5
MOVNE           R2, #4
MOVEQ           R2, #0
ORR             R1, R1, R2
ORR             R2, R1, #8
MOV             R1, R0
MOV             R0, R8
BL              sub_501054
MOV             R0, #0
POP             {R4-R10,PC}
