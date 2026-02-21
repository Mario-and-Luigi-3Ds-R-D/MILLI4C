PUSH            {R4-R6,LR}
LDR             R5, [R0,#0x40]
CMP             R5, #0
BEQ             locret_12AB34
LDM             R0, {R1,R4}
MOV             R0, R1
BL              sub_133C10
MOVS            R6, R0
BEQ             loc_12AB28
BL              sub_1361C8
CMP             R0, #0
BEQ             loc_12AB28
MOV             R0, R5
BL              sub_1361C8
CMP             R0, #0
CMPNE           R4, #0
BLE             loc_12AB28
MOV             R2, R4
MOV             R1, R5
MOV             R0, R6
POP             {R4-R6,LR}
B               sub_135258
MOV             R0, R5
POP             {R4-R6,LR}
B               sub_1361A4
POP             {R4-R6,PC}
