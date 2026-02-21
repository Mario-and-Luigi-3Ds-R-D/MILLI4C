PUSH            {R4-R10,LR}
ADD             R4, SP, #0x20+arg_4
MOV             R8, #2
MOV             R9, R1,LSL#9
LDM             R4, {R6,R7,R12}
MOV             R9, R9,LSR#9
LDR             R4, =dword_700750
LDR             LR, [SP,#0x20+arg_0]
CMP             R3, #0x10
LDR             R5, [R4,#(off_7007EC - 0x700750)]
LDR             R1, [R5,#0x20]
LDR             R10, [R5,#0x18]
RSB             R1, R1, R1,LSL#3
ADD             R1, R10, R1,LSL#2
STRB            R8, [R1]
ADD             R8, R1, #4
STM             R8, {R0,R2}
LDR             R0, [R1,#0xC]
MOV             R0, R0,LSR#23
MOV             R0, R0,LSL#23
ORR             R0, R0, R9
STR             R0, [R1,#0xC]
BICEQ           R0, R0, #0x1800000
BEQ             loc_130D90
CMP             R3, #0x18
BIC             R0, R0, #0x1800000
ORRNE           R0, R0, #0x1000000
STRNE           R0, [R1,#0xC]
ORREQ           R0, R0, #0x800000
BEQ             loc_130D90
LDR             R0, [R1,#0x18]
MOV             R2, R6,LSL#9
CMP             R12, #0x10
MOV             R2, R2,LSR#9
MOV             R0, R0,LSR#23
MOV             R0, R0,LSL#23
ORR             R0, R0, R2
STR             R0, [R1,#0x18]
STR             R7, [R1,#0x14]
BICEQ           R0, R0, #0x1800000
STR             LR, [R1,#0x10]
BEQ             loc_130D98
CMP             R12, #0x18
BIC             R0, R0, #0x1800000
ORRNE           R0, R0, #0x1000000
STRNE           R0, [R1,#0x18]
ORREQ           R0, R0, #0x800000
BEQ             loc_130D98
NOP
BL              sub_11A070
LDR             R0, [R5,#0x20]
ADD             R0, R0, #1
STR             R0, [R5,#0x20]
LDR             R0, [R4,#(dword_7007F0 - 0x700750)]
CMP             R0, R5
BNE             loc_130DAC
LDRB            R0, [R4,#(byte_700762 - 0x700750)]
CMP             R0, #0
BEQ             loc_130DAC
LDRB            R0, [R4,#(byte_700761 - 0x700750)]
CMP             R0, #0
BNE             loc_130DAC
B               loc_130DA0
STR             R0, [R1,#0xC]
B               loc_130D0C
STR             R0, [R1,#0x18]
B               loc_130D54
MOV             R0, #1
STRB            R0, [R4,#(byte_700761 - 0x700750)]
BL              sub_11F990
POP             {R4-R10,LR}
B               sub_11A080
