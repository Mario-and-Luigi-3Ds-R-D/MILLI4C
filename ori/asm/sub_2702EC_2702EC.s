PUSH            {R4,R5,LR}
MOV             R4, R0
SUB             SP, SP, #0x14
MOV             R0, #0
STRB            R0, [R4,#0x4C8]
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x20+var_14
REV             R0, R0
VLDR            S0, =60.0
STR             R0, [SP,#0x20+var_14]
ADD             R0, R4, #0x400
BL              sub_4E665C
LDR             R0, =off_6CE970
MOV             R3, #0
MOV             R5, SP
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0xC
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_270234
STR             R0, [SP,#0x20+var_20]
ADD             R0, R5, #4
STR             R0, [SP,#0x20+var_18]
STR             R0, [SP,#0x20+var_1C]
ADD             R0, R4, #0x400
MOV             R1, R5
MOV             R2, #0
ADD             R0, R0, #0x2C8
BL              sub_61F1E4
LDR             R1, [SP,#0x20+var_18]
ADD             R0, SP, #0x20+var_1C
CMP             R1, R0
BNE             loc_270394
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BEQ             loc_270394
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x20+var_1C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x14
POP             {R4,R5,PC}
