PUSH            {R4,R5,LR}
SUB             SP, SP, #0xC
MOV             R4, R0
MOV             R5, R1
BL              sub_4635D8
LDM             R0, {R1,R2}
MOV             R3, #4
LDR             R0, [R0,#8]
STR             R0, [SP,#0x18+var_10]
STMEA           SP, {R1,R2}
MOV             R2, SP
MOV             R1, R5
MOV             R0, R4
BL              sub_231870
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
