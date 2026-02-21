PUSH            {R4,LR}
MOVS            R4, R1
LDR             R1, [R0,#0x120]
LDR             R3, =0x500A
MOV             R2, #0
BIC             R1, R1, #4
ORR             R1, R1, R4,LSL#2
STR             R1, [R0,#0x120]
MOV             R1, R2
BEQ             loc_1FF860
MOV             R0, R3
VLDR            S0, =1.0
BL              sub_145730
B               loc_1FF86C
VLDR            S0, =0.0
MOV             R0, R3
BL              sub_145730
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
EOR             R1, R4, #1
POP             {R4,LR}
ADD             R0, R0, #0x13C
B               loc_19AFEC
