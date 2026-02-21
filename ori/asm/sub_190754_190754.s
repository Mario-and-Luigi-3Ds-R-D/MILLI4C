PUSH            {R3-R5,LR}
MOV             R4, R0
MOV             R0, #1
STR             R0, [SP,#0x10+var_10]
LDR             R0, [R4]
LDR             R1, =0x14286
ADD             R2, R4, #0x13C00
ADD             R2, R2, #0x88
LDR             R12, [R0,#0x1A4]
ADD             R3, R4, R1
MOV             R1, #0
MOV             R0, R4
BLX             R12
CMP             R0, #0
BNE             locret_1907B4
LDR             R0, [R4]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DCB4
LDM             R0, {R1,R2}
ADD             SP, SP, #4
MOV             R0, R4
POP             {R4,R5,LR}
BX              R12
POP             {R3-R5,PC}
