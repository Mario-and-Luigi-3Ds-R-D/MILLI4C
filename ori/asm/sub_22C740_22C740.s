PUSH            {R4-R6,LR}
BL              sub_14F198
ADD             R0, R0, #0x3F4
BL              sub_5A1E2C
LDR             R4, =off_6B7BEC
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
MOV             R5, #1
STR             R1, [R0,#0x10]
STRB            R5, [R0,#0x14]
ADD             R0, R0, #0x34 ; '4'
BL              sub_5A1E2C
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
STRB            R5, [R0,#0x14]
SUB             R0, R0, #0x400
SUB             R0, R0, #0x28 ; '('
ADD             R1, R0, #0x400
VLDR            S0, =0.0
ADD             R0, R0, #0x400
VSTR            S0, [R1,#0x64]
VSTR            S0, [R1,#0x68]
ADD             R0, R0, #0x6C ; 'l'
BL              sub_5A1E2C
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
SUB             R4, R0, #0x400
STRB            R5, [R0,#0x14]
SUB             R4, R4, #0x6C ; 'l'
ADD             R5, R0, #0x3C ; '<'
BL              sub_464168
MOV             R1, R0
MOV             R0, R5
BL              sub_1169CC
MOV             R5, #0
STR             R5, [R4,#0x4D8]
LDR             R1, =sub_14F198
MOV             R3, #3
MOV             R2, #0x3F4
ADD             R0, R4, #0x4E0
STR             R5, [R4,#0x4DC]
BLX             sub_1002F4
ADD             R0, R0, #0x800
ADD             R0, R0, #0x3F4
BL              sub_22B4F4
SUB             R0, R0, #0x1000
SUB             R0, R0, #0xD4
LDR             R2, =off_6C0770
ADD             R1, R0, #0x1800
ADD             R1, R1, #0xBC
STM             R1, {R2,R5}
POP             {R4-R6,PC}
