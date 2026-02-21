LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R1, [R3,#8]!
LDR             R2, [R0]
CMP             R1, #0
MOVNE           R1, #1
MOVEQ           R1, #0
LDR             R0, [R2,#0xB0]
LDRB            R12, [R0,#0x374]
BIC             R12, R12, #0x20 ; ' '
ORR             R1, R12, R1,LSL#5
STRB            R1, [R0,#0x374]
LDR             R12, [R3,#4]!
ADD             R3, R3, #4
LDR             R0, [R2,#0xB0]
LDM             R3, {R1,R4}
SXTB            R2, R1
SXTB            R3, R4
SXTB            R1, R12
BL              sub_195FC8
MOV             R0, #0
POP             {R4,PC}
