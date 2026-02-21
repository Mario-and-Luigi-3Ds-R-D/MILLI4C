PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#4]
ADD             R1, R1, #0x400
LDRH            R1, [R1,#0x68]
CMP             R1, #0x10
CMPNE           R1, #0x11
BEQ             loc_1CADF0
CMP             R1, #0x23 ; '#'
BEQ             loc_1CAE00
B               loc_1CAE34
LDR             R1, [R0]
LDR             R1, [R1,#0x1B4]
BLX             R1
B               loc_1CAE34
LDR             R0, [R0,#8]
LDR             R0, [R0,#4]
ADD             R1, R0, #0x14000
LDRB            R2, [R1,#0x28F]
CMP             R2, #0
BNE             loc_1CAE34
LDR             R1, [R1,#0x35C]
TST             R1, #7
BNE             loc_1CAE34
LDR             R1, [R0]
LDR             R2, [R1,#0x204]
MOV             R1, #1
BLX             R2
LDR             R0, =0x50B0
LDRB            R0, [R0,R4]
CMP             R0, #0
BEQ             loc_1CAE64
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0x204]
MOV             R1, #1
BLX             R2
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x150]
POP             {R4,LR}
BX              R1
