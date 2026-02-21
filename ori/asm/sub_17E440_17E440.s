LDR             R1, =off_6D1648
PUSH            {R4,LR}
ADD             R0, R3, #8
LDR             R1, [R1]
LDR             R1, [R1,#0xC4]
LDR             R1, [R1,#4]
LDR             R2, [R1,#0x14]
TST             R2, #0x400000
LDREQ           R1, [R1,#4]
LDRNE           R1, [R1,#8]
LDR             R2, [R0,#4]
LDR             R0, [R0]
LDR             R1, [R1,#4]
CMP             R0, #0
AND             R2, R2, #0xFF
ADD             R1, R1, #0x14400
ADD             R1, R1, #8
LDR             R0, [R1]
MOVNE           R1, #1
MOVEQ           R1, #0
BL              sub_2FC2DC
MOV             R0, #0
POP             {R4,PC}
