PUSH            {R4-R11,LR}
MOV             R6, R0
SUB             SP, SP, #0xC
MOV             R10, #0
MOV             R11, #7
LDR             R9, =byte_6D23B8
LDR             R4, =dword_6FC544
LDR             R0, [R9,#(dword_6D23E4 - 0x6D23B8)]
ADD             R5, R4, #0x4200
ADD             R0, R0, #1
STR             R0, [R9,#(dword_6D23E4 - 0x6D23B8)]
LDR             R1, [R4]
CMP             R1, #0
BEQ             loc_124560
LDR             R0, [R6,#0xC]
MOV             R2, #0xFFFFFFFF
BL              sub_123EF0
CMP             R0, #0
NOP
BEQ             loc_124548
MOV             R0, #0
MOV             R1, R0
STRD            R0, R1, [SP,#0x30+var_30]
LDR             R0, [R4]
MOV             R7, SP
BL              sub_133C10
MOV             R8, R0
NOP
BL              sub_1361C8
CMP             R0, #0
NOP
BEQ             loc_1244C0
MOV             R1, R7
MOV             R0, R8
BL              sub_12B770
SUBS            R7, R0, #0
NOP
BLE             loc_124560
LDR             R1, [R4]
CMP             R1, #0
LDRNE           R0, [R9,#(dword_6D23DC - 0x6D23B8)]
ADDNE           R2, R0, #0x9200
BEQ             loc_1244A8
LDR             R3, [R0]
CMP             R3, R1
BEQ             loc_124560
ADD             R0, R0, #0x248
CMP             R0, R2
BNE             loc_124490
LDR             R8, =dword_6D23EC
LDR             R0, [R8]
LDR             R1, [R0]
CMP             R1, #0
BNE             loc_124560
B               loc_1244D0
MOV             R0, #0
MOV             R1, R0
STRD            R0, R1, [SP,#0x30+var_30]
B               loc_124560
ADD             R0, R0, #0x48 ; 'H'
ADD             R1, R4, #8
BL              sub_11D1D8
LDR             R0, [R8]
MOV             R2, #0xFFFFFFF0
MOV             R3, #3
STR             R7, [R0,#4]
LDR             R1, [R4,#4]
LDMFD           SP, {R7,LR}
LDR             R0, [R8]
MOV             R12, R1,ASR#31
ADDS            R1, R1, R7
ADC             R12, R12, LR
STR             R2, [R0,#0x18]
ADD             LR, R0, #8
STR             R3, [R0,#0x14]
STR             R11, [R0,#0x10]
STM             LR, {R1,R12}
LDR             R1, =sub_12AAD0
STR             R1, [R0,#0x44]
LDR             R1, [R4]
STR             R1, [R0]
LDR             R0, [R8]
ADD             R0, R0, #0x248
STR             R0, [R8]
LDR             R1, [R9,#(dword_6D23DC - 0x6D23B8)]
ADD             R2, R1, #0x4900
CMP             R0, R2
STREQ           R1, [R8]
B               loc_124560
MOVS            R0, R4
BEQ             loc_124560
MOV             R1, #0x208
STR             R10, [R0]
STR             R10, [R4,#4]
STRH            R10, [R1,R0]
ADD             R4, R4, #0x210
CMP             R4, R5
BNE             loc_124410
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
