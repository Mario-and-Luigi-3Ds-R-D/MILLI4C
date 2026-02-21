PUSH            {R4,R5,LR}
SUB             SP, SP, #0xC
MOV             R12, #6
MOV             R4, R2
ADD             LR, SP, #0x18+var_14
MOV             R2, #1
STR             R12, [SP,#0x18+var_18]
MOV             R5, R3
STM             LR, {R1,R2}
MOV             R3, R12
MOV             R2, R5
MOV             R1, R4
BL              sub_20BE40
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
