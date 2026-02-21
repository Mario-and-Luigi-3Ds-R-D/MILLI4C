PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0]
MOV             R5, R1
VLDR            S0, [R4,#0xA8]
LDR             R2, [R0,#0x264]
MOV             R0, R4
BLX             R2
CMP             R0, #0
LDRNE           R0, [R5,#0x10]
STRNE           R0, [R4,#0xA8]
POP             {R4-R6,PC}
