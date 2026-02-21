PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R4, #0
LDR             R0, [R0,#0x5C]
CMP             R0, #0
MOVHI           R7, #8
MOVHI           R8, #0
BLS             loc_1EABE0
ADD             R2, R4, R4,LSL#1
LDR             R0, [R5,#0x58]
ADD             R3, R7, R2,LSL#2
LDR             R1, [R5,#0x8C]
ADD             R2, R4, R4,LSL#3
LDR             R0, [R0,R3]
ADD             R2, R7, R2,LSL#2
LDR             R3, [R5,#0x60]
LDR             R1, [R1,R2]
ADD             R2, R0, R0,LSL#1
CMP             R1, #0
ADD             R6, R3, R2,LSL#5
BNE             loc_1EABD0
SUB             R0, R0, #8
CMP             R0, #2
BCS             loc_1EABB8
LDR             R0, [R6,#8]!
CMP             R0, #0
BEQ             loc_1EABD0
NOP
BL              sub_2FF5D4
STR             R8, [R6]
NOP
B               loc_1EABD0
LDR             R0, [R6,#0x28]
CMP             R0, #0x10000
BEQ             loc_1EABD0
LDR             R0, [R6,#8]!
CMP             R0, #0
BNE             loc_1EABA4
LDR             R0, [R5,#0x5C]
ADD             R4, R4, #1
CMP             R0, R4
BHI             loc_1EAB58
LDR             R0, =off_67E18C
LDR             R1, [R0,#(off_67E34C - 0x67E18C)]; sub_1EB6D8
LDR             R0, [R0,#(dword_67E350 - 0x67E18C)]
STR             R0, [R5,#0x50]
TST             R0, #1
ADD             R0, R5, R0,ASR#1
STR             R1, [R5,#0x4C]
BEQ             loc_1EAC08
LDR             R2, [R0]
LDR             R1, [R2,R1]
POP             {R4-R8,LR}
BX              R1
