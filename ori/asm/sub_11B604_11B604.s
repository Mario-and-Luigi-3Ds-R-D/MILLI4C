PUSH            {R4-R12,LR}
CMP             R2, #0
MOV             R9, R0
MOV             R10, R1
LDRD            R0, R1, [SP,#0x28+arg_0]
BGE             loc_11B630
RSB             R12, R2, #0
CMP             R12, R0
ADDGT           R6, R2, R0
BGT             loc_11B640
B               loc_11B63C
CMP             R0, R2
SUBLT           R6, R2, R0
BLT             loc_11B640
MOV             R6, #0
CMP             R3, #0
BGE             loc_11B65C
RSB             R2, R3, #0
CMP             R2, R0
ADDGT           R5, R3, R0
BGT             loc_11B66C
B               loc_11B668
CMP             R0, R3
SUBLT           R5, R3, R0
BLT             loc_11B66C
MOV             R5, #0
MUL             R2, R6, R6
SUB             R11, R1, R0
MLA             R0, R5, R5, R2
MUL             R1, R11, R11
CMP             R1, R0
BGT             loc_11B6F8
MOV             R7, R0,LSL#14
CMP             R7, #0
MOVLE           R8, #0
BLE             loc_11B6D4
CMP             R7, #1
MOV             R0, R7
MOV             R4, #1
BLE             loc_11B6B4
MOV             R4, R4,LSL#1
MOV             R0, R0,ASR#1
CMP             R0, R4
BGT             loc_11B6A4
MOV             R8, R4
MOV             R1, R8
MOV             R0, R7
BL              sub_2FEFCC
ADD             R0, R0, R4
MOV             R4, R0,ASR#1
CMP             R4, R8
BLT             loc_11B6B4
MOV             R4, R11,LSL#7
MOV             R1, R8
MUL             R0, R6, R4
BL              sub_2FEFCC
SXTH            R6, R0
MUL             R0, R5, R4
MOV             R1, R8
BL              sub_2FEFCC
SXTH            R5, R0
STRH            R6, [R9]
SXTH            R0, R11
STRH            R5, [R10]
POP             {R4-R12,PC}
