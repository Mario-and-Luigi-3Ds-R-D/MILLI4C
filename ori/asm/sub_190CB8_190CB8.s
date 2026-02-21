PUSH            {R4-R8,LR}
MOV             R4, R3
ADD             R3, R0, #0x10000
ADD             R3, R3, #0x3D40
LDR             R5, [SP,#0x18+arg_0]
LDR             R12, [R3]
TST             R12, #1
BNE             locret_190DAC
BIC             R12, R12, #2
ORR             R12, R12, #1
ORR             R12, R12, R5,LSL#1
ADD             R5, R0, #0x10000
ADD             R5, R5, #0x3D00
ADD             R6, R0, #0x13C00
STRH            R1, [R5,#0x44]
ADD             R6, R6, #0x14C
BIC             R1, R12, #0x1C
STRH            R2, [R5,#0x46]
STR             R4, [R6]
TST             R1, #2
STR             R1, [R3]
BEQ             loc_190D20
MOV             R2, #8
MOV             R1, #0
ADD             R0, R0, #0x2C4
BL              sub_5996A0
LDR             R7, =off_6D1648
CMN             R4, #3
BEQ             loc_190D44
CMN             R4, #2
BEQ             locret_190DAC
CMN             R4, #1
CMPNE           R4, #0
BEQ             loc_190D68
B               loc_190D50
LDRH            R0, [R5,#0x44]
BL              sub_2AF718
LDR             R4, [R0,#0xC]
LDR             R0, [R7]
LDR             R0, [R0,#0x148]
CMP             R0, R4
BEQ             locret_190DAC
CMP             R4, #0
STRNE           R4, [R6]
LDRH            R0, [R5,#4]
BL              sub_2AF718
MOV             R4, R0
LDRH            R0, [R5,#0x44]
BL              sub_2AF718
MOV             R1, R0
LDR             R0, [R4]
LDR             R1, [R1]
MOV             R0, R0,LSL#31
CMP             R0, R1,LSL#31
LDR             R0, [R7]
MOVNE           R2, #0x78 ; 'x'
MOVEQ           R2, #0x14
MOV             R1, #0
LDR             R0, [R0,#0x9C]
POP             {R4-R8,LR}
B               sub_321610
POP             {R4-R8,PC}
