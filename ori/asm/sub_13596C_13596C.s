VLDR            S1, =90.0
PUSH            {R4,LR}
MOV             R4, R0
VMUL.F32        S0, S0, S1
MOV             R2, #0
ADD             R0, R0, #0x298
BL              sub_140098
LDR             R0, [R4,#0x2C0]
ORR             R0, R0, #4
STR             R0, [R4,#0x2C0]
POP             {R4,PC}
