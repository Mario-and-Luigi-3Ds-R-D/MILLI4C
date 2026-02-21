PUSH            {R4-R6,LR}
MOV             R5, R1
LDR             R4, [R0]
VLDR            S0, =0.0
ADD             R0, R4, #0x168
STR             R1, [R4,#0x178]
VSTR            S0, [R4,#0x64]
MOV             R1, #1
BL              sub_62D444
LDR             R1, [R4,#0x168]
MOV             R2, R5
MOV             R0, R4
BL              sub_5B71F4
MOV             R0, R4
BL              sub_5B7B9C
POP             {R4-R6,PC}
