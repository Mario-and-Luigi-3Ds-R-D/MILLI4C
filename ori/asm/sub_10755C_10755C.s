PUSH            {R4,R5,LR}
MOV             R4, R0
MOVS            R0, R0,LSL#20
LDR             R5, =dword_6D3060
LDRNE           R0, =0xE0E01BF2
SUB             SP, SP, #0xC
BNE             loc_1075E0
LDR             R0, [R5,#(dword_6D3068 - 0x6D3060)]
CMP             R4, R0
BLS             loc_1075B4
MOV             R2, #3
ADD             R1, R0, #0x8000000
SUB             R3, R4, R0
STR             R2, [SP,#0x18+var_18]
STR             R2, [SP,#0x18+var_14]
MOV             R2, #0
ADD             R0, SP, #0x18+var_10
BL              sub_10CA20
ANDS            R1, R0, #0x80000000
BMI             loc_1075E0
STR             R4, [R5,#(dword_6D3068 - 0x6D3060)]
B               loc_1075E0
MOV             R12, #0
MOV             R2, #1
SUB             R3, R0, R4
STMEA           SP, {R2,R12}
ADD             R1, R4, #0x8000000
MOV             R2, R12
ADD             R0, SP, #0x18+var_10
BL              sub_10CA20
ANDS            R1, R0, #0x80000000
NOP
BPL             loc_1075AC
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
LDR             R1, [R5,#(dword_6D3068 - 0x6D3060)]
MOV             R0, #0x8000000
BL              sub_10DD20
ADD             SP, SP, #0xC
POP             {R4,R5,LR}
B               sub_10DD54
