PUSH            {R4-R10,LR}
MOV             R1, #0
MOV             R9, R0
MOV             R0, R1
BL              sub_11B374
MOV             R0, #5
BL              sub_11A168
BL              sub_11A128
MOVS            R5, R0
MOVNE           R0, #1
BLNE            sub_10F284
LDR             R6, =0xC8A0CFF0
LDR             R7, =0xE0A0CC08
LDR             R8, =0xC8A0CC02
NOP
BL              sub_1233A8
MOV             R0, R9
NOP
BL              sub_11B5A8
MOV             R4, R0
NOP
BL              sub_123520
CMP             R4, R6
MOV             R0, R4
CMPNE           R0, R7
CMPNE           R4, R8
BEQ             loc_10FA6C
CMP             R5, #0
BEQ             loc_10FA98
BL              sub_11A128
CMP             R0, #0
MOVEQ           R0, #1
BLEQ            sub_10F264
NOP
NOP
B               loc_10FAAC
LDR             R12, =0xF4240
MOV             R1, #0xA
MOV             R3, #0
MOV             R2, R1,ASR#31
UMULL           R0, R4, R1, R12
MLA             R2, R2, R12, R4
MLA             R1, R1, R3, R2
BL              sub_121140
NOP
NOP
B               loc_10FA14
NOP
BL              sub_11A128
CMP             R0, #0
MOVNE           R0, #1
BLNE            sub_10F284
NOP
BL              sub_11A10C
CMP             R0, #0
NOP
BEQ             loc_10FACC
LDR             R0, =0xC8A0CFFC
CMP             R4, R0
MOVEQ           R4, #0
MOV             R0, R4
POP             {R4-R10,PC}
