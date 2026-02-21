PUSH            {R4-R9,LR}
MOVS            R5, R3
SUB             SP, SP, #0xC
MOV             R7, R0
MOV             R9, R1
MOV             R6, R2
MOV             R8, #0
BEQ             loc_10D96C
LDM             R7, {R0,R2,R3}
STR             R5, [SP,#0x28+var_24]
BIC             R1, R0, #1
ADD             R0, SP, #0x28+var_20
STR             R6, [SP,#0x28+var_28]
BL              sub_10D83C
MOVS            R1, R0,LSR#31
NOP
BNE             loc_10D974
ADD             R1, R7, #4
LDR             R12, [SP,#0x28+var_20]
LDM             R1, {R0,R3}
ADD             R8, R8, R12
ADDS            R0, R0, R12
ADC             R4, R3, R12,ASR#31
STM             R1, {R0,R4}
CMP             R12, R5
BEQ             loc_10D96C
CMP             R12, #0
ADDNE           R6, R6, R12
SUBNE           R5, R5, R12
BNE             loc_10D914
MOV             R0, #0
STR             R8, [R9]
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
