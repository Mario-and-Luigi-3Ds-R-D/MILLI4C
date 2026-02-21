PUSH            {R4-R6,LR}
SUB             SP, SP, #0x18
LDR             R5, [SP,#0x28+arg_0]
MOVS            R4, #0
MOV             R6, SP
STRH            R4, [R6,#0x28+var_18]
ADD             R6, SP, #0x28+var_24
STR             R4, [SP,#0x28+var_14]
STM             R6!, {R2,R3,R5}
ADD             R4, SP, #0x28+var_14
STR             R4, [SP,#0x28+var_28]
LDR             R2, [R0]
ADDS            R3, R6, #2
LDR             R4, [R2,#0xC]
ADD             R2, SP, #0x28+var_18
BLX             R4
ADD             SP, SP, #0x18
POP             {R4-R6,PC}
