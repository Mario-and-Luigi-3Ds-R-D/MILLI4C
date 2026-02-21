LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R1
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R2, =0x13C8C
LDR             R2, [R2,R0]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x9C
ADD             R1, R2, R4,LSL#1
LDR             R2, [R0]
LDRB            R0, [R1,#1]
ADD             R0, R2, R0,LSL#6
POP             {R4,PC}
