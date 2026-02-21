PUSH            {R4-R6,LR}
SUB             SP, SP, #0x18
ADD             LR, SP, #0x28+arg_0
MOV             R4, R0
LDM             LR, {R0,R5,R6,R12}
STMEA           SP, {R0,R5,R6,R12}
ADD             R0, SP, #0x28+var_18
BL              sub_121720
ADD             LR, SP, #0x28+var_18
MOV             R0, R4
LDM             LR, {R1,R2}
STM             R4, {R1,R2}
ADD             SP, SP, #0x18
POP             {R4-R6,PC}
