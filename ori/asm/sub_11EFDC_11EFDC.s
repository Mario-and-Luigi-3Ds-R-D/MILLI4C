PUSH            {R4-R12,LR}
MOV             R4, #0
MOV             R6, R4
MOV             R7, R4
MOV             R11, R0
LDM             R0, {R12,LR}
MOV             R5, R3,ASR#31
UMULL           R10, R9, R12, R2
MOV             R1, LR,ASR#31
MLA             R0, R4, R2, R9
UMULL           R9, R10, LR, R2
MLA             R0, R12, R6, R0
MLA             R2, R1, R2, R10
ADDS            R9, R9, R0
MLA             R2, LR, R4, R2
ADC             R0, R2, R4
UMULL           R2, R6, R12, R3
MLA             R4, R4, R3, R6
UMULL           R6, R8, LR, R3
MLA             R4, R12, R5, R4
MLA             R1, R1, R3, R8
ADDS            R2, R2, R9
MLA             R1, LR, R5, R1
MOV             R5, R0,ASR#31
ADC             R2, R4, R7
ADDS            R0, R0, R2
ADC             R2, R5, R2,ASR#31
ADDS            R0, R0, R6
ADC             R1, R1, R2
CMP             R3, #0
BGE             loc_11F060
ADDS            R0, R0, R12
ADC             R1, R1, LR
LDR             R2, [SP,#0x28+arg_0]
BL              sub_120274
LDR             R2, [R11,#4]
MOV             R2, R2,LSR#31
ADDS            R0, R0, R2
ADC             R1, R1, #0
POP             {R4-R12,PC}
