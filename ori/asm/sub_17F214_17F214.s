MOV             R0, R1
LDR             R1, =off_6D1648
MOV             R12, R2
PUSH            {R4,LR}
LDR             R2, [R3,#8]
LDR             R1, [R1]
RSB             R2, R2, R2,LSL#3
LDR             R1, [R1,#0xA4]
ADD             R2, R2, R2,LSL#1
ADD             R1, R1, R2,LSL#3
ADD             R1, R1, #0x40000
ADD             R1, R1, #0xA400
LDRB            R1, [R1,#0xC]
TST             R1, #0xF
MOVEQ           R0, #0
BEQ             locret_17F264
MOV             R2, R3
MOV             R1, R12
BL              sub_29D1B0
MOV             R0, #3
POP             {R4,PC}
