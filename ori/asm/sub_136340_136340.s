PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R4, R1
BL              sub_13FED4
MOV             R6, R0
BL              sub_13273C
ADD             R0, R5, #0x10
MOV             R7, #0
LDM             R0, {R0,R12}
CMN             R4, #1
MOV             R1, R7
MOV             R2, R7
BEQ             loc_1363DC
CMP             R0, R12
BEQ             loc_1363CC
LDR             R3, [R0]
LDR             R8, [R3,#4]
LDR             R8, [R8,#0x10]
CMP             R8, R4
BNE             loc_1363A0
LDR             R8, [R3,#8]
CMP             R8, R1
MOVGT           R2, R3
MOVGT           R1, R8
ADD             R0, R0, #4
CMP             R0, R12
BNE             loc_13637C
CMP             R2, #0
BEQ             loc_1363CC
LDR             R1, [R2]
MOV             R3, #0xFFFFFFFF
MOV             R2, R3
MOV             R0, R5
BL              sub_136438
MOV             R7, #1
MOV             R0, R6
BL              sub_1327BC
MOV             R0, R7
POP             {R4-R8,PC}
MOV             R4, #1
SUB             R12, R12, R0
MOV             R3, R4
ADD             R8, R4, R12,ASR#2
CMP             R8, #1
ADDGT           R4, R4, R12,ASR#2
BLE             loc_1363CC
LDR             R12, [R0]
ADD             R3, R3, #1
ADD             R0, R0, #4
LDR             R8, [R12,#8]
CMP             R8, R1
MOVGT           R2, R12
MOVGT           R1, R8
CMP             R4, R3
BGT             loc_1363F8
B               loc_1363AC
