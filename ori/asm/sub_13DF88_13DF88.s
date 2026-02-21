PUSH            {R4-R11}
ADD             R5, R1, #0x10
SUB             R6, R2, #0x10
LDR             R4, [R1,#4]
LDRH            R12, [R1,#2]
LDR             R7, [SP,#0x20+arg_0]
ADD             R8, R4, R5
ADD             R5, R2, R3
MOV             R12, R12,LSL#17
LDR             R3, [R1,#8]
SUB             R4, R1, R12,LSR#25
LDR             R1, [R1,#0xC]
CMP             R3, #0
LDR             R9, =0x4652
STRNE           R1, [R3,#0xC]
STREQ           R1, [R0]
CMP             R1, #0
STRNE           R3, [R1,#8]
SUB             R10, R6, R4
STREQ           R3, [R0,#4]
CMP             R10, #0x14
MOV             R12, R6
MOV             R1, #0
BCC             loc_13E03C
CMP             R7, #0
LDRBEQ          R11, [R0,#0x14]
CMPEQ           R11, #0
BEQ             loc_13E03C
STRH            R9, [R4]
STRH            R1, [R4,#2]
STR             R1, [R4,#0xC]
SUB             R10, R10, #0x10
STR             R3, [R4,#8]
CMP             R3, #0
STR             R10, [R4,#4]
LDRNE           R10, [R3,#0xC]
LDREQ           R10, [R0]
STRNE           R4, [R3,#0xC]
STREQ           R4, [R0]
CMP             R10, #0
STR             R10, [R4,#0xC]
STRNE           R4, [R10,#8]
MOV             R3, R4
STREQ           R4, [R0,#4]
B               loc_13E040
MOV             R6, R4
SUB             R4, R8, R5
CMP             R4, #0x14
BCC             loc_13E09C
CMP             R7, #1
LDRBEQ          R10, [R0,#0x14]
CMPEQ           R10, #0
BEQ             loc_13E09C
STRH            R9, [R5]
STRH            R1, [R5,#2]
STR             R1, [R5,#0xC]
SUB             R4, R4, #0x10
STR             R3, [R5,#8]
CMP             R3, #0
STR             R4, [R5,#4]
LDRNE           R4, [R3,#0xC]
LDREQ           R4, [R0]
STRNE           R5, [R3,#0xC]
STREQ           R5, [R0]
CMP             R4, #0
STR             R4, [R5,#0xC]
STRNE           R5, [R4,#8]
STREQ           R5, [R0,#4]
B               loc_13E0A0
MOV             R5, R8
LDR             R3, [R0,#-4]
SUB             R4, R5, R6
AND             R3, R3, #1
CMP             R3, #0
MOVNE           R8, #0
CMPNE           R4, #3
BLS             loc_13E0E4
MOV             R9, R4,LSL#29
SUB             R3, R6, #4
CMP             R9, #0
STRLT           R8, [R3,#4]!
MOVS            R4, R4,LSR#3
BEQ             loc_13E0E4
STR             R8, [R3,#4]
SUBS            R4, R4, #1
STR             R8, [R3,#8]!
BNE             loc_13E0D4
LDR             R3, =0x5544
SUB             R4, R5, R12
SUB             R4, R4, #0x10
STRH            R3, [R12]
STR             R1, [R12,#8]
STR             R4, [R12,#4]
SUB             R3, R12, R6
STR             R1, [R12,#0xC]
ORR             R1, R1, R7,LSL#15
AND             R3, R3, #0x7F
BIC             R1, R1, #0x7F00
ORR             R1, R1, R3,LSL#8
STRH            R1, [R12,#2]
LDRH            R3, [R0,#0x10]
BIC             R1, R1, #0xFF
AND             R3, R3, #0xFF
ORR             R1, R1, R3
STRH            R1, [R12,#2]
LDR             R1, [R0,#0xC]
CMP             R1, #0
STR             R1, [R12,#8]
LDRNE           R3, [R1,#0xC]
LDREQ           R3, [R0,#8]
STRNE           R12, [R1,#0xC]
STREQ           R12, [R0,#8]
CMP             R3, #0
STR             R3, [R12,#0xC]
STRNE           R12, [R3,#8]
STREQ           R12, [R0,#0xC]
POP             {R4-R11}
MOV             R0, R2
BX              LR
