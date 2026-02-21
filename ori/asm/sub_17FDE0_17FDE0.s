PUSH            {R4,LR}
MOV             R1, R2
LDR             R2, [R0]
ADD             R4, R3, #8
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
ADD             R4, R4, #4
LDM             R4, {R1,R2}
ADD             R0, R0, R1,LSL#2
STR             R2, [R0,#0x760]
MOV             R0, #0
POP             {R4,PC}
