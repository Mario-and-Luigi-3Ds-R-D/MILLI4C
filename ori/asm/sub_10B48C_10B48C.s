PUSH            {R4-R10,LR}
MOV             R6, R3
MOV             R8, R0
MOV             R10, R2
LDR             R0, =dword_700750
LDR             R3, =0x8057
MOV             R9, R1
LDR             R2, [R0,#(dword_700874 - 0x700750)]
CMP             R8, R3
SUB             R1, R8, R3
ADD             R0, R0, R2,LSL#2
LDR             R4, [R0,#0x128]
BEQ             loc_10B4F8
BGT             loc_10B4E0
SUB             R0, R8, #0x8000
SUBS            R0, R0, #0x51 ; 'Q'
MOVEQ           R5, #3
BEQ             loc_10B4FC
CMP             R0, #5
BNE             locret_10B568
B               loc_10B4F8
CMP             R1, #1
MOVEQ           R5, #4
BEQ             loc_10B4FC
SUB             R0, R1, #0xD00
SUBS            R0, R0, #0xB
BNE             locret_10B568
MOV             R5, #2
CMP             R6, #0x10000
CMPNE           R6, #0x20000
CMPNE           R6, #0x30000
BNE             locret_10B568
LDR             R7, =off_6D2428
LDR             R3, [R4,#4]
CMP             R3, #0
LDRNE           R12, [R7,#(off_6D242C - 0x6D2428)]
CMPNE           R12, #0
BEQ             loc_10B534
LDR             R0, [R4,#0x14]
LDR             R2, [R4]
MOV             R1, #0x104
BLX             R12
LDR             R12, [R7]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_10B55C
MUL             R0, R5, R9
LDR             R2, [R4]
MOV             R1, #0x104
MUL             R3, R0, R10
MOV             R0, R6
BLX             R12
STR             R6, [R4,#0x14]
ADD             R4, R4, #4
STM             R4, {R0,R8-R10}
POP             {R4-R10,PC}
