PUSH            {R4-R7,LR}
MOV             R7, R0
VPUSH           {D8}
VMOV.F64        D8, D0
LDRB            R0, [R0,#0x108]
SUB             SP, SP, #4
CMP             R0, #0
BNE             loc_26B444
VMOV.F32        S0, S16
LDR             R0, [R7,#4]
BL              sub_27CC94
ADD             R4, R7, #0x100
LDM             R4, {R4,R5}
CMP             R4, R5
BEQ             loc_26B470
VMOV.F32        S1, S17
VMOV.F32        S0, S16
LDR             R0, [R4]
BL              sub_27E9E4
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_26B454
ADD             R0, R7, #0x100
LDM             R0, {R0,R5}
CMP             R0, R5
BEQ             loc_26B494
LDR             R1, [R0]
LDRB            R1, [R1,#0x3F4]
CMP             R1, #0xC
ADDNE           R0, R0, #0xC
BNE             loc_26B478
CMP             R0, R5
BEQ             loc_26B534
ADD             R4, R0, #0xC
CMP             R4, R5
MOV             R6, R0
BEQ             loc_26B530
LDR             R0, [R4]
LDRB            R1, [R0,#0x3F4]
CMP             R1, #0xC
BEQ             loc_26B524
LDR             R1, [R6]
CMP             R1, R0
BEQ             loc_26B520
LDR             R2, [R6,#8]
ADD             R3, R6, #4
CMP             R2, R3
BNE             loc_26B5C4
CMP             R1, #0
MOVNE           R0, SP
BLNE            sub_5CC87C
LDR             R3, [R4]
ADD             R1, R4, #4
ADD             R0, R6, #4
CMP             R1, R0
STR             R3, [R6]
LDRNE           R3, [R1,#4]
CMPNE           R3, R0
BEQ             loc_26B520
LDM             R0, {R2,R12}
STR             R12, [R2,#4]
STR             R2, [R12]
STR             R3, [R0,#4]
STR             R0, [R3]
STR             R0, [R1,#4]
STR             R1, [R0]
ADD             R6, R6, #0xC
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_26B4AC
MOV             R0, R6
LDR             R5, [R7,#0x104]
CMP             R0, R5
BEQ             loc_26B5A4
LDR             R1, =0x2AAAAAAB
SUB             R0, R5, R0
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R6, R5, R0,LSL#2
CMP             R6, R5
BEQ             loc_26B5A0
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_26B58C
LDR             R1, [R4]
CMP             R1, #0
MOVNE           R0, SP
BLNE            sub_5CC87C
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_26B564
STR             R6, [R7,#0x104]
ADD             R0, R7, #0x100
LDM             R0, {R0,R1}
CMP             R0, R1
MOVEQ           R0, #3
STRBEQ          R0, [R7,#0x108]
ADD             SP, SP, #4
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R1, [R6,#4]
ADD             R0, R6, #4
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R0, [R6,#4]
STR             R0, [R6,#8]
B               loc_26B4E4
