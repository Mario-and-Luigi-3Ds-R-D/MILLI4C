PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, [R0]
MOV             R5, R1
SUB             SP, SP, #0xC
BIC             R1, R0, #1
MOV             R0, SP
BL              sub_12095C
MOV             R1, R0
ANDS            R0, R0, #0x80000000
BMI             loc_113C30
LDMFD           SP, {R0,R2}
ADD             R4, R4, #0xC
STM             R4, {R0,R2}
STM             R5, {R0,R2}
B               loc_113C3C
MOV             R0, #0
STR             R0, [R4,#0xC]
STR             R0, [R4,#0x10]
ADD             SP, SP, #0xC
MOV             R0, R1
POP             {R4,R5,PC}
