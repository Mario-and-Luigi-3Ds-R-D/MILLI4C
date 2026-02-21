PUSH            {R4,LR}
LDR             R12, [R0]
ADD             R4, R3, #0x68 ; 'h'
LDR             R3, [R3,#8]
MOV             R1, R2
LDR             R12, [R12,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
VLDR            S0, [R4,#4]
VLDR            S1, =2.0
LDR             R1, [R0]
VMUL.F32        S0, S0, S1
LDR             R1, [R1,#0x7C]
BLX             R1
MOV             R0, #0
POP             {R4,PC}
