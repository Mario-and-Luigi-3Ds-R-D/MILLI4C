PUSH            {R4,LR}
LDR             R1, [R0,#4]
MOV             R4, R0
CMP             R1, #0
LDRNE           R1, [R0,#0x10]
CMPNE           R1, #0
BEQ             loc_21D104
LDR             R1, =0x101
BL              sub_5858F8
B               loc_21D10C
NOP
BL              sub_585940
MOV             R0, R4
POP             {R4,LR}
B               nullsub_294
