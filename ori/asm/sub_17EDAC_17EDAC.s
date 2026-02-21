LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R1, [R3,#8]
LDR             R0, [R0]
ADD             R1, R1, R1,LSL#4
LDR             R0, [R0,#0xA4]
ADD             R1, R0, R1,LSL#2
ADD             R2, R1, #0x4A000
ADD             R2, R2, #0x2F0
MOV             R1, #0
BL              sub_37CF38
MOV             R0, #0
POP             {R4,PC}
