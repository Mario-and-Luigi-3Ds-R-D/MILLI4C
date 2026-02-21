PUSH            {R4-R7,LR}
SUB             SP, SP, #0xC
MOV             R6, R3
LDR             R4, [SP,#0x20+arg_4]
MOV             R7, R2
MOV             R3, #2
ADD             R12, SP, #0x20+var_1C
LDR             R5, [SP,#0x20+arg_0]
MOV             R2, #0
STR             R3, [SP,#0x20+var_20]
STM             R12, {R2,R4}
LDRB            R2, [R5,#0xDE]
LDR             R3, [R0]
MOV             R2, R2,LSL#30
LDR             R12, [R3,#0x58]
MOV             R2, R2,LSR#31
MOV             R3, R7
BLX             R12
CMP             R0, #0
BEQ             loc_18106C
STRB            R6, [R4,#0x77]
LDR             R0, =0x46C
LDRB            R2, [R5,#0xDC]
MOV             R1, #0x7FFFFFF
STRB            R2, [R4,#0x78]
LDRH            R2, [R0,R5]
LDR             R0, [R4,#0x70]
BIC             R0, R0, #0x4000000
AND             R1, R1, R2,LSL#19
BIC             R0, R0, #0x3F80000
ORR             R0, R0, R1
STR             R0, [R4,#0x70]
MOV             R0, #1
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
