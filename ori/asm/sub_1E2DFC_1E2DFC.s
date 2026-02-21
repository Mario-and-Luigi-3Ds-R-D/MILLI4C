PUSH            {R4,LR}
MOV             R4, R0
BL              sub_1EA0D8
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R1, [R0,#0xC8]
TST             R1, #7
BEQ             locret_1E2E70
LDR             R0, [R0,#0xBC]
LDR             R1, =0x151CC
LDR             R1, [R1,R0]
CMP             R1, #0
BEQ             locret_1E2E70
MOV             R1, #0
BL              sub_166410
LDR             R0, [R4,#4]
MOV             R2, #1
MOV             R3, #0
LDR             R1, [R0,#0x14]
TST             R1, #0x400000
LDREQ           R0, [R0,#4]
LDRNE           R0, [R0,#8]
MOV             R1, R2
LDR             R0, [R0,#4]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
POP             {R4,LR}
B               sub_59AD78
POP             {R4,PC}
