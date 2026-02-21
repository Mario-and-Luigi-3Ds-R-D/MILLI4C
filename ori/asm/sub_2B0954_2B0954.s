PUSH            {R4-R9,LR}
MOV             R4, R0
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
ADD             R7, R4, #0x13C00
LDRH            R6, [R0,#4]
LDR             R0, =0x317
SUB             SP, SP, #0xC
MOV             R8, R1
CMP             R6, R0
MOV             R9, #0
ADD             R7, R7, #0xF8
MOVCS           R5, #0
BCS             loc_2B09E4
LDR             R0, [R4,#4]
RSB             R2, R8, R8,LSL#4
MOV             R1, R6
LDR             R0, [R0,#0x40]
ADD             R0, R0, R2,LSL#2
BL              sub_158E18
MOVS            R5, R0
BEQ             loc_2B09E4
ADD             R0, SP, #0x28+var_24
STR             R9, [SP,#0x28+var_28]; int
STM             R0, {R5,R9}
ADD             R3, R4, #0x13C00
LDR             R0, [R4,#4]; int
ADD             R3, R3, #0x5C ; '\'; int
MOV             R2, R6; int
MOV             R1, R8; int
BL              sub_532794
CMP             R0, #0
STR             R0, [R7]
MOVEQ           R0, #1
BEQ             loc_2B09F8
B               loc_2B09E8
STR             R9, [R7]
ADD             R4, R4, #0x13C00
ADD             R4, R4, #0xCC
MOV             R0, #0
STR             R5, [R4]
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
