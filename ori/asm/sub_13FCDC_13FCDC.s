PUSH            {R4-R8,LR}
MOV             R6, R1
MOV             R4, R0
LDR             R5, [R0,#0x10]
MOV             R7, #0
CMP             R5, #0
BEQ             loc_13FD2C
MOV             R1, R0
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
LDR             R0, [R4,#8]
CMP             R0, #0
BEQ             loc_13FD5C
LDR             R1, [R4]
ADD             R1, R1, #1
CMP             R0, R1
BEQ             loc_13FD5C
MOV             R1, #0
BL              sub_13E478
NOP
NOP
B               loc_13FD60
STR             R7, [R4,#8]
ADD             R0, R4, #0x190
STR             R7, [R4,#4]
BL              sub_13F28C
LDR             R0, [R4,#0x3C]
ORRS            R0, R0, R6
BEQ             locret_13FD84
MOV             R0, R4
POP             {R4-R8,LR}
B               sub_135F80
POP             {R4-R8,PC}
