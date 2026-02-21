PUSH            {R4-R6}
CMP             R2, #0
LDR             R12, [SP,#0xC+arg_0]
LDRD            R4, R5, [SP,#0xC+arg_4]
BEQ             loc_1E6C74
SUB             R0, R2, #1
AND             R0, R0, #0xFF
ADD             R2, R1, R0,LSL#4
ADD             R6, R2, #0x27C
ADD             R0, R1, R0,LSL#2
STR             R6, [R3]
LDR             R1, [R0,#0x2AC]
STR             R1, [R12]
LDR             R0, [R0,#0x2B8]
ADD             R1, R2, #0x2C4
STR             R0, [R4]
STR             R1, [R5]
POP             {R4-R6}
BX              LR
ADD             R2, R0, #0x400
ADD             R2, R2, #0x224
ADD             R1, R0, #0x400
STR             R2, [R3]
LDR             R2, [R1,#0x234]
ADD             R0, R0, #0x400
ADD             R0, R0, #0x214
STR             R2, [R12]
LDR             R1, [R1,#0x238]
STR             R1, [R4]
STR             R0, [R5]
POP             {R4-R6}
BX              LR
