LDR             R1, =off_6D1648
ADD             R0, R3, #8
PUSH            {R4,LR}
LDR             R12, [R0],#4
LDR             R3, [R1]
LDM             R0, {R1,R2}
LDR             R0, [R3,#0xB0]
SXTB            R3, R2
SXTB            R2, R1
SXTB            R1, R12
BL              sub_1963DC
MOV             R0, #0
POP             {R4,PC}
