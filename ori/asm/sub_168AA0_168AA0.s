PUSH            {R4-R6,LR}
BL              sub_193EC0
LDR             R1, =off_6ADDA0
MOV             R3, #2
MOV             R2, #0x8C
STR             R1, [R0]
ADD             R0, R0, #0x15000
LDR             R1, =sub_2A8548
ADD             R0, R0, #0x24 ; '$'
BLX             sub_1002F4
ADD             R0, R0, #0x118
BL              sub_19DBE4
ADD             R0, R0, #0x1000
ADD             R0, R0, #0x1FC
BL              sub_21F414
ADD             R0, R0, #0x680
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
ADD             R0, R0, #0x34 ; '4'
BL              sub_59CE14
LDR             R1, =0x16AE0
SUB             R0, R0, #0x16800
SUB             R0, R0, #0x254
MOV             R4, #0
ADD             R2, R1, #4
STRB            R4, [R1,R0]
STR             R4, [R2,R0]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_1E3460
LDR             R1, =0x16BBC
LDR             R2, =0xF0001FFB
SUB             R0, R0, #0x16800
SUB             R0, R0, #0x2E8
VLDR            S0, =1.0
STR             R2, [R1,R0]
ADD             R1, R0, #0x14000
ADD             R1, R1, #0x2BC0
VSTR            S0, [R1]
VSTR            S0, [R1,#4]
LDR             R1, =0x16BC8
STR             R2, [R1,R0]
ADD             R1, R0, #0x16800
ADD             R1, R1, #0x3CC
VSTR            S0, [R1]
VSTR            S0, [R1,#4]
LDR             R1, =0x16BD4
STR             R2, [R1,R0]
ADD             R1, R0, #0x16800
ADD             R1, R1, #0x3D8
VSTR            S0, [R1]
VSTR            S0, [R1,#4]
LDR             R1, =0x16BE0
STR             R2, [R1,R0]
ADD             R1, R0, #0x16800
ADD             R1, R1, #0x3E4
VSTR            S0, [R1]
VSTR            S0, [R1,#4]
LDR             R1, =0x16BEC
ADD             R2, R1, #0x104
ADD             R3, R1, #0x108
STR             R4, [R1,R0]
ADD             R12, R1, #0x10C
STR             R4, [R2,R0]
STR             R4, [R3,R0]
STR             R4, [R12,R0]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x6D00
BL              sub_194BD0
ADD             R0, R0, #0x3B8
BL              sub_23463C
LDR             R1, =0x17AC8
SUB             R0, R0, #0x17000
SUB             R0, R0, #0xB8
MOV             R2, #6
STRB            R2, [R1,R0]
POP             {R4-R6,PC}
