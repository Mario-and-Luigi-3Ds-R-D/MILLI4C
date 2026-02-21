PUSH            {R4,R5,LR}
SUB             SP, SP, #0x20C
MOV             R5, R0
MOV             R4, R1
MOV             R2, #0
ADR             R1, aFmesDat; "FMes.dat"
MOV             R0, SP
BL              sub_10D1D0
LDR             R0, =off_6D1648
LDR             R1, [R5,#4]
LDR             R0, [R0]
LDR             R12, [R1,#0x40]
LDR             R2, [R0,#0xAC]
RSB             R0, R4, R4,LSL#4
ADD             R0, R12, R0,LSL#2
STR             R1, [R0,#0x18]
MOV             R1, SP
BL              sub_158B60
ADD             SP, SP, #0x20C
POP             {R4,R5,PC}
