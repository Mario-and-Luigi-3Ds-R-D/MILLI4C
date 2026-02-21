PUSH            {R4-R6,LR}
MOV             R4, R1
LDR             R5, =off_6D2420
LDR             R1, =off_6D48F8
LDR             R0, [R5]
LDR             R6, [R1]
LDR             R1, [R0,#8]
LDR             R1, [R1,#0x20]
CMP             R1, R4
BEQ             locret_1162F0
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_116260
LDR             R1, [R0,#0x20]
CMP             R4, R1
BLS             loc_116250
LDR             R0, [R0,#0x24]
CMP             R0, #0
BNE             loc_116234
B               loc_116260
CMP             R0, #0
BEQ             loc_116260
CMP             R1, R4
BEQ             loc_1162DC
NOP
BL              sub_116198
MOV             R1, #0
STR             R1, [R0,#0x24]
STR             R4, [R0,#0x20]
LDR             R1, [R5]
LDR             R3, [R1]
CMP             R3, #0
STREQ           R0, [R1]
BEQ             loc_1162DC
LDR             R2, [R3,#0x20]
CMP             R2, R4
STRHI           R3, [R0,#0x24]
STRHI           R0, [R1]
BHI             loc_1162DC
LDR             R2, [R3,#0x24]
CMP             R2, #0
BEQ             loc_1162D8
LDR             R1, [R2,#0x20]
CMP             R1, R4
BLS             loc_1162C8
STR             R0, [R3,#0x24]
CMP             R2, #0
STR             R2, [R0,#0x24]
BNE             loc_1162DC
B               loc_1162D8
MOV             R3, R2
LDR             R2, [R2,#0x24]
CMP             R2, #0
BNE             loc_1162A8
STR             R0, [R3,#0x24]
LDR             R1, [R5]
STR             R0, [R1,#8]
LDR             R0, [R6]
ORR             R0, R0, #1
STR             R0, [R6]
POP             {R4-R6,PC}
