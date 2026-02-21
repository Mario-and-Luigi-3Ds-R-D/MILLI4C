PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R7, R1
BL              sub_13F210
MOV             R6, R0
BL              sub_13273C
LDR             R5, [R4,#8]
CMP             R5, #0
BEQ             loc_1360DC
LDR             R0, [R4]
ADD             R0, R0, #1
CMP             R0, R5
BEQ             loc_1360DC
LDR             R0, [R4,#0x44]
BIC             R0, R0, #8
ORR             R0, R0, R7,LSL#3
STR             R0, [R4,#0x44]
BL              sub_1348B4
LDR             R1, [R4,#0x44]
MOV             R1, R1,LSL#28
ORRS            R0, R0, R1,LSR#31
BEQ             loc_1360D0
MOV             R1, #2
MOV             R0, R5
BL              sub_14121C
B               loc_1360DC
MOV             R1, #0
MOV             R0, R5
BL              sub_14121C
MOV             R0, R6
POP             {R4-R8,LR}
B               sub_1327BC
