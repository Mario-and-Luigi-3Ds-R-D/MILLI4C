PUSH            {R3-R11,LR}
MOV             R5, #0
MOV             R7, #0
MOV             R8, R1
MOV             R11, R0
LDR             R1, =off_6CE970
LDR             R0, =0x10645C
MOV             R9, R2
LDR             R1, [R1]
ADD             R0, R0, R1
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
MOVNE           R10, SP
MOVEQ           R0, #0
BEQ             loc_21091C
CMP             R4, #0
MOVEQ           R6, #0
SUBNE           R6, R4, #0x1AC
LDR             R1, =byte_6CE7C8
MOV             R0, R6
BL              sub_5EC180
CMP             R0, #0
NOP
BEQ             loc_2108E8
LDRH            R0, [R6,#0x10]
ADD             R1, R10, R5,LSL#1
ADD             R5, R5, #1
STRH            R0, [R1]
LDR             R4, [R4,#8]
CMP             R4, R7
BNE             loc_2108B4
CMP             R5, #0
MOV             R0, #0
BLE             loc_21091C
UXTH            R4, R5
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R4
MOV             R0, R0,LSR#16
ADD             R0, R10, R0,LSL#1
LDRH            R0, [R0]
LDRH            R3, [R9,#2]
CMP             R8, #0
VMOV            S0, R0
ADDNE           R2, R8, #4
MOVEQ           R2, #0
MOV             R1, R11
MOV             R0, R3
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0
POP             {R3-R11,PC}
