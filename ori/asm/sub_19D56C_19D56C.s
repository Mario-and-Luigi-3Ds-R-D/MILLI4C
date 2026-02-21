PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x90]
CMP             R0, #0
BEQ             loc_19D5F0
LDR             R5, =off_6D1648
LDR             R1, [R5]
LDR             R0, [R1,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R2, [R0,#0x4EC]
TST             R2, #1
BEQ             loc_19D5F8
MOV             R0, R1
BL              sub_1E45C8
LDRH            R0, [R0,#0x4A]
TST             R0, #4
BEQ             loc_19D5F0
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
NOP
NOP
MOV             R0, #1
CMP             R0, #0
NOP
BEQ             loc_19D5F0
LDR             R0, [R4,#0x90]
LDR             R1, [R0]
LDR             R1, [R1,#0x54]
BLX             R1
CMP             R0, #0
MOVNE           R0, #1
BNE             locret_19D5F4
MOV             R0, #0
POP             {R4-R6,PC}
ADD             R0, R0, #0x400
LDRH            R0, [R0,#0x6C]
CMP             R0, #3
CMPNE           R0, #0
CMPNE           R0, #4
BNE             loc_19D5A0
B               loc_19D5B4
