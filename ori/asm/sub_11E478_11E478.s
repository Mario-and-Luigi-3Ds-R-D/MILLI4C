PUSH            {R4-R10,LR}
MOV             R6, R2
ORR             R7, R2, #0x7000000
ORR             R7, R7, #0xFF0000
LDR             R5, [SP,#0x20+arg_0]
LDR             R8, =0xEAD0FEAD
LDR             R0, [R3]
CMP             R5, #0x80
BHI             loc_11E4E0
LDR             R2, =0xFFF00000
STR             R0, [R1]
ADD             R4, R1, #4
ADD             R2, R2, R5,LSL#20
ORR             R2, R2, R6
ORR             R0, R2, #0xF0000
STR             R0, [R4],#4
MOV             R0, R5,LSL#2
SUB             R2, R0, #4
ADD             R1, R3, #4
MOV             R0, R4
BL              sub_127EB8
ADD             R0, R4, R5,LSL#2
SUB             R0, R0, #4
TST             R5, #1
STREQ           R8, [R0],#4
POP             {R4-R10,PC}
ADD             R4, R1, #8
STM             R1, {R0,R7}
ADD             R9, R3, #4
MOV             R2, #0x1FC
MOV             R1, R9
MOV             R0, R4
BL              sub_127EB8
STR             R8, [R4,#0x1FC]!
ADD             R3, R9, #0x1FC
SUB             R5, R5, #0x80
ADD             R1, R4, #4
B               loc_11E490
