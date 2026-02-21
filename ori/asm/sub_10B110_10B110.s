PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R6, R1
LDR             R0, =dword_700750
LDR             R4, [R0,#(off_7007EC - 0x700750)]
CMP             R4, #0
BEQ             locret_10B1E0
LDR             R3, [R4,#4]
LDR             R7, =off_6D2428
LDR             R8, =0x105
CMP             R3, #0
LDRNE           R12, [R7,#(off_6D242C - 0x6D2428)]
CMPNE           R12, #0
BEQ             loc_10B158
LDR             R2, [R4]
MOV             R1, R8
MOV             R0, #0x10000
BLX             R12
LDR             R12, [R7]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_10B180
RSB             R0, R6, R6,LSL#3
LDR             R2, [R4]
ADD             R3, R5, R0,LSL#2
MOV             R1, R8
MOV             R0, #0x10000
BLX             R12
MOV             R2, #0
STR             R5, [R4,#8]
STR             R2, [R4,#0xC]
STR             R2, [R4,#0x20]
STR             R2, [R4,#0x10]
STR             R2, [R4,#0x28]
STR             R2, [R4,#0x24]
STR             R2, [R4,#0x34]
STR             R0, [R4,#4]
ADD             R3, R0, R5
ADD             R1, R4, #0x18
RSB             R0, R6, R6,LSL#3
STR             R2, [R4,#0x30]
STM             R1, {R3,R6}
MOV             R1, R0,LSL#2
MOV             R0, R3
BL              sub_2FFE8C
LDR             R1, =dword_6D2418
LDR             R0, [R4,#4]
STR             R0, [R1]
LDR             R1, [R4,#8]
ADD             R0, R0, R1
LDR             R1, =dword_6D241C
STR             R0, [R1]
POP             {R4-R8,PC}
