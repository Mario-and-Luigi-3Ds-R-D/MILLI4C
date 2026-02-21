LDR             R0, [R0,#0xB0]
NOP
PUSH            {R4,LR}
LDR             R2, [R0],#4
SUB             SP, SP, #0x10
ADD             R1, SP, #0x18+var_14
STR             R2, [SP,#0x18+var_18]
STR             R0, [SP,#0x18+var_14]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x18+var_10]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R1, [SP,#0x18+var_10]
LDR             R4, [SP,#0x18+var_18]
ADD             R0, SP, #0x18+var_14
CMP             R1, R0
BNE             loc_1A0CF0
MOVS            R0, R4
BEQ             loc_1A0CF0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x18+var_14]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#4]
MOV             R1, #1
LDR             R0, [R0,#0x5C]
BL              sub_14D5E0
MOV             R0, #1
STRB            R0, [R4,#8]
LDR             R0, [R4,#0x10]
BL              sub_533330
LDR             R0, [R4,#0x18]
CMP             R0, #0
BEQ             loc_1A0D44
LDR             R0, =off_6CE388
LDR             R0, [R0]
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x3AC]
SXTH            R1, R0
LDR             R0, [R4,#0x18]
BL              sub_1586A8
ADD             SP, SP, #0x10
POP             {R4,PC}
