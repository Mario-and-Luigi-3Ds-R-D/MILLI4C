PUSH            {R4-R10,LR}
MOV             R4, #0
LDR             R6, =dword_69829C
LDR             R7, =dword_6D4B68
LDR             R0, [R6,#(dword_6982A0 - 0x69829C)]
LDR             R1, [R7]
CMP             R1, R0
LDREQ           R0, =0xE0A12FF8
BEQ             locret_10781C
LDR             R5, =off_6D307C
LDR             R8, [R5]
CMP             R8, #0
BEQ             loc_107764
LDR             R4, [R8,#0x88]
CMP             R4, #0
BEQ             loc_107724
LDR             R9, [R4,#0x8C]
MOV             R0, R9
BL              sub_10DDA8
MOVS            R1, R0,LSR#31
NOP
BNE             loc_107728
CMP             R9, R4
BNE             loc_107704
MOV             R0, #0
ANDS            R1, R0, #0x80000000
BMI             loc_107760
LDR             R4, [R8,#0x8C]
CMP             R4, #0
BEQ             loc_10775C
LDR             R8, [R4,#0x8C]
MOV             R0, R8
BL              sub_10DDA8
MOVS            R1, R0,LSR#31
NOP
BNE             loc_107760
CMP             R8, R4
BNE             loc_10773C
MOV             R0, #0
MOV             R4, R0
ANDS            R0, R4, #0x80000000
BMI             loc_107818
LDR             R0, [R5,#(dword_6D3080 - 0x6D307C)]
CMP             R0, #0
BEQ             loc_1077C8
LDR             R1, [R0,#0xC]
CMP             R1, #0
BEQ             loc_10779C
MOV             R0, R1
LDR             R1, [R1,#0xC]
CMP             R1, #0
BNE             loc_107784
CMP             R0, #0
BEQ             loc_1077B8
LDR             R4, [R0,#8]
BL              sub_10DD64
MOVS            R1, R0,LSR#31
NOP
BNE             loc_1077BC
MOVS            R0, R4
BNE             loc_10779C
MOV             R0, #0
MOV             R4, R0
ANDS            R0, R0, #0x80000000
BMI             loc_107818
LDR             R0, =0x713000
LDR             R1, [R5]
CMP             R1, R0
BCC             loc_1077E0
RSB             R0, R0, #0x8000000
ADD             R1, R1, R0
LDR             R0, [R6]
BL              sub_10DF7C
MOV             R4, R0
ANDS            R0, R0, #0x80000000
BMI             loc_107818
MOV             R0, #0
STR             R0, [R5]
LDR             R0, [R7]
SVC             0x23 ; '#'
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [R6,#(dword_6982A0 - 0x69829C)]
STR             R0, [R7]
MOV             R0, R4
POP             {R4-R10,PC}
