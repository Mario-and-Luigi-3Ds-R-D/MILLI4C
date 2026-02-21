PUSH            {R4-R9,LR}
SUB             SP, SP, #0xC
MOV             R8, R0
ADD             R0, SP, #0x28+arg_0
MOVS            R4, R1
LDM             R0, {R5,R9}
MOV             R6, R2
MOV             R7, R3
CMPNE           R5, #0
LDREQ           R0, =0xE0E046BC
BEQ             loc_10D890
MOV             R0, #1
BL              sub_117314
STMEA           SP, {R5,R9}
LDR             R0, [R4]
MOV             R2, R6
MOV             R3, R7
MOV             R1, R8
LDR             R12, [R0]
MOV             R0, R4
BLX             R12
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
