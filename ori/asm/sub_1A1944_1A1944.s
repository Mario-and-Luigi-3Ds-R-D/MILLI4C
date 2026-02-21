PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
LDR             R1, =off_10D620
SUB             SP, SP, #0x10
MOV             R6, #0
LDR             R0, [R0]
LDRH            R1, [R1,R0]; off_10D620
CMP             R1, #0
BEQ             loc_1A19D4
LDRB            R1, [R4,#0xD]
MOV             R3, #0
MOV             R5, SP
CMP             R1, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
BEQ             loc_1A1A80
MOV             R0, #0xC
BL              sub_10A358
CMP             R0, #0
BEQ             loc_1A19A0
LDR             R1, =off_6BB4A4
STM             R0, {R1,R4}
MOV             R1, R5
STR             R0, [SP,#0x20+var_20]
ADD             R0, R5, #4
STR             R0, [SP,#0x20+var_18]
STR             R0, [SP,#0x20+var_1C]
MOV             R2, #0
MOV             R0, R4
BL              sub_61E434
LDR             R1, [SP,#0x20+var_18]
ADD             R0, SP, #0x20+var_1C
CMP             R1, R0
BNE             loc_1A1A50
B               loc_1A1A64
MOV             R3, #0
ADD             R1, R0, #0x68 ; 'h'
MOV             R5, SP
MOV             R2, R3
MOV             R0, #0x1C
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1A1A14
LDR             R1, =off_6BB4DC
LDR             R2, =off_6C0770
STM             R0, {R1,R4}
ADD             R1, R0, #0xC
STM             R1, {R2,R6}
ADD             R1, R0, #0x14
STM             R1, {R2,R6}
MOV             R1, R5
STR             R0, [SP,#0x20+var_20]
ADD             R0, R5, #4
STR             R0, [SP,#0x20+var_18]
STR             R0, [SP,#0x20+var_1C]
MOV             R2, #0
MOV             R0, R4
BL              sub_61E434
LDR             R1, [SP,#0x20+var_18]
ADD             R0, SP, #0x20+var_1C
CMP             R1, R0
BNE             loc_1A1A50
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BNE             loc_1A1A70
LDRD            R0, R1, [SP,#0x20+var_1C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BEQ             loc_1A1A50
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
B               loc_1A1A50
MOV             R0, #8
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1A1A9C
LDR             R1, =off_6BB4C0
STM             R0, {R1,R4}
MOV             R1, R5
STR             R0, [SP,#0x20+var_20]
ADD             R0, R5, #4
STR             R0, [SP,#0x20+var_18]
STR             R0, [SP,#0x20+var_1C]
MOV             R2, #0
MOV             R0, R4
BL              sub_61E434
LDR             R1, [SP,#0x20+var_18]
ADD             R0, SP, #0x20+var_1C
CMP             R1, R0
BNE             loc_1A1A50
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BNE             loc_1A1A70
B               loc_1A1A50
