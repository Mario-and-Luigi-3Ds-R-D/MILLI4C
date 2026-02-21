PUSH            {R4-R7,LR}
MOV             R5, R0
SUB             SP, SP, #0x14
LDR             R4, =off_6D1648
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #0
BEQ             loc_19A9D8
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
BL              sub_1656B8
CMP             R0, #0
BEQ             loc_19A9D8
LDR             R1, [R4]
LDR             R0, [R1,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R2, [R0,#0x4EC]
TST             R2, #1
BEQ             loc_19A9E0
MOV             R0, R1
BL              sub_1E45C8
LDRH            R0, [R0,#0x4A]
TST             R0, #4
BEQ             loc_19A9D8
LDR             R0, [R5,#0x1B4]
TST             R0, #1
BEQ             loc_19A9D8
LDR             R0, [R4]
MOV             R7, #0
MOV             R6, SP
MOV             R4, R7
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x108]
LDR             R0, [R0,#0x10C]
STR             R1, [SP,#0x28+var_28]
STR             R0, [SP,#0x28+var_20]
STR             R1, [SP,#0x28+var_24]
STR             R0, [SP,#0x28+var_1C]
ADD             R0, R5, R4,LSL#2
LDR             R0, [R0,#0x10]
CMP             R0, #0
BEQ             loc_19A9B4
LDR             R1, [R0]
MOV             R2, R6
LDR             R3, [R1,#0x34]
MOV             R1, R7
BLX             R3
ADD             R4, R4, #1
CMP             R4, #0x20 ; ' '
BLT             loc_19A990
LDR             R0, [R5,#0x90]
CMP             R0, #0
BNE             loc_19A9D8
LDR             R0, [R5,#0x94]
CMP             R0, #0
BLNE            sub_234C74
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
ADD             R0, R0, #0x400
LDRH            R0, [R0,#0x6C]
CMP             R0, #3
CMPNE           R0, #0
CMPNE           R0, #4
BEQ             loc_19A950
B               loc_19A93C
