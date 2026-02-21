PUSH            {R3-R5,LR}
MOV             R1, R2
LDR             R2, [R0]
ADD             R4, R3, #8
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
LDR             R1, [R4,#4]
ADD             R2, R4, #0xC
AND             R1, R1, #0xFF
STR             R1, [SP,#0x10+var_10]
LDR             R3, [R0]
LDM             R2, {R1,R2}
LDR             R4, [R4,#8]
LDR             R12, [R3,#0x108]
SXTB            R3, R2
SXTB            R2, R1
SXTB            R1, R4
BLX             R12
MOV             R0, #0
POP             {R3-R5,PC}
