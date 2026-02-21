PUSH            {R4-R10,LR}
MOV             R6, R0
MOV             R5, #0
LDR             R4, [R0,#0x450]
CMP             R4, #0
BEQ             loc_105F2C
LDR             R10, =0x10624DD3
MOV             R9, #1
MOV             R8, #0
LDRH            R0, [R4,#0x2E]
CMP             R0, #0
BEQ             loc_105F04
SUB             R0, R0, #1
MOV             R1, R0,LSL#16
MOVS            R1, R1,LSR#16
STRH            R1, [R4,#0x2E]
BNE             loc_105F10
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_105EFC
LDR             R0, [R4,#0x10]
CMP             R0, #0x64 ; 'd'
BEQ             loc_105EA8
CMP             R0, #0xC8
SUBNE           R0, R0, #0x12C
CMPNE           R0, #2
BHI             loc_105E94
BL              sub_112D3C
LDR             R1, [R4,#0xC]
NOP
BL              sub_113630
CMP             R0, #0
BEQ             loc_105EFC
ADD             R0, R4, #8
BL              sub_106818
NOP
NOP
B               loc_105F10
LDR             R0, [R4,#0x14]
SMULL           R1, R0, R10, R0
MOV             R1, R0,ASR#6
SUB             R0, R1, R0,ASR#31
ORR             R7, R0, #0x1000000
BL              sub_112D3C
MOV             R2, #1
MOV             R1, R7
MOV             R0, #0x64 ; 'd'
BL              sub_11DAF4
CMP             R0, #0
NOP
BNE             loc_105E94
BL              sub_112D3C
LDR             R1, [R4,#0x14]
MOV             R2, #0
MOV             R0, #0x64 ; 'd'
BL              sub_11DAF4
NOP
NOP
B               loc_105E8C
STRH            R9, [R4,#0x2E]
B               loc_105F10
LDR             R0, [R4,#0xC]
CMP             R0, #0
STREQ           R8, [R4,#0x30]
LDR             R0, [R4,#0x30]
TST             R0, #1
MOVNE           R5, R4
BEQ             loc_105F48
LDR             R4, [R4]
CMP             R4, #0
BNE             loc_105E34
NOP
BL              sub_108D58
LDR             R0, =dword_6CF8B8
LDR             R1, [R0,#(dword_6CF8C0 - 0x6CF8B8)]
ADD             R1, R1, #1
STR             R1, [R0,#(dword_6CF8C0 - 0x6CF8B8)]
POP             {R4-R10,PC}
LDR             R0, [R4]
CMP             R5, #0
STRNE           R0, [R5]
STREQ           R0, [R6,#0x450]
LDR             R0, [R4]
CMP             R0, #0
STREQ           R5, [R6,#0x454]
B               loc_105F20
