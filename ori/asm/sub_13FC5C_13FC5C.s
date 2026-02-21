PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R6, R1
LDR             R0, [R0,#0x44]
TST             R0, #4
BEQ             loc_13FCCC
LDR             R5, [R4,#0x10]
MOV             R7, #0
CMP             R5, #0
BEQ             loc_13FCB8
MOV             R1, R4
MOV             R0, R5
BL              sub_13F2E0
MOV             R0, R5
BL              sub_13F7FC
VSTR            S0, [R4,#0x30]
MOV             R0, R5
BL              sub_13F78C
VSTR            S0, [R4,#0x34]
MOV             R0, R5
BL              sub_1406D4
STR             R0, [R4,#0x40]
STR             R7, [R4,#0x10]
ADD             R0, R4, #0x190
STR             R7, [R4,#4]
BL              sub_13F28C
STR             R6, [R4,#0x3C]
POP             {R4-R8,PC}
MOV             R0, R4
POP             {R4-R8,LR}
MOV             R1, #1
NOP
