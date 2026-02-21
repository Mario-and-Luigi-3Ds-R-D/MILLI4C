PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0]
MOV             R5, R2
LDR             R3, [R0,#0x25C]
MOV             R0, R4
BLX             R3
CMP             R0, #0
LDRNE           R0, [R5,#0x10]
STRNE           R0, [R4,#0xA8]
POP             {R4-R6,PC}
