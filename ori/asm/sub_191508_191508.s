PUSH            {R3-R5,LR}
MOV             R4, R0
LDR             R0, [R0]
MOV             R2, R1
VLDR            S0, [R4,#0xA4]
MOV             R1, SP
LDR             R3, [R0,#0x260]
MOV             R0, R4
BLX             R3
CMP             R0, #0
LDRNE           R0, [SP,#0x10+var_10]
STRNE           R0, [R4,#0xA4]
POP             {R3-R5,PC}
