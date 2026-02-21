PUSH            {R4-R8,LR}
MOV             R5, R0
LDR             R7, =off_6D1648
LDR             R0, [R7]
CMP             R0, #0
LDRNE           R0, [R0,#0x9C]
CMPNE           R0, #0
BEQ             locret_2AF1A0
ADD             R6, R5, #0x10000
ADD             R6, R6, #0x4300
MOV             R4, #0
LDRH            R0, [R6,#8]
MOV             R0, R0,LSL#26
CMP             R4, R0,LSR#29
BGE             locret_2AF1A0
LDR             R0, [R7]
ADD             R1, R5, R4,LSL#2
ADD             R1, R1, #0x14000
LDR             R1, [R1,#0x2F0]
LDR             R0, [R0,#0x9C]
BL              sub_32163C
LDRH            R0, [R6,#8]
ADD             R4, R4, #1
MOV             R0, R0,LSL#26
CMP             R4, R0,LSR#29
BLT             loc_2AF174
POP             {R4-R8,PC}
