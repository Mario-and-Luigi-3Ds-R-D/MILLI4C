PUSH            {R4-R8,LR}
MOVS            R4, R1
MOV             R6, R0
MOV             R7, #0
BEQ             loc_13FB2C
LDRB            R0, [R4,#0x11]
CMP             R0, #1
CMPNE           R0, #2
BNE             loc_13FA30
LDR             R0, [R6,#8]
CMP             R0, #0
BEQ             loc_13FA30
LDR             R1, [R6]
ADD             R1, R1, #1
CMP             R0, R1
MOVNE           R1, R4
BLNE            sub_13F0B0
LDR             R0, [R6,#0x10]
CMP             R0, #0
BEQ             loc_13FA4C
LDR             R1, [R6,#0x24]
CMP             R1, #0
LDREQ           R1, [R4,#4]
BLEQ            sub_13F324
ADD             R5, R6, #0x50 ; 'P'
ADD             R2, R6, #0x150
LDR             R1, [R5,#8]
CMP             R1, R4
BNE             loc_13FA9C
CMP             R5, #0
BEQ             locret_13FAA8
LDR             R1, [R5,#0xC]
MOVS            R12, R1
ADDNE           R0, R6, #0x150
ADDNE           R2, R6, #0x190
BEQ             loc_13FAB8
LDR             R3, [R0]
CMP             R3, R1
BNE             loc_13FAAC
MOV             R0, R12
BL              sub_1361A4
NOP
NOP
B               loc_13FAB8
ADD             R5, R5, #0x20 ; ' '
CMP             R5, R2
BNE             loc_13FA54
POP             {R4-R8,PC}
ADD             R0, R0, #4
CMP             R0, R2
BNE             loc_13FA7C
LDR             R1, [R5,#0xC]
CMP             R1, #0
ADDNE           R0, R6, #0x150
ADDNE           R2, R6, #0x190
BEQ             loc_13FAEC
LDR             R3, [R0]
CMP             R3, R1
BNE             loc_13FAE0
STR             R7, [R0]
B               loc_13FAEC
ADD             R0, R0, #4
CMP             R0, R2
BNE             loc_13FACC
CMP             R4, #0
ADDNE           R0, R6, #0x50 ; 'P'
ADDNE           R2, R6, #0x150
BEQ             locret_13FAA8
LDR             R1, [R0,#8]
CMP             R1, R4
BNE             loc_13FB14
STR             R7, [R0,#8]
STR             R7, [R0,#0xC]
POP             {R4-R8,PC}
ADD             R0, R0, #0x20 ; ' '
CMP             R0, R2
BNE             loc_13FAFC
POP             {R4-R8,PC}
MOVCS           R5, #0
BCS             loc_13FB34
ADD             R0, R6, R4,LSL#5
ADD             R5, R0, #0x50 ; 'P'
LDR             R1, [R5,#8]
CMP             R1, #0
BEQ             loc_13FBF4
LDRB            R0, [R1,#0x11]
CMP             R0, #1
CMPNE           R0, #2
BNE             loc_13FB6C
LDR             R0, [R6,#8]
CMP             R0, #0
BEQ             loc_13FB6C
LDR             R2, [R6]
ADD             R2, R2, #1
CMP             R0, R2
BLNE            sub_13F0B0
LDR             R1, [R5,#0xC]
MOVS            R3, R1
ADDNE           R0, R6, #0x150
ADDNE           R2, R6, #0x190
BEQ             loc_13FBAC
LDR             R12, [R0]
CMP             R12, R1
BNE             loc_13FBA0
MOV             R0, R1
BL              sub_1361A4
NOP
NOP
B               loc_13FBAC
ADD             R0, R0, #4
CMP             R0, R2
BNE             loc_13FB80
LDR             R1, [R5,#0xC]
CMP             R1, #0
ADDNE           R0, R6, #0x150
ADDNE           R2, R6, #0x190
BEQ             loc_13FBE0
LDR             R3, [R0]
CMP             R3, R1
BNE             loc_13FBD4
STR             R7, [R0]
B               loc_13FBE0
ADD             R0, R0, #4
CMP             R0, R2
BNE             loc_13FBC0
CMP             R4, #8
BCS             loc_13FBF4
ADD             R0, R6, R4,LSL#5
STR             R7, [R0,#0x58]
STR             R7, [R0,#0x5C]
ADD             R4, R4, #1
CMP             R4, #8
BLT             loc_13FB24
POP             {R4-R8,PC}
