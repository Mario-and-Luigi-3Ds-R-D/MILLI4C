PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R7, R1
MOV             R8, R2
LDR             R10, =dword_6D4598
LDR             R9, =unk_70C1D0
MOV             R6, #2
CMN             R8, #1
LDRNE           R5, [R4,#0xC]
BEQ             loc_123F60
MOV             R1, R8
MOV             R0, R5
BL              sub_1348CC
CMP             R0, #0
NOP
BEQ             loc_123F44
MOV             R0, R5
BL              sub_12CD2C
CMP             R0, #0
NOP
BNE             loc_123FD0
LDRD            R0, R1, [R4,#8]
ADD             R5, R5, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R5
BNE             loc_123F18
B               loc_123FF0
CMP             R7, #0
BEQ             loc_123FF8
LDR             R5, [R4,#0xC]
CMN             R7, #1
BNE             loc_123FA4
MOV             R0, R5
BL              sub_12CD2C
CMP             R0, #0
NOP
BNE             loc_123FD0
LDRD            R0, R1, [R4,#8]
ADD             R5, R5, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R5
BNE             loc_123F74
B               loc_124048
MOV             R1, R7
MOV             R0, R5
BL              sub_12B880
CMP             R0, #0
NOP
BEQ             loc_123FD8
MOV             R0, R5
BL              sub_12CD2C
CMP             R0, #0
NOP
BEQ             loc_123FD8
MOV             R0, #1
POP             {R4-R10,PC}
LDRD            R0, R1, [R4,#8]
ADD             R5, R5, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R5
BNE             loc_123FA4
CMN             R7, #1
BEQ             loc_124048
LDR             R0, [R10,#(dword_6D45A0 - 0x6D4598)]
LDR             R2, [R10,#(dword_6D459C - 0x6D4598)]
B               loc_124028
CMP             R1, #2
CMPNE           R1, #3
CMPNE           R1, #4
LDREQ           R3, [R0,#4]
CMPEQ           R3, R7
BEQ             loc_123FD0
ADD             R0, R0, #0x20 ; ' '
CMP             R0, R9
LDREQ           R0, =unk_70A1D0
LDR             R1, [R0]
CMP             R1, #0
BEQ             loc_124048
LDR             R3, [R0,#0x1C]
CMP             R1, R3
BNE             loc_124048
CMP             R0, R2
BNE             loc_124004
SUB             R6, R6, #1
CMP             R6, #0
BGT             loc_123F0C
MOV             R0, #0
POP             {R4-R10,PC}
