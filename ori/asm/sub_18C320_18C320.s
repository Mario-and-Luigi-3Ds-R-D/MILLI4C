PUSH            {R4-R6,LR}
ADD             R1, R0, #0x10000
LDR             R6, =off_6D1648
ADD             R1, R1, #0x3D40
MOV             R5, R0
LDR             R1, [R1]
LDR             R2, [R6]
ADD             R0, R0, #0x10000
TST             R1, #1
ADD             R0, R0, #0x3D00
LDR             R1, [R2,#0xC8]
BEQ             loc_18C3D8
TST             R1, #8
ADD             R1, R5, #0x13C00
ADDNE           R2, R2, #0x4000
ADD             R1, R1, #0x14C
LDRNE           R2, [R2,#0x23C]
LDREQ           R2, [R1]
CMN             R2, #3
BEQ             loc_18C3C4
CMN             R2, #2
BEQ             loc_18C3E0
CMN             R2, #1
BEQ             loc_18C3C4
CMP             R2, #0
LDRNE           R4, [R1]
BEQ             loc_18C3E0
CMP             R4, #0
BLE             loc_18C3B8
LDR             R0, [R6]
LDR             R1, [R0,#0x148]
CMP             R1, R4
BEQ             loc_18C3B8
MOV             R3, #0
LDR             R0, [R0,#0x9C]
MOV             R2, R3
MOV             R1, R4
BL              sub_3215BC
LDR             R0, [R6]
STR             R4, [R0,#0x148]
B               loc_18C3E0
LDRH            R0, [R0,#4]
BL              sub_2AF718
LDR             R4, [R0,#0xC]
NOP
B               loc_18C38C
TST             R1, #7
BEQ             loc_18C400
LDR             R0, [R5]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DCCC
LDM             R0, {R1,R2}
MOV             R0, R5
POP             {R4-R6,LR}
BX              R12
LDRH            R0, [R0,#4]
BL              sub_2AF718
LDR             R4, [R0,#0xC]
CMP             R4, #0
LDRGT           R0, [R6]
BLE             loc_18C3B8
B               loc_18C3A4
