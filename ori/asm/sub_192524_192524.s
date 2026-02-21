PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x14C00
ADD             R0, R0, #0x3F4
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_192568
LDR             R1, [R0,#4]!
CMP             R1, R0
BEQ             loc_192568
LDR             R2, [R1,#0x10]
LDRB            R3, [R2]
BIC             R3, R3, #1
STRB            R3, [R2]
LDR             R1, [R1]
CMP             R1, R0
BNE             loc_19254C
ADD             R5, R4, #0x15000
LDR             R0, [R5,#0x18]
CMP             R0, #0
BLNE            sub_59688C
LDR             R0, [R5,#0x20]
CMP             R0, #0
BLNE            sub_5AFC60
LDR             R0, =off_6D1648
LDR             R0, [R0]
CMP             R0, #0
ADDNE           R0, R0, #0x4000
ADDNE           R0, R0, #0x180
BLNE            sub_1E8648
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_2B5484
