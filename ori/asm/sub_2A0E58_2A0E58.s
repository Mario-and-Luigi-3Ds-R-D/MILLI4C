LDRB            R1, [R0,#0x84]
LDR             R2, [SP,#arg_0]
CMP             R1, #0
BLT             loc_2A0E8C
ADD             R3, R0, R1,LSL#4
ADD             R3, R3, #4
LDR             R12, [R3,#4]
CMP             R12, R2
LDRLS           R12, [R3,#8]
CMPLS           R2, R12
BCC             loc_2A0E90
SUBS            R1, R1, #1
BPL             loc_2A0E68
MOV             R1, #0xFFFFFFFF
ADD             R0, R0, R1,LSL#4
ADD             R0, R0, #4
LDR             R1, [R0,#0xC]
SUBS            R1, R1, #1
STR             R1, [R0,#0xC]
LDREQ           R1, [R0,#4]
STREQ           R1, [R0]
BX              LR
