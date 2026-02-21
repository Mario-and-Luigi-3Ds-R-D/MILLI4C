PUSH            {R4,LR}
SUB             SP, SP, #8
MOV             R4, R0
MOV             R0, SP
BL              sub_1196D0
LDRD            R0, R1, [SP,#0x10+var_10]
STRD            R0, R1, [R4,#8]
ADD             SP, SP, #8
POP             {R4,PC}
