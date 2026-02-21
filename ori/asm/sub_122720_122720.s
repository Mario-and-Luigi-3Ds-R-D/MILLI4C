PUSH            {R4-R6,LR}
MOVS            R6, R1
MOV             R4, R0
SUB             SP, SP, #0x10
MOVNE           R0, #3
MOVEQ           R0, #1
STRH            R0, [SP,#0x20+var_20]
MOV             R2, #4
MOV             R1, SP
MOV             R0, #2
BL              sub_1284EC
MOV             R5, #0
ADD             R1, SP, #0x20+var_18
MOV             R0, #0
STRH            R5, [SP,#0x20+var_1C]
BL              sub_1284B8
LDRB            R0, [SP,#0x20+var_18]
CMP             R0, #0
BEQ             loc_122778
ADD             R1, SP, #0x20+var_1C
MOV             R0, #0
BL              sub_1287A8
LDRH            R0, [SP,#0x20+var_1C]
CMP             R0, #1
BEQ             loc_12279C
LDR             R0, =0x4A95C0
MOV             R1, #0
BL              sub_121140
NOP
NOP
B               loc_122750
CMP             R6, #0
ADD             R6, R4, #0x1000
BEQ             loc_1227B8
LDR             R1, [R6,#0xA8]
MOV             R2, #0x1080
ADD             R0, R4, #0x18
BL              sub_2FF3D8
ADD             R0, R4, #8
BL              sub_13273C
STRB            R5, [R6,#0x318]
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1227D8
SVC             0x23 ; '#'
STR             R5, [R4]
MOV             R2, #2
LDR             R0, [R4]
MOV             R1, R2
BL              sub_121428
LDR             R0, [R4,#4]
NOP
SVC             0x23 ; '#'
ADD             R0, R4, #8
STR             R5, [R4,#4]
BL              sub_1327BC
MOV             R0, #0xFFFFFFFF
STR             R0, [R4,#0x10]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
