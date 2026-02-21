PUSH            {LR}
SUB             SP, SP, #0x14
MOV             R0, #0
STR             R0, [SP,#0x18+var_10]
LDR             R0, =dword_69A448
LDR             R1, [R0,#(dword_69A450 - 0x69A448)]
STR             R1, [SP,#0x18+var_C]
LDR             R1, [R0]
ADD             R0, SP, #0x18+var_10
BL              sub_10CA5C
LDR             R1, [SP,#0x18+var_10]
MOV             R3, #1
ADD             R2, SP, #0x18+var_C
MOV             R0, SP
SVC             0x3A ; ':'
LDR             R0, [SP,#0x18+var_10]
SVC             0x23 ; '#'
LDR             R0, [SP,#0x18+var_18]
ADD             SP, SP, #0x14
POP             {PC}
