PUSH            {R4-R12,LR}
MOV             R6, #0
SUBS            R8, R0, #0
MOV             R9, R1
BLE             locret_10B444
LDR             R7, =dword_700750
LDR             R11, =off_6D2428
MOV             R10, #0
LDR             R0, [R9,R6,LSL#2]
CMP             R0, #0
BEQ             loc_10B438
AND             R1, R0, #0x1F
MOV             R5, #0
ADD             R1, R7, R1,LSL#2
LDR             R4, [R1,#0xA4]
CMP             R4, #0
BEQ             loc_10B438
LDR             R1, [R4]
CMP             R0, R1
BLS             loc_10B3A0
MOV             R5, R4
LDR             R4, [R4,#0x18]
CMP             R4, #0
BNE             loc_10B380
B               loc_10B438
CMP             R4, #0
BEQ             loc_10B438
CMP             R1, R0
MOV             R2, R1
BNE             loc_10B438
LDR             R3, [R4,#4]
CMP             R3, #0
LDRNE           R12, [R11,#(off_6D242C - 0x6D2428)]
CMPNE           R12, #0
BEQ             loc_10B3D4
LDR             R0, [R4,#0x14]
MOV             R1, #0x104
BLX             R12
LDR             R0, [R9,R6,LSL#2]
LDR             R1, [R11,#(dword_6D2434 - 0x6D2428)]
CMP             R0, R1
STRCC           R0, [R11,#(dword_6D2434 - 0x6D2428)]
CMP             R5, #0
LDRNE           R0, [R4,#0x18]
STRNE           R0, [R5,#0x18]
BEQ             loc_10B448
LDR             R0, [R7,#(dword_700878 - 0x700750)]
CMP             R0, R4
STREQ           R10, [R7,#(dword_700878 - 0x700750)]
LDR             R0, [R7,#(dword_70087C - 0x700750)]
CMP             R0, R4
STREQ           R10, [R7,#(dword_70087C - 0x700750)]
LDR             R0, [R7,#(off_700880 - 0x700750)]
CMP             R0, R4
STREQ           R10, [R7,#(off_700880 - 0x700750)]
LDR             R12, [R11,#(off_6D242C - 0x6D2428)]
CMP             R12, #0
BEQ             loc_10B438
MOV             R3, R4
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
ADD             R6, R6, #1
CMP             R6, R8
BLT             loc_10B35C
POP             {R4-R12,PC}
AND             R0, R0, #0x1F
ADD             R0, R7, R0,LSL#2
LDR             R1, [R0,#0xA4]
LDR             R1, [R1,#0x18]
STR             R1, [R0,#0xA4]
B               loc_10B3F4
