PUSH            {R4-R10,LR}
SUB             SP, SP, #0x10
MOV             R4, R0
SVC             0x28 ; '('
LDR             R2, =0xBAD34AEE
MOV             R3, #3
MOV             R12, #0
MOV             R7, R1,ASR#31
UMULL           R9, R8, R0, R2
UMULL           R9, R10, R1, R3
ADDS            R6, R12, R8
ADC             R8, R9, R12
UMULL           R5, R9, R1, R2
MLA             R2, R7, R2, R9
MLA             R1, R1, R12, R2
MOV             R2, #0x12
ADD             R12, SP, #0x30+var_28
UMLAL           R5, R1, R3, R0
STR             R2, [SP,#0x30+var_30]
ADDS            R0, R5, R6
ADC             R1, R1, R8
STRD            R0, R1, [SP,#0x30+var_28]
LDR             R2, =0xD7B634DB
LDR             R3, =0x431BDE82
MOV             R0, R12
BL              sub_11EFDC
ADD             R4, R4, #0x1000
ADD             R3, R4, #0x208
LDR             R2, =0x157529FF
LDM             R3, {R3,R12}
SUBS            R3, R0, R3
LDR             R0, [R4,#0x1AC]
SBC             R1, R1, R12
ADDS            R0, R0, R3
ADC             R1, R1, #0
SUBS            R2, R2, R0
RSCS            R2, R1, #0
BGE             loc_112464
LDR             R2, =0x7530
MOV             R3, #0
BL              sub_116AC0
LDR             R0, =0x1574B4CF
ADDS            R0, R0, R2
LDRB            R1, [R4,#0x1A4]
STR             R0, [R4,#0x1AC]
BIC             R1, R1, #1
STRB            R1, [R4,#0x1A4]
ADD             SP, SP, #0x10
POP             {R4-R10,PC}
