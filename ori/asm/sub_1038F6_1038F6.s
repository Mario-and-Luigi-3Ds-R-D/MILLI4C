PUSH            {R0-R7,LR}
SUB             SP, SP, #4
MOVS            R4, R2
MOVS            R5, R0
MOVS            R7, R1
MOVS            R6, R3
MOV             R0, SP
NOP
NOP
MOVS            R3, R0
SUBS            R2, R6, R4
MOVS            R1, #0
MOVS            R0, R5
BL              sub_301828
STR             R0, [SP,#0x28+var_24]
BL              sub_301888
MOVS            R5, R0
ADDS            R7, #0x10
B               loc_10392E
LDRB            R1, [R4]
MOVS            R0, R7
BL              sub_302756
STRB            R0, [R5]
ADDS            R5, R5, #1
ADDS            R4, R4, #1
CMP             R4, R6
BNE             loc_103920
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
