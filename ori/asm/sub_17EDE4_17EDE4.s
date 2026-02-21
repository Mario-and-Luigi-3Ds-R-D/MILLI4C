LDR             R12, =off_6D1648
PUSH            {R4,LR}
MOV             R0, R1
LDR             R1, [R3,#8]
LDR             R12, [R12]
MOV             R4, R2
MOV             R2, R3
LDR             R3, =0x4A2F0
LDR             R12, [R12,#0xA4]
ADD             R1, R1, R1,LSL#4
ADD             R1, R3, R1,LSL#2
LDR             R1, [R12,R1]
TST             R1, #7
MOVEQ           R0, #0
BEQ             locret_17EE2C
MOV             R1, R4
BL              sub_29D1B0
MOV             R0, #3
POP             {R4,PC}
