PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
SUB             SP, SP, #0xC
ADD             R0, R0, #0x12000
ADD             R0, R0, #0x7E0
LDR             R0, [R0]
LDR             R0, [R0]
MOV             R1, R0
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x20]
BL              sub_287E68
MOV             R0, R4
BL              sub_2919D0
LDR             R5, [R4,#4]
LDR             R0, [R5,#0x40]
BL              sub_5CD82C
CMP             R0, #0
BEQ             loc_291808
LDR             R0, [R5,#0x40]
BL              sub_5CD844
CMP             R0, #0
BEQ             loc_291808
LDR             R0, [R5,#0x40]
BL              sub_282A70
ADD             R5, R5, #0x12800
ADD             R5, R5, #4
MOV             R1, R0
LDR             R0, [R5]
BL              sub_284EF0
LDRB            R0, [R4,#0x14]
CMP             R0, #0
BNE             loc_29185C
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x40]
BL              sub_5CD8C8
CMP             R0, #0
NOP
BEQ             loc_29185C
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x40]
BL              sub_5CD82C
CMP             R0, #0
NOP
BEQ             loc_29185C
LDR             R0, [R4,#4]
MOV             R1, #0
LDR             R0, [R0,#0x40]
BL              sub_2816C0
MOV             R0, #1
STRB            R0, [R4,#0x14]
LDR             R0, [R4,#8]!
CMP             R0, #0
BEQ             loc_2918CC
STR             R0, [SP,#0x18+var_18]
ADD             R0, R4, #4
STR             R0, [SP,#0x18+var_14]
LDR             R2, [R4,#8]
ADD             R1, SP, #0x18+var_14
STR             R2, [SP,#0x18+var_10]
STR             R1, [R2]
STR             R1, [R4,#8]
LDR             R0, [SP,#0x18+var_18]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R1, [SP,#0x18+var_10]
ADD             R0, SP, #0x18+var_14
CMP             R1, R0
BNE             loc_2918C0
LDR             R0, [SP,#0x18+var_18]
CMP             R0, #0
BEQ             loc_2918C0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x18+var_14]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
