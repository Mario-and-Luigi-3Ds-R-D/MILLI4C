PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R2, =0xE0E01BF2
MOVS            R0, R0,LSL#20
SUB             SP, SP, #0x10
BNE             loc_1074B0
LDR             R5, =dword_6D3060
MOV             R1, R5
LDR             R0, [R5,#(dword_6D3064 - 0x6D3060)]
LDR             R1, [R1]
CMP             R4, R0
BLS             loc_10750C
CMP             R0, #0
BEQ             loc_1074BC
ORR             R3, R0, R4
MOVS            R3, R3,LSL#12
BEQ             loc_1074BC
MOV             R0, R2
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
CMP             R0, #0
SUB             R3, R4, R0
ADDNE           R1, R1, R0
MOV             R2, #3
ADD             R0, R2, #0x10000
STMEA           SP, {R0,R2}
MOVEQ           R1, #0
MOV             R2, #0
ADD             R0, SP, #0x20+var_18
BL              sub_10CA20
ANDS            R1, R0, #0x80000000
NOP
BMI             loc_1074B4
LDR             R1, [R5,#(dword_6D3064 - 0x6D3060)]
CMP             R1, #0
LDREQ           R1, [SP,#0x20+var_18]
STREQ           R1, [R5]
STR             R4, [R5,#(dword_6D3064 - 0x6D3060)]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
MOV             R6, #0
MOV             R2, #1
SUB             R3, R0, R4
STMEA           SP, {R2,R6}
ADD             R1, R1, R4
MOV             R2, R6
ADD             R0, SP, #0x20+var_18
BL              sub_10CA20
ANDS            R1, R0, #0x80000000
NOP
BMI             loc_1074B4
CMP             R4, #0
STREQ           R6, [R5]
B               loc_107500
