PUSH            {R4-R8,LR}
MOV             R4, R0
SUB             SP, SP, #0x10
LDR             R0, [R0,#0x28]
MOV             R8, #0
LDR             R7, [R0,#0x1C]
CMP             R7, #0
STRNE           R8, [R0,#0x1C]
BEQ             loc_2A8618
LDR             R0, [R4,#0x10]
MOV             R1, SP
ADD             R0, R0, #4
BL              sub_113BF0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R5, [SP,#0x28+var_28]
LDR             R0, [R4,#0x20]
CMP             R0, R5
MOVCC           R6, R7
BCC             loc_2A8640
LDR             R0, [R4,#0x10]
MOV             R2, R5
LDR             R1, [R0]
LDR             R3, [R1,#0x2C]
MOV             R1, R7
B               loc_2A8680
ADD             R0, R4, #8
LDR             R1, [R4,#0x18]
LDM             R0, {R0,R2}
LDR             R3, [R0]
LDR             R3, [R3,#0xC]
BLX             R3
LDR             R1, [R4,#0x28]
MOV             R7, R0
STR             R0, [R1,#0x1C]
B               loc_2A85D0
LDR             R0, [R4,#0x10]
LDR             R2, [R4,#0x20]
LDR             R1, [R0]
LDR             R3, [R1,#0x2C]
MOV             R1, R6
BLX             R3
LDR             R0, [R4,#0x20]
SUB             R5, R5, R0
CMP             R0, R5
ADD             R6, R6, R0
BCC             loc_2A8640
LDR             R0, [R4,#0x10]
MOV             R2, R5
LDR             R1, [R0]
LDR             R3, [R1,#0x2C]
MOV             R1, R6
BLX             R3
LDR             R0, [R4,#0x28]
MOV             R1, R7
ADD             R0, R0, #8
BL              sub_45F5F0
LDR             R0, [R4,#0x34]
CMP             R0, #0
BNE             loc_2A86AC
LDR             R0, [R4,#0x28]
LDR             R0, [R0,#0x18]
STR             R0, [R4,#0x34]
ADD             R0, R0, #7
BIC             R1, R0, #7
STR             R1, [R4,#0x34]
LDR             R2, [R4,#0x28]
LDR             R0, [R2,#0x20]
CMP             R0, #0
STRNE           R8, [R2,#0x20]
BEQ             loc_2A8730
ADD             R3, R4, #0x34 ; '4'
LDR             R1, [R4,#0x18]
LDM             R3, {R3,R12}
MOV             R2, R0
MOV             R5, #0
MOV             R0, #1
STR             R5, [SP,#0x28+var_20]
STMEA           SP, {R0,R12}
MOV             R0, R7
BL              sub_45F494
MOV             R5, R0
NOP
BL              sub_45F89C
LDR             R0, =dword_6D1F88
LDR             R0, [R0,#(dword_6D1F90 - 0x6D1F88)]
CMP             R0, #0
BEQ             loc_2A8720
LDR             R2, [R0]
MOV             R1, R5
LDR             R2, [R2,#8]
BLX             R2
LDR             R0, [R4,#0x28]
STR             R5, [R0,#4]
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
LDR             R0, [R4,#0x2C]
CMP             R0, #0
LDREQ           R0, [R4,#8]
STREQ           R0, [R4,#0x2C]
LDR             R3, [R0]
LDR             R2, [R4,#0x30]
LDR             R3, [R3,#0xC]
BLX             R3
LDR             R1, [R4,#0x28]
STR             R0, [R1,#0x20]
B               loc_2A86CC
