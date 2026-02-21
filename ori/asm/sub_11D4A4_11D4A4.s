PUSH            {R4-R7,LR}
CMP             R1, #0
MOV             R6, R0
MOV             R5, R2
VPUSH           {D8}
SUB             SP, SP, #0x14
MOV             R4, R3
VLDR            S16, [SP,#0x30+arg_8]
MOVNE           R7, R1
BNE             loc_11D4D4
BL              sub_11D858
MOV             R7, R0
MOV             R2, #0
MOV             R1, R4
MOV             R0, R5
BL              sub_11DAF8
CMP             R0, #0
NOP
BNE             loc_11D5B8
MOV             R2, #0
MOV             R1, R4
MOV             R0, R5
BL              sub_11BEBC
CMP             R0, #0
NOP
BNE             loc_11D5B8
LDR             R0, =0x7020
LDRH            R0, [R0,R6]
CMP             R0, #0
BEQ             loc_11D5B8
CMP             R5, #0x12C
MOV             R0, #0
MOVEQ           R0, #0x4000000
BEQ             loc_11D56C
BGT             loc_11D554
CMP             R5, #0x64 ; 'd'
MOVEQ           R0, #0x1000000
BEQ             loc_11D56C
CMP             R5, #0x65 ; 'e'
MOVEQ           R0, #0x2000000
BEQ             loc_11D56C
CMP             R5, #0xC8
MOVEQ           R0, #0x3000000
B               loc_11D56C
SUB             R1, R5, #0x100
SUBS            R1, R1, #0x2D ; '-'
MOVEQ           R0, #0x5000000
BEQ             loc_11D56C
CMP             R1, #1
MOVEQ           R0, #0x6000000
MOV             R2, #0
ORR             R1, R0, R4
STR             R2, [SP,#0x30+var_30]
STR             R2, [SP,#0x30+var_2C]; float
ADD             R3, SP, #0x30+arg_0
ADD             R2, SP, #0x30+arg_4
MOV             R0, R6
BL              sub_11D1FC
ADD             R12, SP, #0x30+arg_0
MOV             R2, R0; int
LDM             R12, {R1,R3}
ADD             R12, SP, #0x30+var_2C
STR             R4, [SP,#0x30+var_30]; int
MOV             R0, R6; int
STM             R12, {R1,R3}
MOV             R3, R5; int
VSTR            S16, [SP,#0x30+var_24]
MOV             R1, R7; int
BL              sub_1098B4
ADD             SP, SP, #0x14
MOV             R0, R7
VPOP            {D8}
POP             {R4-R7,PC}
