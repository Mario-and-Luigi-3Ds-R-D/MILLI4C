PUSH            {R4-R10,LR}
MOVS            R5, R1
MOV             R4, #0
SUB             SP, SP, #0x10
MOV             R6, R4
MOV             R7, R0
STRBNE          R6, [R5]
BL              sub_11A10C
CMP             R0, #0
BEQ             loc_11B3CC
MOV             R8, #0x400
BL              sub_1233A8
MOV             R1, SP
MOV             R0, R8
BL              sub_123868
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_1215E4
BL              sub_123520
LDRB            R0, [SP,#0x30+var_30]
CMP             R0, #0
BEQ             loc_11B4C8
NOP
BL              sub_11A138
CMP             R0, #0
NOP
BEQ             loc_11B418
MOV             R8, #0x200
BL              sub_1233A8
MOV             R1, SP
MOV             R0, R8
BL              sub_123868
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_1215E4
NOP
NOP
BL              sub_123520
LDRB            R0, [SP,#0x30+var_30]
CMP             R0, #0
BEQ             loc_11B4C8
MOV             R0, #3
BL              sub_11A168
LDR             R8, =0xC8A0CFF0
LDR             R9, =0xE0A0CC08
LDR             R10, =0xC8A0CC02
NOP
BL              sub_1233A8
MOV             R0, R7
NOP
BL              sub_12397C
MOV             R4, R0
NOP
BL              sub_123520
CMP             R4, R8
MOV             R0, R4
CMPNE           R0, R9
CMPNE           R4, R10
BEQ             loc_11B46C
CMP             R4, #0
BEQ             loc_11B498
B               loc_11B4C8
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
B               loc_11B42C
LDR             R0, =dword_6D2458
MOV             R3, #0
LDM             R0, {R1,R2}
ADD             R0, SP, #0x30+var_28
STR             R6, [SP,#0x30+var_30]
STM             R0, {R1,R2}
MOV             R2, R3
MOV             R1, R3
MOV             R0, R3
BL              sub_11AD40
CMP             R5, #0
STRBNE          R0, [R5]
ADD             SP, SP, #0x10
MOV             R0, R4
POP             {R4-R10,PC}
