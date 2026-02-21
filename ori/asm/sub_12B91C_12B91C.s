PUSH            {R4-R6,LR}
CMP             R1, #0
MOV             R4, R0
VPUSH           {D8}
MOV             R6, R2
ADD             R5, R0, #0x2D4
BEQ             loc_12B9B4
CMP             R6, #0
VLDR            S16, =0.0
BLE             loc_12B96C
MOV             R1, #2
ADD             R0, R4, #0x280
STR             R1, [R0,#0x14]
VMOV.F32        S0, S16
VPOP            {D8}
MOV             R1, R6
ADD             R0, R4, #0x280
POP             {R4-R6,LR}
MOV             R2, #0
B               sub_140098
VMOV.F32        S0, S16
MOV             R2, #0
MOV             R1, R2
ADD             R0, R4, #0x280
BL              sub_140098
LDR             R0, [R4,#0x18]
ORR             R0, R0, #2
STR             R0, [R4,#0x18]!
ADD             R4, R4, #0x2AC
LDR             R0, [R4]
CMP             R0, #0
MOVNE           R1, #1
BLNE            sub_136068
ADD             R4, R4, #4
CMP             R4, R5
BNE             loc_12B990
VPOP            {D8}
POP             {R4-R6,PC}
VLDR            S16, =1.0
CMP             R6, #0
BLE             loc_12B9EC
MOV             R1, #0
ADD             R0, R4, #0x280
STR             R1, [R0,#0x14]
VMOV.F32        S0, S16
MOV             R2, #0
MOV             R1, R6
ADD             R0, R4, #0x280
BL              sub_140098
NOP
NOP
B               loc_12BA00
VMOV.F32        S0, S16
MOV             R2, #0
MOV             R1, R2
ADD             R0, R4, #0x280
BL              sub_140098
LDR             R0, [R4,#0x18]
BIC             R0, R0, #2
STR             R0, [R4,#0x18]!
ADD             R4, R4, #0x2AC
LDR             R0, [R4]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_136068
ADD             R4, R4, #4
CMP             R4, R5
BNE             loc_12BA10
VPOP            {D8}
POP             {R4-R6,PC}
