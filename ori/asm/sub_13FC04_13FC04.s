LDR             R1, [R0,#0x344]
MOV             R12, #0
MOV             R2, #0
CMP             R1, #0
LDRNE           R1, [R0,#0x34C]
CMPNE           R1, #0
ADD             R1, R0, #0x50 ; 'P'
MOVNE           R12, #1
ADD             R0, R0, #0x150
LDR             R3, [R1,#8]
ADD             R1, R1, #0x20 ; ' '
CMP             R3, #0
ADDNE           R2, R2, #1
CMP             R1, R0
BNE             loc_13FC28
ADD             R0, R2, R12
BX              LR
