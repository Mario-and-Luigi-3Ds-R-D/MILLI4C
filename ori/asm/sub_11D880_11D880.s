PUSH            {R4-R6,LR}
MOV             R4, R0
BL              sub_1242D4
MOV             R5, #0
ADD             R1, R4, #0x44 ; 'D'
STM             R4, {R0,R1,R5}
MOV             R3, #2
STR             R5, [R4,#0xC]
STR             R5, [R4,#0x10]
STR             R5, [R4,#0x14]
LDR             R0, [R4,#0x18]
LDR             R1, =sub_124720
MOV             R2, #0x9C
BIC             R0, R0, #2
STR             R0, [R4,#0x18]
ADD             R0, R4, #0x44 ; 'D'
BLX             sub_1002F4
ADD             R0, R0, #0x138
BL              sub_12BA3C
ADD             R0, R0, #0x14
BL              sub_12BA3C
ADD             R0, R0, #0x14
BL              sub_124A48
ADD             R0, R0, #0x18
BL              sub_12B760
ADD             R0, R0, #8
BL              sub_12C980
LDR             R1, =sub_12C980
MOV             R3, #2
MOV             R2, #0x14
ADD             R0, R0, #0x14
BLX             sub_1002F4
ADD             R0, R0, #0x28 ; '('
BL              sub_12C980
MOV             R1, #0
ADD             R0, R0, #0x54 ; 'T'
BL              sub_12B604
VLDR            S0, =1.0
ADD             R0, R0, #0x2C ; ','
BL              sub_13631C
ADD             R0, R0, #0x18
BL              sub_12C980
ADD             R0, R0, #0x14
BL              sub_124A48
LDR             R1, =sub_134434
MOV             R3, #4
MOV             R2, #0x50 ; 'P'
ADD             R0, R0, #0x28 ; '('
BLX             sub_1002F4
LDR             R1, =sub_12B760
MOV             R3, #4
MOV             R2, #8
ADD             R0, R0, #0x140
BLX             sub_1002F4
LDR             R1, =sub_12B744
MOV             R3, #4
MOV             R2, #0x10
ADD             R0, R0, #0x20 ; ' '
BLX             sub_1002F4
SUB             R4, R0, #0x400
LDR             R0, [R0,#-0x430]
SUB             R4, R4, #0x34 ; '4'
MOV             R2, #0x138
MOV             R1, #0
BL              sub_12B588
MOV             R1, #3
MOV             R0, R1
MOV             R2, #0
STR             R5, [R4,#0x2D0]
SUB             R3, R1, R2
SUBS            R0, R0, #1
ADD             R3, R4, R3,LSL#2
ADD             R2, R2, #1
STR             R5, [R3,#0x2C0]
BNE             loc_11D994
ADD             R0, R4, #0x400
ADD             R2, R4, #0x400
ADD             R0, R0, #0x14
ADD             R2, R2, #0x34 ; '4'
CMP             R0, #0
BEQ             loc_11D9CC
STR             R5, [R0]
STR             R5, [R0,#4]
ADD             R0, R0, #8
CMP             R0, R2
BNE             loc_11D9BC
MOV             R0, R4
STR             R5, [R4,#0x474]
POP             {R4-R6,PC}
