PUSH            {R4-R11,LR}
ADD             R4, R0, #0x1000
SUB             SP, SP, #0x14
LDRB            R0, [R4,#0x1A4]
TST             R0, #1
BEQ             loc_1096F4
LDR             R0, [R4,#0x1AC]
LDR             R3, [R4,#0x208]
LDR             R1, [R4,#0x20C]
SUBS            R5, R0, R3
RSC             R6, R1, #0
SVC             0x28 ; '('
LDR             R12, =0xBAD34AEE
MOV             R2, #3
MOV             R7, #0
UMULL           R11, LR, R1, R2
UMULL           R10, R3, R0, R12
MOV             R10, R1,ASR#31
ADDS            R3, R3, R7
ADC             R9, R11, R7
UMULL           R8, R11, R1, R12
MLA             R12, R10, R12, R11
MLA             R1, R1, R7, R12
UMLAL           R8, R1, R2, R0
ADD             R0, SP, #0x38+var_30
ADDS            R2, R8, R3
MOV             R3, #0x12
ADC             R1, R1, R9
STR             R2, [SP,#0x38+var_30]
STR             R3, [SP,#0x38+var_38]
LDR             R2, =0xD7B634DB
LDR             R3, =0x431BDE82
STR             R1, [SP,#0x38+var_2C]
BL              sub_11EFDC
ADD             R7, R4, #0x208
LDR             R2, =0x157529FF
STM             R7, {R0,R1}
ADDS            R0, R0, R5
ADC             R1, R1, R6
SUBS            R2, R2, R0
RSCS            R2, R1, #0
BGE             loc_1096F0
LDR             R2, =0x7530
MOV             R3, #0
BL              sub_116AC0
LDR             R0, =0x1574B4CF
ADDS            R0, R0, R2
STR             R0, [R4,#0x1AC]
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
