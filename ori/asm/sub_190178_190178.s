PUSH            {R4-R6,LR}
MOV             R4, R0
BL              sub_2B0378
LDR             R0, =0x14B6C
LDR             R0, [R0,R4]
CMP             R0, #0
BEQ             loc_1901C4
MOV             R2, #0
MOV             R1, R2
MOV             R12, #1
LDRB            R3, [R0]
TST             R3, #2
ORREQ           R2, R2, R12,LSL R1
TST             R3, #1
ADDEQ           R1, R1, #1
ADDEQ           R0, R0, #0x94
BEQ             loc_1901A0
LDR             R0, =0x14FF8
STR             R2, [R0,R4]
LDR             R0, =0x13C24
LDR             R0, [R0,R4]
LDR             R1, [R0]
LDR             R1, [R1,#0x20]
BLX             R1
ADD             R4, R4, #0x15000
LDR             R0, [R4,#0x18]
LDRB            R1, [R0,#4]
CMP             R1, #0
BEQ             locret_190248
LDRB            R0, [R0,#6]
CMP             R0, #0xFF
BNE             locret_190248
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x3FC
BL              sub_10A358
MOVS            R5, R0
MOVEQ           R1, #0
BEQ             loc_190238
MOV             R1, #0x3FC
BL              sub_2FFE8C
LDR             R1, =sub_3CF730
MOV             R3, #5
MOV             R2, #0xC4
ADD             R0, R5, #4
BLX             sub_1002F4
SUB             R1, R0, #4
STR             R1, [R4,#0x1C]
LDR             R0, [R4,#0x18]
POP             {R4-R6,LR}
B               sub_59600C
POP             {R4-R6,PC}
