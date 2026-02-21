PUSH            {R4-R12,LR}
MOV             R6, #0
SUBS            R7, R0, #0
MOV             R9, R1
BLE             locret_10B30C
LDR             R8, =dword_700750
LDR             R10, =off_6D2428
MOV             R11, #0
LDR             R0, [R9,R6,LSL#2]
CMP             R0, #0
BEQ             loc_10B300
AND             R1, R0, #0x1F
MOV             R5, #0
ADD             R1, R8, R1,LSL#2
LDR             R4, [R1,#0x1C]
CMP             R4, #0
BEQ             loc_10B300
LDR             R1, [R4]
CMP             R0, R1
BLS             loc_10B25C
MOV             R5, R4
LDR             R4, [R4,#0x40]
CMP             R4, #0
BNE             loc_10B23C
B               loc_10B300
CMP             R4, #0
BEQ             loc_10B300
CMP             R1, R0
BNE             loc_10B300
LDR             R0, [R8,#(dword_7007F0 - 0x700750)]
CMP             R0, R4
STREQ           R11, [R8,#(dword_7007F0 - 0x700750)]
STRBEQ          R11, [R8,#(byte_700762 - 0x700750)]
LDR             R0, [R8,#(off_7007EC - 0x700750)]
CMP             R0, R4
BNE             loc_10B29C
LDR             R0, =dword_6D241C
STR             R11, [R0]
LDR             R0, =dword_6D2418
STR             R11, [R0]
STR             R11, [R8,#(off_7007EC - 0x700750)]
LDR             R3, [R4,#4]
CMP             R3, #0
LDRNE           R12, [R10,#(off_6D242C - 0x6D2428)]
CMPNE           R12, #0
BEQ             loc_10B2C0
LDR             R2, [R4]
LDR             R1, =0x105
MOV             R0, #0x10000
BLX             R12
LDR             R0, [R9,R6,LSL#2]
LDR             R1, [R10,#(dword_6D2430 - 0x6D2428)]
CMP             R0, R1
STRCC           R0, [R10,#(dword_6D2430 - 0x6D2428)]
CMP             R5, #0
LDRNE           R0, [R4,#0x40]
STRNE           R0, [R5,#0x40]
BEQ             loc_10B310
LDR             R12, [R10,#(off_6D242C - 0x6D2428)]
CMP             R12, #0
BEQ             loc_10B300
MOV             R3, R4
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
ADD             R6, R6, #1
CMP             R6, R7
BLT             loc_10B218
POP             {R4-R12,PC}
AND             R0, R0, #0x1F
ADD             R0, R8, R0,LSL#2
LDR             R1, [R0,#0x1C]
LDR             R1, [R1,#0x40]
STR             R1, [R0,#0x1C]
B               loc_10B2E0
