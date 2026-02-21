PUSH            {R3-R11,LR}
MOV             R5, #0
MOV             R12, R5
MOV             R6, R5
MOV             R10, R5
LDM             R1, {R2,R4}
LDR             R7, =0xD7B634DB
LDR             R3, =0x431BDE82
MOV             R8, R4,ASR#31
UMULL           LR, R11, R2, R7
MLA             R11, R5, R7, R11
MLA             LR, R2, R10, R11
STR             LR, [SP,#0x28+var_28]
UMULL           R11, LR, R4, R7
LDR             R1, [R1,#4]
MLA             R7, R8, R7, LR
LDR             LR, [SP,#0x28+var_28]
MLA             R10, R4, R5, R7
ADDS            R7, R11, LR
ADC             R9, R10, R5
UMULL           R10, R11, R2, R3
MLA             R5, R5, R3, R11
MLA             R2, R2, R12, R5
UMULL           R5, R11, R4, R3
MLA             R3, R8, R3, R11
MLA             R12, R4, R12, R3
ADDS            R4, R10, R7
ADC             R2, R2, R6
MOV             R4, R2,ASR#31
ADDS            R2, R2, R9
ADC             R3, R4, R9,ASR#31
ADDS            R2, R2, R5
ADC             R3, R3, R12
MOV             R5, R2,LSR#18
MOV             R4, R3,LSL#14
MOV             R2, R3,ASR#18
MOV             R3, R1,LSR#31
ORR             R1, R5, R4
ADDS            R1, R1, R3
LDM             R0, {R3,R12}
ADC             R2, R2, #0
ADDS            R1, R1, R3
ADC             R2, R2, R12
STM             R0, {R1,R2}
POP             {R3-R11,PC}
