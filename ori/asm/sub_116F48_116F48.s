PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, [R0,#0x1C]
MOV             R6, R1
LDRH            R0, [R5,#0x26]
TST             R0, #2
BNE             loc_116F98
LDR             R0, =aData; "data:"
BL              sub_11713C
ANDS            R1, R0, #0x80000000
BMI             loc_116F80
LDRH            R1, [R5,#0x26]
ORR             R1, R1, #2
STRH            R1, [R5,#0x26]
MOV             R1, R0
MOV             R0, R5
BL              sub_11C858
CMP             R0, #0
NOP
BEQ             locret_117030
LDR             R2, =dword_6EF02C
LDRH            R3, [R2,#(word_6EF038 - 0x6EF02C)]
LDR             R12, [R2,#(dword_6EF030 - 0x6EF02C)]
LDR             R0, [R2,#(dword_6EF034 - 0x6EF02C)]
ADD             R5, R12, R3,LSL#3
CMP             R5, R0
MOV             R1, R0
ADDHI           R1, R0, #8
MOV             R3, #0
STRHI           R1, [R2,#(dword_6EF034 - 0x6EF02C)]
BHI             loc_116FEC
MOV             R0, R12
CMP             R1, R0
BEQ             loc_117000
LDR             R2, [R0]
CMP             R2, #0
BEQ             loc_116FEC
ADD             R0, R0, #8
CMP             R1, R0
BNE             loc_116FD0
B               loc_117000
CMP             R0, #0
BEQ             loc_117000
MOV             R2, #0x82000000
STR             R2, [R0,#4]
STR             R4, [R0]
STR             R3, [R4,#0x14]
STR             R3, [R4,#0x18]
STR             R3, [R4,#0xC]
MOV             R1, R6
MOV             R2, #7
ADD             R0, R4, #8
STR             R3, [R4,#0x10]
BL              sub_10D7A8
MOV             R1, R0
LDR             R0, [R4,#0x1C]
POP             {R4-R6,LR}
B               sub_11C858
POP             {R4-R6,PC}
