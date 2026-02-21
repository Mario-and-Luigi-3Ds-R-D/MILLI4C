PUSH            {R4,LR}
LDR             R2, [R0,#4]
MOV             R4, R0
MOV             R0, #2
ADD             LR, R4, #8
STRB            R0, [R2,#0xAAC]
LDR             R0, [R4,#4]
MOV             R1, #0
VLDR            S0, =0.0
ADD             R2, R0, #0x108
LDM             R2, {R2,R3,R12}
STM             LR, {R2,R3,R12}
STRB            R1, [R4,#0x9C]
STRB            R1, [R4,#0x9D]
VSTR            S0, [R0,#0x140]
LDR             R0, [R4,#4]
VSTR            S0, [R0,#0x144]
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0x84]
MOV             R1, #1
BLX             R2
MOV             R0, R4
POP             {R4,LR}
B               sub_2359A8
