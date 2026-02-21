PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R7, #0
LDR             R0, =off_6ACEAC
MOV             R4, R7
STR             R0, [R5]
ADD             R1, R5, R4,LSL#2
LDR             R0, [R1,#0x160]
CMP             R0, #0
ADDNE           R6, R1, #0x160
BEQ             loc_153E68
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
ADD             R4, R4, #1
CMP             R4, #0x20 ; ' '
STR             R7, [R6]
BCC             loc_153E38
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52D210
ADD             R0, R5, #0x1400
ADD             R0, R0, #0x1E4
BL              sub_14F3EC
MOV             R4, R0
LDR             R1, =sub_33A8E0
MOV             R3, #0x40 ; '@'
MOV             R2, #0x50 ; 'P'
SUB             R0, R0, #0x1400
BLX             sub_1009D8
LDR             R1, =off_6C075C
SUB             R4, R4, #0x1400
SUB             R4, R4, #0x1A8
STR             R1, [R4]
LDR             R0, [R4,#4]
CMP             R0, #0
STRNE           R7, [R0,#0x184]
STRNE           R7, [R4,#4]
STR             R1, [R4,#-0x18]!
LDR             R0, [R4,#4]
CMP             R0, #0
STRNE           R7, [R0,#0x184]
STRNE           R7, [R4,#4]
STR             R1, [R4,#-8]!
LDR             R0, [R4,#4]
CMP             R0, #0
STRNE           R7, [R0,#0x184]
SUB             R0, R4, #0x1C
STRNE           R7, [R4,#4]
POP             {R4-R8,PC}
