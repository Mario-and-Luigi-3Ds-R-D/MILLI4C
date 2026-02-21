PUSH            {R4-R8,LR}
LDR             R6, =dword_700750
LDR             R0, =dword_6D2418
LDR             R2, =dword_6D241C
LDR             R4, [R6,#(off_7007EC - 0x700750)]
LDR             R1, [R0]
LDR             R3, [R4,#4]
SUB             R3, R1, R3
TST             R3, #8
ADDNE           R1, R3, #0x18
STR             R3, [R4,#0xC]
STRNE           R1, [R4,#0xC]
BNE             loc_116544
ADD             R3, R3, #0x20 ; ' '
STR             R3, [R4,#0xC]
LDR             R3, [R2]
CMP             R1, R3
BCS             loc_116544
LDR             R5, =0x8025E
MOV             R12, #0
ADD             R7, R1, #8
STR             R5, [R1,#4]
STR             R12, [R1]
STR             R7, [R0]
LDR             R1, [R2]
LDR             R3, [R0]
MOV             R7, #1
CMP             R3, R1
BCS             loc_116568
LDR             R12, =0xF0111
ADD             R5, R3, #8
STM             R3, {R7,R12}
STR             R5, [R0]
LDR             R3, [R0]
LDR             R1, [R2]
CMP             R3, R1
BCS             loc_116588
LDR             R12, =0xF0110
ADD             R5, R3, #8
STM             R3, {R7,R12}
STR             R5, [R0]
LDR             R1, [R2]
LDR             R2, [R0]
CMP             R2, R1
BCS             loc_1165AC
LDR             R3, =0x12345678
LDR             R12, =0xF0010
ADD             R5, R2, #8
STM             R2, {R3,R12}
STR             R5, [R0]
LDR             R1, [R4,#0x20]
LDR             R0, [R4,#0x18]
RSB             R1, R1, R1,LSL#3
ADD             R5, R0, R1,LSL#2
STRB            R7, [R5]
LDR             R0, [R4,#4]
LDR             R1, [R4,#0x14]
ADD             R0, R0, R1
STR             R0, [R5,#4]
LDR             R0, [R4,#0xC]
LDR             R1, [R4,#0x14]
SUB             R0, R0, R1
STR             R0, [R5,#8]
LDR             R0, [R4,#0x34]
CMP             R0, #0
BEQ             loc_1165F8
MOV             R1, R5
MOV             R0, R4
BL              sub_11F938
LDR             R0, [R5,#0xC]
BIC             R0, R0, #2
STR             R0, [R5,#0xC]
LDRB            R1, [R4,#0x3D]
CMP             R1, #0
ORRNE           R0, R0, #1
STRNE           R0, [R5,#0xC]
LDR             R0, [R4,#0xC]
STR             R0, [R4,#0x14]
BL              sub_11A070
LDR             R0, [R4,#0x20]
ADD             R0, R0, #1
STR             R0, [R4,#0x20]
LDR             R0, [R6,#(dword_7007F0 - 0x700750)]
CMP             R0, R4
BNE             loc_116654
LDRB            R0, [R6,#(byte_700762 - 0x700750)]
CMP             R0, #0
BEQ             loc_116654
LDRB            R0, [R6,#(byte_700761 - 0x700750)]
CMP             R0, #0
STRBEQ          R7, [R6,#(byte_700761 - 0x700750)]
BLEQ            sub_11F990
POP             {R4-R8,LR}
B               sub_11A080
