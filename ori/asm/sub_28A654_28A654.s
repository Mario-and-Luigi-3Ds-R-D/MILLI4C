LDRB            R1, [R0]
CMP             R1, #2
BXNE            LR
PUSH            {R4-R8,LR}
MOV             R1, #7
MOV             R6, R0
STRB            R1, [R0]
LDR             R0, [R0,#0x688]
VLDR            S0, =0.0
MOV             R7, #0
LDR             R1, [R0,#0x68]
VSTR            S0, [R6,#0x3AC]
STR             R1, [R6,#0x3B0]
STRB            R7, [R6,#0x4BD]
LDR             R1, [R6,#0x6A0]
LDR             R4, [R6,#0x69C]
CMP             R1, R4
MOVNE           R8, #6
BEQ             locret_28A708
LDR             R5, [R4]
ADD             R0, R5, #0x1C
BL              sub_5C55B8
CMP             R0, #0x17
NOP
BCC             loc_28A6CC
ADD             R0, R5, #0x1C
BL              sub_5C55B8
CMP             R0, #0x1A
NOP
BLS             loc_28A6F0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MOV             R0, R0,LSL#2
MOV             R3, #0x100
MOV             R0, R0,LSR#16
ADD             R1, R0, #0x17
MOV             R2, #0
ADD             R0, R5, #0x1C
BL              sub_14C430
STR             R7, [R5,#0x5C]
STRB            R8, [R5,#0x410]
LDR             R0, [R6,#0x6A0]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_28A6A0
POP             {R4-R8,PC}
