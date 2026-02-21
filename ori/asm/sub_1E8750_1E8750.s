LDR             R1, =off_6B2490
PUSH            {R4,LR}
LDR             R4, =off_6B40C4
STR             R1, [R0],#4
LDR             R1, =off_6BFDD4
STR             R1, [R0]
ADD             R1, R4, #4
BL              sub_1203D4
LDR             R1, [R4]; off_6B4114
STR             R1, [R0]
LDR             R1, [R1,#(dword_6B40E4 - 0x6B4114)]
LDR             R2, [R4,#(off_6B40E0 - 0x6B40C4)]; off_6B4114
STR             R2, [R0,R1]
ADD             R0, R0, #0x38 ; '8'
BL              sub_594490
ADD             R0, R0, #0x24 ; '$'
BL              sub_2A8760
SUB             R1, R0, #0x5C ; '\'
LDR             R3, =off_6B5F90
ADD             R0, R0, #0x3C ; '<'
MOV             R2, #0
STR             R2, [R0,#4]
STR             R3, [R0]
SUB             R0, R1, #4
STRB            R2, [R1,#0xA4]
POP             {R4,PC}
