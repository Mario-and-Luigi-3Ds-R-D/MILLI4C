PUSH            {R4-R12,LR}
MOV             R6, R0
ADD             R7, R6, #0x1A0000
ADD             R7, R7, #0x5C ; '\'
ADD             R5, R6, #0x1A0000
LDR             R1, =dword_6D1F40
LDR             R0, =0x2A6D365A
STR             R0, [R1]
LDM             R7, {R7,R8}
MOV             R0, R6
BL              sub_528E64
ADD             R9, R0, #0x400
MOV             R10, R0
LDRH            R0, [R9,#0x98]
MOV             R11, #0
AND             R0, R0, #0x7F
CMP             R0, #5
CMPNE           R0, #6
BNE             loc_1D4788
CMP             R0, #5
BEQ             loc_1D475C
BL              sub_146A88
MOV             R4, R0
MOV             R0, #7
ADD             R0, R4, R0,LSL#3
CMP             R4, R0
LDRHNE          R1, [R9,#0x9C]
BEQ             loc_1D4788
LDRH            R2, [R4]
CMP             R2, R1
BNE             loc_1D477C
LDR             R1, [R4,#4]
MOV             R0, R10
BLX             R1
MOV             R11, R0
B               loc_1D4788
NOP
BL              sub_1465D4
MOV             R4, R0
NOP
MOV             R0, #0xD
NOP
NOP
B               loc_1D472C
ADD             R4, R4, #8
CMP             R4, R0
BNE             loc_1D473C
MOV             R3, #1
MOV             R2, R11
MOV             R1, R10
MOV             R0, R6
BL              loc_1CFC94
LDR             R0, [R5,#0x5C]
CMP             R7, R0
BNE             loc_1D47CC
CMP             R7, #0
BNE             loc_1D47C0
LDR             R0, [R5,#0x60]
ORR             R0, R0, R8
TST             R0, #1
BEQ             locret_1D4830
LDR             R0, [R5,#0x60]
CMP             R8, R0
BEQ             locret_1D4830
LDR             R0, =0x19B194
MOV             R1, #0
ADD             R4, R6, R0
LDR             R0, [R4,#0x410]
LDR             R2, [R4,#0x40C]
SUB             R0, R0, R2
MOV             R2, R0,ASR#2
CMP             R2, #0
MOV             R0, R1
BLS             loc_1D4808
LDR             R2, [R4]
STR             R1, [R4,#4]
ORR             R2, R2, #1
STR             R2, [R4]
B               loc_1D4818
LDR             R1, [R4]
STR             R0, [R4,#4]
BIC             R1, R1, #1
STR             R1, [R4]
STR             R0, [R4,#8]
STR             R0, [R4,#0xC]
ADD             R0, R4, #0x10
BL              sub_62C980
ADD             R0, R4, #0x208
BL              sub_62C980
POP             {R4-R12,PC}
