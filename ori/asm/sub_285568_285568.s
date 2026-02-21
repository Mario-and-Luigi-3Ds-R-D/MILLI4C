PUSH            {R4-R10,LR}
SUB             SP, SP, #0x10
MOV             R4, R1
MOV             R8, R2
LDR             R7, [SP,#0x30+arg_0]
MOV             R1, #1
STRB            R7, [R0,#1]
STR             R3, [R0,#4]!
ADD             R0, R0, #4
BL              sub_28B13C
ADD             R0, R0, #0x90
BL              sub_14F198
SUB             R0, R0, #0x98
STR             R4, [R0,#0x48C]!
ADD             R0, R0, #0x34 ; '4'
BL              sub_5A1E2C
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2F28
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
LDR             R10, =off_6CE970
MOV             R9, #1
STR             R1, [R0,#0x10]
MOV             R1, #0
STRB            R9, [R0,#0x14]
SUB             R4, R0, #0x4C0
STRB            R1, [R0,#0x40]
LDR             R0, [R10]
STR             R1, [SP,#0x30+var_30]
LDR             R1, =0x5DA
MOV             R3, R9
MOV             R2, R8
BL              sub_52AEA8
CMP             R7, #5; switch 5 cases
LDRCC           PC, [PC,R7,LSL#2]; switch jump
B               def_285600; jumptable 00285600 default case
DCD loc_28561C; jump table for switch statement
LDR             R0, [R4,#4]; jumptable 00285600 case 0
MOV             R6, #0
LDR             R5, [R0]
B               def_285600; jumptable 00285600 default case
LDR             R0, [R4,#4]; jumptable 00285600 case 1
MOV             R6, #4
LDR             R5, [R0,#4]
B               def_285600; jumptable 00285600 default case
LDR             R0, [R4,#4]; jumptable 00285600 case 2
MOV             R6, #1
LDR             R5, [R0,#8]
B               def_285600; jumptable 00285600 default case
LDR             R0, [R4,#4]; jumptable 00285600 case 3
MOV             R6, #2
LDR             R5, [R0,#0xC]
B               def_285600; jumptable 00285600 default case
LDR             R0, [R4,#4]; jumptable 00285600 case 4
MOV             R6, #5
LDR             R5, [R0,#0x10]
MOV             R2, #0; jumptable 00285600 default case
ADD             R0, R4, #0x98
MOV             R1, R5
BL              sub_14E6E0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, R6
ADD             R0, R4, #0x98
BL              sub_14C548
MOV             R1, #1
ADD             R0, R4, #0x98
BL              sub_14C450
MOV             R1, R8
ADD             R0, R4, #0x98
STRB            R9, [R4,#0x189]
BL              sub_14E984
MOV             R1, #0
ADD             R0, R4, #0x98
BL              sub_14C3E8
LDR             R0, [R10]
LDR             R12, =0xFFE683CC
LDR             R2, =0x30217
MOV             R3, #0
ADD             R1, R4, #0x98
SUB             R0, R0, R12
BL              sub_503720
LDR             R1, [R4,#4]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x34 ; '4'
VLDR            S1, =0.0
LDR             R1, [R1,#0x3C]
LDR             R1, [R1,#0xBC]
VSTR            S1, [R0]
STR             R1, [R4,#0x438]
STRB            R9, [R4]
LDR             R0, [R4,#4]
VLDR            S2, [R4,#0xC0]
ADD             R1, SP, #0x30+var_2C
LDR             R0, [R0,#0x3C]
VLDR            S0, [R0,#0xE4]
VSUB.F32        S0, S0, S2
VLDR            S2, =1.0
VSTM            R1, {S1-S2}
VSTR            S1, [SP,#0x30+var_24]
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x3C]
VLDR            S2, [R0,#0x384]
VLDR            S1, [R0,#0x388]
ADD             R0, R4, #0x274
BL              sub_5A3264
LDR             R0, [R4,#4]
ADD             R2, R4, #0x2C ; ','
MOV             R1, R8
LDR             R0, [R0,#0x3C]
ADD             R0, R0, #0x32C
VLDM            R0, {S0-S5}
ADD             R0, R4, #8
VSTM            R2, {S0-S5}
BL              sub_28AFDC
ADD             SP, SP, #0x10
MOV             R0, R4
POP             {R4-R10,PC}
