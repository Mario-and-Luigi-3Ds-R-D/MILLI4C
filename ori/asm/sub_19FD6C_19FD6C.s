PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6CE388
SUB             SP, SP, #0x10
LDR             R0, [R0]
LDR             R0, [R0,#0x94]
LDRB            R0, [R0,#0x1D9]
MOV             R6, #0
MOV             R5, SP
AND             R0, R0, #2
MOV             R3, R6
MOVS            R1, R0,LSR#1
LDR             R0, =off_6CE970
MOV             R2, R6
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
BEQ             loc_19FE40
MOV             R0, #0x28 ; '('
BL              sub_10A358
CMP             R0, #0
BEQ             loc_19FDF0
LDR             R2, =off_6BB450
MOV             R1, R0
ADD             R0, R0, #8
STM             R1, {R2,R4,R6}
STR             R6, [R0,#4]
STRB            R6, [R0,#8]
STR             R6, [R0,#0xC]
STR             R6, [R1,#0x18]
STR             R6, [R1,#0x1C]
STRB            R6, [R1,#0x20]
MOV             R0, R1
STR             R6, [R1,#0x24]
STR             R0, [SP,#0x20+var_20]
ADD             R0, R5, #4
STR             R0, [SP,#0x20+var_18]
STR             R0, [SP,#0x20+var_1C]
MOV             R1, R5
MOV             R2, #0
ADD             R0, R4, #0x3F4
BL              sub_61E2FC
LDR             R1, [SP,#0x20+var_18]
ADD             R0, SP, #0x20+var_1C
CMP             R1, R0
BNE             loc_19FE2C
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BNE             loc_19FEC0
LDRD            R0, R1, [SP,#0x20+var_1C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
MOV             R0, #0x2C ; ','
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_19FE84
LDR             R2, =off_6BB46C
MOV             R1, R0
ADD             R0, R0, #8
STM             R1, {R2,R4,R6}
STR             R6, [R0,#4]
STRB            R6, [R0,#8]
STR             R6, [R0,#0xC]
STR             R6, [R1,#0x18]
STR             R6, [R1,#0x1C]
STRB            R6, [R1,#0x20]
MOV             R0, R1
STR             R6, [R1,#0x24]
STR             R0, [SP,#0x20+var_20]
ADD             R0, R5, #4
STR             R0, [SP,#0x20+var_18]
STR             R0, [SP,#0x20+var_1C]
MOV             R1, R5
MOV             R2, #0
ADD             R0, R4, #0x3F4
BL              sub_61E2FC
LDR             R1, [SP,#0x20+var_18]
ADD             R0, SP, #0x20+var_1C
CMP             R1, R0
BNE             loc_19FE2C
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BEQ             loc_19FE2C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
B               loc_19FE2C
