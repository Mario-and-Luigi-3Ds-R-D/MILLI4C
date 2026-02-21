PUSH            {R4-R6,LR}
SUB             SP, SP, #0x10
MOV             R4, R0
SVC             0x28 ; '('
LDR             R2, =0xBAD34AEE
MOV             R5, R1,ASR#31
MOV             R3, #0
UMULL           R12, R6, R1, R2
MLA             R5, R5, R2, R6
MLA             R3, R1, R3, R5
MOV             R5, #3
UMLAL           R12, R3, R5, R0
UMULL           R2, R0, R0, R2
UMULL           R1, R5, R1, R5
MOV             R2, #0
ADDS            R0, R0, R2
ADC             R2, R2, R1
ADDS            R1, R12, R0
ADC             R0, R3, R2
STR             R1, [SP,#0x20+var_18]
MOV             R1, #0x12
STR             R0, [SP,#0x20+var_14]
LDR             R2, =0xD7B634DB
LDR             R3, =0x431BDE82
ADD             R0, SP, #0x20+var_18
STR             R1, [SP,#0x20+var_20]
BL              sub_11EFDC
MOV             R2, R0
ADD             R0, R4, #0x1000
STR             R1, [R0,#0x20C]
STR             R2, [R0,#0x208]
LDRB            R1, [R0,#0x1A4]
ORR             R1, R1, #1
STRB            R1, [R0,#0x1A4]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
