PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R3, #0x800000
LDR             R1, =dword_6ED9B8
MOV             R2, #0
MOV             R0, #8
BL              sub_10A358
CMP             R0, #0
BLNE            sub_1C92DC
STR             R0, [R4,#0xC4]
LDR             R1, =dword_6ED9B8
LDR             R0, =0x15220
MOV             R3, #0x800000
MOV             R2, #0
BL              sub_10A358
LDR             R5, =off_6B7BEC
CMP             R0, #0
MOV             R6, #0
MOV             R7, #1
BEQ             loc_1CAF88
BL              sub_193EC0
LDR             R1, =off_6BA74C
MOV             R3, #2
MOV             R2, #0x8C
STR             R1, [R0]
ADD             R0, R0, #0x15000
LDR             R1, =sub_2A8548
ADD             R0, R0, #0x24 ; '$'
BLX             sub_1002F4
ADD             R0, R0, #0x118
BL              sub_59CE14
LDR             R1, =0x151C4
SUB             R0, R0, #0x15000
SUB             R0, R0, #0x13C
STR             R6, [R1,R0]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x1C8
STRB            R6, [R0],#4
BL              sub_5A1E2C
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R5, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
STRB            R7, [R0,#0x14]
SUB             R0, R0, #0x15000
SUB             R0, R0, #0x1CC
ADD             R1, R0, #0x15000
ADD             R0, R0, #0x15000
STR             R6, [R1,#0x200]
STRB            R6, [R1,#0x204]
STRB            R7, [R1,#0x205]
LDR             R1, =sub_3E2A68
MOV             R3, #2
MOV             R2, #8
ADD             R0, R0, #0x208
BLX             sub_1002F4
SUB             R0, R0, #0x15000
SUB             R0, R0, #0x208
VLDR            S0, =4.0
ADD             R1, R0, #0x14000
VSTR            S0, [R1,#0x178]
VSTR            S0, [R1,#0x17C]
STR             R0, [R4,#0xBC]
LDR             R1, =dword_6ED9B8
LDR             R0, =0x14790
MOV             R3, #0x800000
MOV             R2, #0
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1CB008
BL              sub_18A29C
LDR             R1, =off_6BA4B0
STR             R1, [R0]
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x58 ; 'X'
STRB            R6, [R0],#4
BL              sub_5A1E2C
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R5, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
STRB            R7, [R0,#0x14]
LDR             R1, =sub_1E9F04
ADD             R0, R0, #0x38 ; '8'
MOV             R3, #2
MOV             R2, #0x17C
BLX             sub_1002F4
SUB             R0, R0, #0x14400
SUB             R0, R0, #0x94
STR             R0, [R4,#0xC0]
LDR             R0, [R4]
LDR             R1, [R0,#0x1C]
MOV             R0, R4
POP             {R4-R8,LR}
BX              R1
