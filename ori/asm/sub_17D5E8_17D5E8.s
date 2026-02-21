LDR             R0, =off_6D1648
PUSH            {R4,LR}
VLDR            S0, [R3,#0x68]
MOV             R2, #0
LDR             R0, [R0]
VLDR            S1, =0.0
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0]
LDR             R3, [R1,#0xEC]
MOV             R1, R2
BLX             R3
MOV             R0, #0
POP             {R4,PC}
