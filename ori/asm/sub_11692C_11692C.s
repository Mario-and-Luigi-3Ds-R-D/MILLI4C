PUSH            {R4,R5,LR}
CMP             R2, #0
SUB             SP, SP, #0x94
MOV             R4, R0
MOV             R5, R1
BEQ             loc_116968
ADD             R1, R4, #0x8C
MOV             R0, SP
BL              sub_14222C
MOV             R2, SP
MOV             R1, R5
ADD             R0, R4, #0x1BC
BL              sub_141F30
ADD             SP, SP, #0x94
POP             {R4,R5,PC}
LDR             R1, [R4,#0xF8]
MOV             R0, #0x200
BICS            R0, R0, R1
BEQ             loc_1169B8
ADD             R1, R4, #0x8C
MOV             R0, SP
BL              sub_142110
MOV             R1, SP
ADD             R0, SP, #0xA0+var_70
BL              sub_142378
MOV             R2, SP
ADD             R1, SP, #0xA0+var_70
ADD             R0, SP, #0xA0+var_40
BL              sub_141F30
ADD             R2, SP, #0xA0+var_40
MOV             R1, R5
ADD             R0, R4, #0x1BC
BL              sub_141F30
ADD             SP, SP, #0x94
POP             {R4,R5,PC}
ADD             SP, SP, #0x94
MOV             R1, R5
ADD             R0, R4, #0x1BC
POP             {R4,R5,LR}
NOP
