LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
VLDR            S0, =0.0
MOV             R1, R0
LDR             R0, =0x20060
VMOV.F32        S1, S0
POP             {R4,LR}
MOV             R2, #0
B               sub_1459F8
