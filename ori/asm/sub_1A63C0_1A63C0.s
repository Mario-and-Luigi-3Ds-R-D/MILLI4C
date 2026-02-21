PUSH            {R4-R7,LR}
MOV             R5, R0
SUB             SP, SP, #0xC
LDR             R0, [R0,#0x10]
MOV             R1, #0
MOV             R3, #0x30000
MOV             R2, #0x20000
LDR             R0, [R0,#4]
STR             R1, [SP,#0x20+var_20]
STR             R1, [SP,#0x20+var_1C]
LDR             R1, =0x41016
BL              sub_57162C
LDR             R0, [R5,#0x10]
LDR             R1, =0xC005B
MOV             R3, #0
MOV             R2, #0x20000
LDR             R0, [R0,#8]
BL              sub_572670
LDR             R0, [R5,#0x10]
LDR             R1, =0xC0075
MOV             R3, #0
MOV             R2, #0x20000
LDR             R0, [R0,#0xC]
BL              sub_572670
LDR             R0, [R5,#0x10]
LDR             R1, =0xC005D
MOV             R3, #0
MOV             R2, #0x10000
LDR             R0, [R0,#0x10]
BL              sub_572670
LDR             R0, [R5,#0x10]
LDR             R6, =off_6CE970
LDR             R7, =sub_10640C
ADD             R4, R0, #4
LDR             R0, [R6]
LDR             R1, [R4]
ADD             R0, R0, R7; sub_10640C
BL              sub_1CF9FC
LDR             R0, [R5,#0x10]
ADD             R4, R4, #4
ADD             R0, R0, #0x14
CMP             R0, R4
BNE             loc_1A6448
LDR             R0, [R6]
BL              sub_1A1EB8
LDR             R0, [R6]
NOP
BL              sub_1A00A4
LDR             R0, [R6]
ADD             SP, SP, #0xC
POP             {R4-R7,LR}
B               sub_1A5048
