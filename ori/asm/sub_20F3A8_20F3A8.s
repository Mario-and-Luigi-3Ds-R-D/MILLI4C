PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R4, R1
LDR             R7, =off_6CE970
LDR             R0, =0x119888
MOV             R6, R2
LDR             R1, [R7]
ADD             R0, R0, R1
BL              sub_3375F4
CMP             R0, #0
BEQ             loc_20F408
LDR             R0, =0x120F4C
LDR             R1, [R7]
ADD             R0, R0, R1
BL              sub_5CEA34
CMP             R0, #0
BEQ             loc_20F408
LDR             R0, [R7]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xD600
LDRSH           R0, [R0,#0xA0]
CMP             R0, #0
MOVLE           R0, #0
BLE             locret_20F424
CMP             R4, #0
ADDNE           R1, R4, #4
MOVEQ           R1, #0
MOV             R2, R6
MOV             R0, R5
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R8,PC}
