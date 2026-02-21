CMP             R1, #0x2000000
BXEQ            LR
PUSH            {R4-R6,LR}
ADD             R6, R0, #0x10000
ADD             R6, R6, #0x4300
MOV             R5, R0
LDRH            R2, [R6,#8]
MOV             R4, R1
ANDS            R0, R2, #0x38 ; '8'
BEQ             loc_2AC8D8
MOV             R0, R2,LSL#28
MOV             R1, #0
MOV             R0, R0,LSR#31
CMP             R0, #0
BLE             loc_2AC8D8
ADD             R3, R5, R1,LSL#2
ADD             R3, R3, #0x14000
LDR             R3, [R3,#0x2F0]
CMP             R3, R4
BEQ             locret_2AC94C
ADD             R1, R1, #1
CMP             R0, R1
BGT             loc_2AC8B8
MOV             R3, R2,LSL#26
CMP             R0, R3,LSR#29
BGE             loc_2AC90C
ADD             R1, R5, R0,LSL#2
ADD             R1, R1, #0x14000
LDR             R2, [R1,#0x2F0]
CMP             R2, R4
LDRNE           R1, [R1,#0x2F4]
CMPNE           R1, R4
BEQ             locret_2AC94C
ADD             R0, R0, #2
CMP             R0, R3,LSR#29
BLT             loc_2AC8E4
LDR             R0, =off_6D1648
MOV             R1, R4
LDR             R0, [R0]
LDR             R0, [R0,#0x9C]
BL              sub_3214D0
LDRH            R1, [R6,#8]
MOV             R2, #0x1C
MOV             R0, #0x20000000
AND             R1, R2, R1,LSR#1
ADD             R1, R1, R5
ADD             R1, R1, #0x14000
STR             R4, [R1,#0x2F0]
LDRH            R1, [R6,#8]
ADD             R0, R0, R1,ROR#6
MOV             R0, R0,ROR#26
STRH            R0, [R6,#8]
POP             {R4-R6,PC}
