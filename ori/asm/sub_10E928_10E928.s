PUSH            {R4-R6,LR}
LDR             R4, =dword_70EDE8
MOV             R0, R4
BL              sub_13273C
LDR             R5, =dword_6E1218
LDR             R0, [R5]
CMP             R0, #0
BNE             loc_10E984
BL              sub_119B9C
LDR             R0, =aNdmU; "ndm:u"
BL              sub_300168
MOV             R2, R0
LDR             R1, =aNdmU; "ndm:u"
LDR             R0, =dword_6E1280
MOV             R3, #0
BL              sub_119C04
MOVS            R1, R0,LSR#31
BEQ             loc_10E984
MOV             R5, R0
MOV             R0, R4
BL              sub_1327BC
MOV             R0, R5
POP             {R4-R6,PC}
LDR             R0, [R5]
ADD             R0, R0, #1
STR             R0, [R5]
MOV             R5, #0
MOV             R0, R4
BL              sub_1327BC
MOV             R0, R5
POP             {R4-R6,PC}
