PUSH            {R4,R5,LR}
SUB             SP, SP, #0x14
MOV             R4, R2
ADD             R2, SP, #0x20+arg_0
MOV             R0, R1
LDM             R2, {R1,R12}
ADD             R2, R0, #0x58 ; 'X'
ADD             R5, R0, #8
STR             R2, [SP,#0x20+var_14]
STR             R5, [SP,#0x20+var_18]
STMEA           SP, {R1,R12}
LDR             R1, [R0]
ADD             R2, R0, #8
LDR             R12, [R1,#8]
MOV             R1, R4
BLX             R12
ADD             SP, SP, #0x14
POP             {R4,R5,PC}
