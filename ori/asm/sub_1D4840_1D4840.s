PUSH            {R4-R10,LR}
ADD             R6, R0, #0x1A0000
MOV             R5, R0
ADD             R4, R0, #0x1A0000
LDR             R0, [R6,#0x64]
ADD             R4, R4, #0x64 ; 'd'
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             loc_1D494C
LDR             R9, =off_6CE970
LDR             R0, [R9]
ADD             R0, R0, #0x1E0
BL              sub_4E1DEC
LDR             R0, [R4]
LDR             R1, [R0,#4]
LDR             R0, [R9]
ADD             R0, R0, #0x1E0
BL              sub_4E1D08
CMP             R0, #0
BEQ             locret_1D497C
LDR             R0, =0x19B194
LDR             R1, [R9]
ADD             R0, R0, R5
MOV             R8, R0
ADD             R7, R1, #0x48 ; 'H'
BL              sub_5BA8FC
LDR             R0, =0x19B594
MOV             R1, #1
STR             R7, [R5,R0]
ADD             R0, R0, #0x18
STR             R7, [R5,R0]
LDR             R0, [R4]
LDR             R0, [R0,#4]
BL              sub_10D594
MOV             R5, R0
LDR             R0, [R4]
MOV             R1, R5
LDR             R0, [R0,#4]
LDR             R2, [R0,#0x18]
MOV             R0, R8
BL              sub_5BA1C4
MOV             R0, R5
BL              sub_110D10
LDR             R0, [R4]
MOV             R7, #0
LDR             R5, [R0,#4]
LDR             R0, [R5,#8]
CMP             R0, #0
LDRNE           R0, [R5,#0x14]
CMPNE           R0, #0
BEQ             loc_1D4914
BL              sub_110D10
STR             R7, [R5,#0x14]
LDR             R0, [R4]
LDR             R1, [R0,#4]
LDR             R0, [R9]
ADD             R0, R0, #0x1E0
BL              sub_4E2370
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R0, [R9]
ADD             R0, R0, #0x1E0
BL              sub_4E2054
LDR             R0, [R4]
STR             R7, [R0]
LDR             R0, [R4]
STR             R7, [R0,#4]
LDR             R1, [R6,#0x5C]
ADR             R2, sub_1D4840
LDR             R0, =unk_653FC0
CMP             R1, R2
LDREQ           R1, [R6,#0x60]
CMPEQ           R1, #0
BEQ             loc_1D4980
LDR             R1, [R4]
LDR             R2, [R0,#(dword_6540A8 - 0x653FC0)]
LDR             R0, [R0,#(off_6540A4 - 0x653FC0)]; sub_1D46CC
STR             R0, [R1,#8]
STR             R2, [R1,#0xC]
POP             {R4-R10,PC}
LDRD            R0, R1, [R0,#(off_6540A4 - 0x653FC0)]
STRD            R0, R1, [R6,#0x5C]
POP             {R4-R10,PC}
