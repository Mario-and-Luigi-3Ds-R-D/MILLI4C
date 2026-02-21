ADD             R2, R0, #0x12800
ADD             R2, R2, #0x10C
PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R2,#4]
SUB             SP, SP, #0x10
CMP             R0, #0
LDR             R3, [R0]
STR             R3, [R2,#4]
LDR             R3, [R2,#8]
SUB             R3, R3, #1
STR             R3, [R2,#8]
BLNE            sub_22392C
STR             R0, [SP,#0x18+var_18]
ADD             R0, SP, #0x18+var_14
ADD             R2, R4, #0x12800
STR             R0, [SP,#0x18+var_10]
STR             R0, [SP,#0x18+var_14]
LDR             R0, [R2,#0xF4]
LDR             R12, [R2,#0xF0]
LDR             R3, =0x2AAAAAAB
MOV             R1, SP
SUB             R12, R0, R12
SMULL           R12, R3, R3, R12
MOV             R12, R3,ASR#1
SUB             R3, R12, R3,ASR#31
ADD             R3, R3, #1
CMP             R3, #0x14
BHI             loc_2266FC
CMP             R0, #0
BEQ             loc_2266F0
LDR             R3, [SP,#0x18+var_18]
ADD             R1, R1, #4
STR             R3, [R0],#4
STR             R1, [R0]
LDR             R1, [SP,#0x18+var_10]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0x18+var_10]
LDR             R0, [R2,#0xF4]
ADD             R0, R0, #0xC
STR             R0, [R2,#0xF4]
LDR             R1, [SP,#0x18+var_10]
ADD             R0, SP, #0x18+var_14
CMP             R1, R0
BNE             loc_226724
LDR             R0, [SP,#0x18+var_18]
CMP             R0, #0
BEQ             loc_226724
MOV             R1, R0
ADD             R0, SP, #0x18+var_C
BL              sub_5C9440
LDRD            R0, R1, [SP,#0x18+var_14]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x10
POP             {R4,PC}
