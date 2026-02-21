PUSH            {R4-R8,LR}
MOV             R6, R0
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R0, [R0,#0x38]
LDR             R4, [R6,#0x34]
CMP             R0, R4
BEQ             loc_1F7B08
VMOV.F32        S0, S16
LDR             R0, [R4]
BL              sub_1F7450
LDR             R0, [R6,#0x38]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_1F7AEC
ADD             R0, R6, #0x34 ; '4'
LDM             R0, {R0,R5}
CMP             R0, R5
BEQ             loc_1F7B2C
LDR             R1, [R0]
LDRB            R1, [R1,#0x41A]
CMP             R1, #4
ADDNE           R0, R0, #0xC
BNE             loc_1F7B10
CMP             R0, R5
MOV             R7, R0
ADDNE           R4, R7, #0xC
CMPNE           R4, R5
BEQ             loc_1F7BD0
LDR             R1, [R4]
LDRB            R0, [R1,#0x41A]
CMP             R0, #4
BEQ             loc_1F7BC4
LDR             R0, [R7]
CMP             R0, R1
BEQ             loc_1F7BC0
LDR             R2, [R7,#8]
ADD             R3, R7, #4
CMP             R2, R3
BNE             loc_1F7C54
CMP             R0, #0
BEQ             loc_1F7B84
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDR             R3, [R4]
ADD             R0, R4, #4
ADD             R1, R7, #4
CMP             R0, R1
STR             R3, [R7]
LDRNE           R2, [R0,#4]
CMPNE           R2, R1
BEQ             loc_1F7BC0
LDM             R1, {R3,R12}
STR             R12, [R3,#4]
STR             R3, [R12]
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             R7, R7, #0xC
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_1F7B40
LDR             R5, [R6,#0x38]
CMP             R7, R5
BEQ             loc_1F7C4C
LDR             R1, =0x2AAAAAAB
SUB             R0, R5, R7
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R7, R5, R0,LSL#2
CMP             R7, R5
BEQ             loc_1F7C48
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_1F7C34
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1F7C34
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_1F7C00
STR             R7, [R6,#0x38]
VPOP            {D8}
POP             {R4-R8,PC}
LDR             R1, [R3]
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R3, [R3]
STR             R3, [R3,#4]
B               loc_1F7B84
