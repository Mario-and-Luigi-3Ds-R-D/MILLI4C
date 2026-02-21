LDR             R0, =off_6D1648
PUSH            {R4-R6,LR}
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R4, [R0,#4]
LDR             R0, [R4,#0x14]
TST             R0, #0x400000
LDREQ           R5, [R4,#4]
LDRNE           R5, [R4,#8]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BNE             loc_181160
LDR             R0, [R4,#0x14]
TST             R0, #0x10000
LDR             R0, [R4,#8]
BEQ             loc_181160
LDRB            R1, [R0,#0xDE]
TST             R1, #1
BEQ             loc_181160
LDR             R1, =0x8B8
MOV             R2, R1
LDRSH           R1, [R1,R0]
LDRSH           R2, [R2,R5]
CMP             R1, R2
BNE             loc_181160
ADD             R0, R0, #0x400
LDRH            R0, [R0,#0x68]
CMP             R0, #0
MOVNE           R0, #1
BNE             locret_181164
MOV             R0, #0xFFFFFFFF
POP             {R4-R6,PC}
