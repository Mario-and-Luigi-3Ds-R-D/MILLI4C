PUSH            {R4-R12,LR}
MOV             R8, R2
MOV             R10, R0
MOV             R11, R1
BL              sub_11A158
LDR             R5, =0xC8A0CFF0
LDR             R6, =0xE0A0CC08
LDR             R7, =0xC8A0CC02
CMP             R0, #9
BEQ             loc_108498
MOV             R9, #0
MOV             R1, R9
MOV             R0, R9
BL              sub_11B374
MOV             R0, #9
BL              sub_11A168
NOP
BL              sub_1233A8
EOR             R0, R9, #1
NOP
BL              sub_10FBE8
MOV             R4, R0
NOP
BL              sub_123520
CMP             R4, R5
MOV             R0, R4
CMPNE           R0, R6
CMPNE           R4, R7
BEQ             loc_108510
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
NOP
BL              sub_10F30C
MOV             R0, #0
NOP
BL              sub_11AB4C
NOP
BL              sub_1233A8
MOV             R2, R8
MOV             R1, R11
MOV             R0, R10
BL              sub_10FB94
MOV             R4, R0
NOP
BL              sub_123520
CMP             R4, R5
MOV             R0, R4
CMPNE           R0, R6
CMPNE           R4, R7
BEQ             loc_10853C
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
NOP
NOP
BL              sub_11AB38
NOP
NOP
SVC             3
MOV             R0, R4
POP             {R4-R12,PC}
LDR             R3, =0xF4240
MOV             R1, #0xA
MOV             R12, #0
MOV             R2, R1,ASR#31
UMULL           R0, R4, R1, R3
MLA             R2, R2, R3, R4
MLA             R1, R1, R12, R2
BL              sub_121140
NOP
NOP
B               loc_108458
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
B               loc_1084AC
