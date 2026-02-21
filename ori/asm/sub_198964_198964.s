PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R1, #0
LDR             R0, [R0,#0x120]
BIC             R0, R0, #2
STR             R0, [R6,#0x120]
MOV             R0, R6
BL              sub_1FF828
LDR             R0, [R6,#0x120]
BIC             R0, R0, #8
TST             R0, #1
STR             R0, [R6,#0x120]
LDR             R0, =off_68BBB8
LDRNE           R1, [R0,#(off_68BBC0 - 0x68BBB8)]; sub_198A50
LDRNE           R0, [R0,#(off_68BBC4 - 0x68BBB8)]
LDREQ           R1, [R0,#0x10]
LDREQ           R0, [R0,#0x14]
STR             R0, [R6,#8]
STR             R1, [R6,#4]
LDR             R0, [R6,#0x3D0]
TST             R0, #0x80
BNE             locret_198A44
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R8, R0, #0x14000
MOV             R7, R0
LDRB            R0, [R8,#0x28D]
MOV             R4, #0
CMP             R0, #0
BLE             loc_198A38
ADD             R0, R7, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x184]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R5,#0xAAC]
CMPEQ           R0, #4
BNE             loc_198A28
LDRB            R1, [R6,#0x3B4]
LDR             R0, [R5,#0xAA8]
ADD             R2, R1, #1
ADD             R1, R6, R1,LSL#2
STRB            R2, [R6,#0x3B4]
STR             R0, [R1,#0x374]
STR             R6, [R0,#0x32C]
LDRB            R0, [R8,#0x28D]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_1989E0
LDR             R0, [R6,#0x3D0]
ORR             R0, R0, #0x80
STR             R0, [R6,#0x3D0]
POP             {R4-R8,PC}
