PUSH            {R4-R9,LR}
SUB             SP, SP, #0x14
MOV             R7, R0
MOV             R8, R1
MOV             R9, R2
BL              sub_1233A8
ADD             R0, SP, #0x30+var_20
STR             R0, [SP,#0x30+var_30]
ADD             R3, SP, #0x30+var_2C
ADD             R2, SP, #0x30+var_24
ADD             R1, SP, #0x30+var_28
MOV             R0, #0xFFFFFFFF
BL              sub_11B4E8
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_1215E4
BL              sub_123520
LDR             R4, [SP,#0x30+var_2C]
BL              sub_11A10C
LDR             R6, =unk_6D2448
CMP             R0, #0
MOV             R5, #1
BEQ             loc_11AC6C
NOP
BL              sub_1233A8
MOV             R1, SP
MOV             R0, R4
BL              sub_123868
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_1215E4
NOP
NOP
BL              sub_123520
LDRB            R0, [SP,#0x30+var_30]
CMP             R0, #0
BEQ             loc_11ACEC
STRB            R5, [R6,#(byte_6D2449 - 0x6D2448)]
BL              sub_119F64
MOV             R0, R4
NOP
BL              sub_11B2BC
NOP
BL              sub_13DF78
CMP             R0, #0
NOP
BEQ             loc_11AC88
BL              sub_12157C
STRB            R5, [R6,#(byte_6D244C - 0x6D2448)]
MOV             R0, #0
BL              sub_11AB4C
NOP
NOP
BL              sub_123ADC
NOP
NOP
BL              sub_1233A8
MOV             R2, R9
MOV             R1, R8
MOV             R0, R7
BL              sub_1238E4
MOV             R4, R0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_1215E4
NOP
NOP
BL              sub_123520
NOP
NOP
BL              sub_11AB38
ADD             SP, SP, #0x14
MOV             R0, R4
POP             {R4-R9,PC}
LDR             R0, =0x989680
MOV             R1, #0
BL              sub_121140
NOP
NOP
B               loc_11AC20
