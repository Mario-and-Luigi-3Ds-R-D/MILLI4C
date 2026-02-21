PUSH            {R4,LR}
SUB             SP, SP, #0x10
MOV             R12, R0
VLDR            S0, [SP,#0x18+arg_0]
ADD             R0, R0, #0x400
ADD             R0, R0, #0x358
ADD             LR, SP, #0x18+var_10
STR             R3, [SP,#0x18+var_18]
ADD             R12, R12, #0x7B0
ADD             R4, R0, #8
VSTR            S0, [SP,#0x18+var_14]
STM             LR, {R4,R12}
LDR             R3, [R0]
LDR             R12, [R3,#8]
MOV             R3, R2
ADD             R2, R0, #8
BLX             R12
ADD             SP, SP, #0x10
POP             {R4,PC}
