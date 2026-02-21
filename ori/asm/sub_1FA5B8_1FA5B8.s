PUSH            {R3-R6}
ADD             R5, R0, #0x10000
ADD             R5, R5, #0x2700
LDR             R2, =0x12704
LDR             R1, [R5]
MOV             R6, #0x100
MOV             R4, #0
LDR             R2, [R2,R0]
ADD             R3, R1, #0x100
ADD             R1, R1, #0xC4
SUB             R3, R3, R1
LDR             R2, [R2]
MOV             R12, R3,ASR#2
CMP             R12, #0
MOVGT           R3, R3,ASR#2
BLE             loc_1FA618
LDR             R12, [R1],#4
CMP             R12, R2
ADDLS           R4, R4, #1
SUBS            R3, R3, #1
BNE             loc_1FA5F8
SUB             R1, R4, #1
CMP             R1, #0
BGT             loc_1FA61C
MOV             R1, #0
LDR             R2, [R5]
ADD             R0, R0, #0x12400
LDR             R3, [R2,#0xC0]
CMP             R3, #0
BNE             loc_1FA644
ADD             R3, R6, R1,LSL#2
ADD             R3, R3, R2
LDR             R3, [R3]
STR             R3, [SP,#0x10+var_10]
STR             R3, [R0,#0x328]
MOV             R3, #0x13C
ADD             R1, R3, R1,LSL#2
ADD             R1, R1, R2
LDR             R1, [R1]
STR             R1, [SP,#0x10+var_10]
STR             R1, [R0,#0x32C]
POP             {R3-R6}
BX              LR
