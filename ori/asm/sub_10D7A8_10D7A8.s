PUSH            {R4-R8,LR}
MOV             R6, R0
SUB             SP, SP, #0x10
MOV             R7, R2
MOV             R8, R1
MOV             R0, R1
BL              sub_116840
CMP             R0, #0
LDREQ           R0, =0xC8804465
BEQ             loc_10D830
MOV             R4, R0
ADD             R5, SP, #0x28+var_24
MOV             R0, R8
LDRH            R1, [R0],#2
CMP             R1, #0x3A ; ':'
BNE             loc_10D7DC
MOV             R1, #4
STR             R0, [SP,#0x28+var_20]
STR             R1, [SP,#0x28+var_24]
BLX             sub_100090
ADD             R0, R0, #1
MOV             R2, R5
MOV             R0, R0,LSL#1
STR             R0, [SP,#0x28+var_1C]
LDR             R0, [R4]
MOV             R3, R7
MOV             R1, SP
LDR             R12, [R0]
MOV             R0, R4
BLX             R12
AND             R1, R0, #0x80000000
CMP             R1, #0
LDRGE           R1, [SP,#0x28+var_28]
STRGE           R1, [R6]
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
