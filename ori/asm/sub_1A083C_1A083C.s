LDR             R0, [R0,#0xB0]
NOP
PUSH            {R4,R5,LR}
MOV             R5, R0
LDR             R0, =off_6CE970
SUB             SP, SP, #0xC
MOV             R3, #0
MOV             R4, SP
LDR             R0, [R0]
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x20 ; ' '
BL              sub_10A358
CMP             R0, #0
MOV             R2, #0
BEQ             loc_1A0898
LDR             R1, =off_6BB488
LDR             R3, =off_6B2A84
STM             R0, {R1,R5}
STR             R3, [R0,#0xC]
LDR             R3, =off_6C0770
STRD            R2, R3, [R0,#0x10]
STR             R2, [R0,#0x18]
STR             R0, [SP,#0x18+var_18]
ADD             R0, R4, #4
STR             R0, [SP,#0x18+var_10]
STR             R0, [SP,#0x18+var_14]
MOV             R1, R4
MOV             R2, #0
MOV             R0, R5
BL              sub_61E434
LDR             R1, [SP,#0x18+var_10]
ADD             R0, SP, #0x18+var_14
CMP             R1, R0
BNE             loc_1A08E0
LDR             R0, [SP,#0x18+var_18]
CMP             R0, #0
BEQ             loc_1A08E0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x18+var_14]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
