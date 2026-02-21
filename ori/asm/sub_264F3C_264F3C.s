PUSH            {R4-R7,LR}
MOV             R6, R0
SUB             SP, SP, #0xC
LDR             R0, [R0,#0x84]
LDR             R4, [R6,#0x80]
MOV             R7, SP
MOV             R5, #0
CMP             R0, R4
BEQ             loc_264F88
LDR             R0, [R4]
LDRSB           R0, [R0,#0x19]
CMP             R0, #0
NOP
BEQ             loc_264F88
LDR             R0, [R6,#0x84]
ADD             R4, R4, #0xC
ADD             R5, R5, #1
CMP             R0, R4
BNE             loc_264F60
LDR             R0, [R6,#0x80]
ADD             R1, R5, R5,LSL#1
LDR             R1, [R0,R1,LSL#2]!
ADD             R0, R0, #4
STR             R1, [SP,#0x20+var_20]
STR             R0, [R7,#4]!
LDR             R1, [R0,#4]
STR             R1, [R7,#4]
STR             R7, [R1]
STR             R7, [R0,#4]
LDR             R0, [SP,#0x20+var_20]
BL              sub_25C1A4
LDR             R1, [SP,#0x20+var_18]
ADD             R0, SP, #0x20+var_1C
CMP             R1, R0
BNE             loc_264FE4
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BEQ             loc_264FE4
BL              sub_25E310
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x20+var_1C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
