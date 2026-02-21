PUSH            {R4-R10,LR}
SUB             SP, SP, #0x20
MOV             R6, R1
MOV             R10, R0
ADD             R0, SP, #0x40+arg_4
MOV             R9, R2
LDM             R0, {R5,R8}
MOV             R4, R3
LDR             R7, [SP,#0x40+arg_0]
MOV             R2, #0x18
MOV             R1, #0
ADD             R0, SP, #0x40+var_38
BL              sub_110BE4
LDR             R0, =0xAA8
MOV             R3, #0x10000
MOV             R2, #0
MOV             R1, R9
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_160424
MOV             R1, #1
STR             R1, [SP,#0x40+var_40]
ADD             R3, SP, #0x40+var_38
MOV             R2, R5
MOV             R1, R10
BL              sub_1E7DC4
MOV             R5, R0
CMP             R4, #0
BLT             loc_160484
LDR             R1, [R6]
MOV             R0, #0
LDR             R2, [R1,#0x20]!
CMP             R2, #0
ADDNE           R1, R1, R2
MOVEQ           R1, R0
CMP             R1, #0
MOVEQ           R0, #0
BEQ             loc_160460
ADD             R1, R1, R4,LSL#4
LDR             R2, [R1,#0x28]!
CMP             R2, #0
ADDNE           R0, R2, R1
STR             R0, [SP,#0x40+var_40]
LDR             R1, [R5,#0x758]
ADD             R0, R5, #0x400
ADD             R0, R0, #0x358
MOV             R3, R8
LDR             R12, [R1,#0x28]
MOV             R2, R7
MOV             R1, SP
BLX             R12
ADD             SP, SP, #0x20 ; ' '
MOV             R0, R5
POP             {R4-R10,PC}
