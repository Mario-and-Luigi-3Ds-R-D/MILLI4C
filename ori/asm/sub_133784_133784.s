PUSH            {R4,LR}
MOV             R4, R0
BL              sub_129DB8
MOV             R1, R4
BL              sub_13F1C0
LDR             R1, [R4,#8]
MOV             R0, #0xFFFFFFFF
TST             R1, #0x70
STREQ           R0, [R4,#8]
BEQ             loc_1337C0
TST             R1, #0x20
LDREQ           R2, [R4]
AND             R1, R1, #7
STREQ           R2, [R4,#4]
STR             R1, [R4,#8]
LDR             R1, [R4,#0x18]
LDR             R2, [R4]
AND             R1, R1, #7
CMP             R2, #0
STR             R1, [R4,#0x18]
STREQ           R0, [R4,#8]
LDR             R1, [R4,#4]
CMP             R1, #0
STREQ           R0, [R4,#8]
LDR             R1, [R4,#0x10]
CMP             R1, #0
STREQ           R0, [R4,#0x18]
STR             R1, [R4,#0x14]
POP             {R4,PC}
