PUSH            {R4-R8}
ADD             R12, R0, #0x12000
ADD             R8, SP, #0x14+arg_0
ADD             R12, R12, #0x950
LDM             R8, {R4-R7}
MOV             R8, #1
STRB            R8, [R12]
ADD             R8, R0, #0x12800
ADD             R8, R8, #0x158
STRB            R3, [R12,#1]
STRB            R4, [R12,#4]
STM             R8, {R1,R2}
ADD             R0, R0, #0x13000
STRB            R5, [R12,#0x10]
ADD             R0, R0, #0x6D0
STRB            R6, [R12,#0x11]
STRB            R7, [R12,#0x12]
LDR             R1, [R0]
ORR             R1, R1, #0x1200
STR             R1, [R0]
POP             {R4-R8}
BX              LR
