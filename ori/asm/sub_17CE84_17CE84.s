PUSH            {R4,LR}
MOV             R1, R2
LDR             R2, [R0]
ADD             R4, R3, #8
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
LDR             R1, [R4,#8]
CMP             R1, #0
BEQ             loc_17CED0
LDR             R1, [R0,#0x464]
MOV             R2, #0x3800
AND             R2, R2, R1,LSL#3
BIC             R1, R1, #0x3800
ORR             R1, R1, R2
ORR             R1, R1, #0x4000
STR             R1, [R0,#0x464]
LDR             R2, [R0]
LDR             R1, [R4,#4]
LDR             R2, [R2,#0x70]
UXTH            R1, R1
BLX             R2
MOV             R0, #0
POP             {R4,PC}
