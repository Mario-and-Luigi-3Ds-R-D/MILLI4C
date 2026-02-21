PUSH            {R4-R6,LR}
SUB             SP, SP, #8
MOV             R4, R0
MOV             R0, SP
BL              sub_320EB8
ADD             R5, R4, #0x28000
LDR             R0, [R4,#0x138]
ADD             R5, R5, #0x128
ADD             R0, R0, #0xA0
MOV             R6, R0
SUB             R0, R5, #0x28000
MOV             R1, #0
LDR             R0, [R0,#0x10]
BL              sub_5F0474
MOV             R1, R0
MOV             R2, R6
MOV             R0, SP
STM             R0, {R1,R2}
MOV             R1, #0x26 ; '&'
MOV             R0, SP
BL              sub_5D1DE4
VMOV            S0, R0
ADD             R0, R4, #0x12800
MOV             R3, #0
ADD             R5, R4, #0x100
MOV             R2, R3
VCVT.F32.U32    S0, S0
VSTR            S0, [R0,#0x184]
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x21E50
BL              sub_10A358
CMP             R0, #0
MOVEQ           R4, #0
BEQ             loc_279130
LDR             R2, [R4,#0x124]!
LDR             R1, [R4,#0x28]
BL              sub_27FFE0
MOV             R4, R0
LDR             R0, [R5,#8]
ADD             R1, R5, #4
CMP             R0, R1
BNE             loc_279168
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_27915C
BL              sub_2805A8
NOP
NOP
BL              sub_300FD4
STR             R4, [R5]
ADD             SP, SP, #8
POP             {R4-R6,PC}
LDR             R2, [R5,#4]
ADD             R1, R5, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R5,#4]
STR             R1, [R5,#8]
B               loc_27915C
