PUSH            {R4,LR}
SUB             SP, SP, #0x10
MOV             R12, #0
ADD             LR, SP, #0x18+var_14
ADD             R4, R0, #0x390
STR             R12, [SP,#0x18+var_18]
STM             LR, {R3,R4}
LDR             R3, [R0]
LDR             R12, [R3,#0x58]
MOV             R3, #3
BLX             R12
ADD             SP, SP, #0x10
POP             {R4,PC}
