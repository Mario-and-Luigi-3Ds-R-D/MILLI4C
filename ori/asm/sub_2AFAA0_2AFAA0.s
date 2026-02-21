MOV             R2, #1
NOP
PUSH            {R4-R10,LR}
SUB             SP, SP, #0x20; int
ADD             R4, R0, #0x154
MOV             R10, R2
MOV             R2, #0
STR             R2, [R0,#0x16C]
MOV             R6, R0
MOV             R8, R1
LDR             R0, [R0,#0xE0]
LDR             R1, [R4,#0xBC]
MOV             R3, R2
BL              sub_59C660
LDR             R0, [R4,#0xBC]
ADD             R1, R4, #4
ADD             R2, R4, #0x6C ; 'l'
LDR             R0, [R0,#0xA4]
ADD             R4, R0, #0x170
LDR             R3, [R0,#0x16C]
VLDR            S0, [R0,#0x168]
VLDM            R4, {S1-S2}
VSTR            S0, [R2]
STR             R3, [R2,#4]
ADD             R3, R2, #8
VSTM            R3, {S1-S2}
LDR             R3, [R0,#0x1D0]
STR             R3, [R2,#0x10]
LDR             R3, [R0,#0x1D4]
STR             R3, [R2,#0x14]
LDR             R3, [R0,#0x1E0]
STR             R3, [R2,#0x18]
LDR             R3, [R0,#0x1E4]
STR             R3, [R2,#0x1C]
ADD             R2, R0, #0x148
VLDM            R2, {S0-S7}
ADD             R2, R1, #0x88
VSTM            R2, {S0-S7}
ADD             R2, R0, #0x168
LDR             R0, [R0,#0x174]
LDM             R2, {R2,R3,R12}
STR             R0, [R1,#0xB4]
ADD             R1, R1, #0xA8
MOV             R0, #0
STM             R1, {R2,R3,R12}
ADD             R1, R6, #0x158
LDR             R2, [R6,#0x210]
LDR             R12, [R6,#0xE0]
LDR             R3, [R2,#0xA4]; int
LDR             R4, [R12,#0x30]
LDR             R12, [R12,#0x2C]
STR             R0, [SP,#0x40+var_38]; int
ADD             R2, SP, #0x40+var_34
STMEA           SP, {R1,R2}
MOV             R2, R4; int
MOV             R1, R12; int
ADD             R0, SP, #0x40+var_30; int
BL              sub_63A9DC
LDR             R9, =off_6D1648
SUB             R0, R8, #0x400
SUBS            R0, R0, #1
LDR             R1, [R9]
LDR             R2, [R1,#0xA0]
ADD             R2, R2, #0x180
STR             R2, [R6,#0x17C]
LDR             R0, [R1,#0xA0]
MOVEQ           R2, #1
MOVNE           R2, #0
ADD             R1, R6, #0x154
BL              sub_32F6BC
LDR             R0, =0x1416C
LDR             R7, [R0,R6]
CMP             R7, #0
BEQ             loc_2AFC84
LDR             R0, [R6]
MOV             R2, #0
MOV             R1, R7
LDR             R3, [R0,#0x130]
MOV             R0, R6
BLX             R3
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #0
BEQ             loc_2AFC10
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #1
BNE             loc_2AFC78
LDR             R0, [R7]
LDR             R1, [R0,#0x3C4]
MOV             R0, R7
BLX             R1
MOV             R5, R0
LDR             R0, [R7]
MOV             R4, #0
LDR             R1, [R0,#0x3CC]
MOV             R0, R7
BLX             R1
CMP             R0, #0
BLS             loc_2AFC78
LDR             R0, [R6]
LDR             R1, [R5]
MOV             R2, #0
LDR             R3, [R0,#0x130]
MOV             R0, R6
BLX             R3
LDR             R0, [R7]
ADD             R5, R5, #4
ADD             R4, R4, #1
LDR             R1, [R0,#0x3CC]
MOV             R0, R7
BLX             R1
CMP             R0, R4
BHI             loc_2AFC40
LDR             R7, [R7,#8]
CMP             R7, #0
BNE             loc_2AFBC8
LDR             R0, =0x13B68
LDR             R0, [R0,R6]
CMP             R0, #0
SUBSNE          R4, R0, #0x104
BEQ             loc_2AFCD4
LDRB            R0, [R4,#0x110]
CMP             R0, #0
BEQ             loc_2AFCC4
LDR             R0, [R4,#0x118]
MOV             R3, #0xFF
MOV             R2, #2
STR             R0, [SP,#0x40+var_40]
LDR             R12, [R4,#0x114]
MOV             R1, R4
ADD             R0, R6, #0x158
BLX             R12
LDR             R0, [R4,#0x10C]
CMP             R0, #0
SUBSNE          R4, R0, #0x104
BNE             loc_2AFC98
LDR             R0, [R9]
ADD             R0, R0, #0x4000
LDRB            R0, [R0,#0x228]
CMP             R0, #3
BNE             loc_2AFCFC
ADR             R0, aDraw; "draw"
BL              sub_45F46C
MOV             R1, R0
MOV             R0, R8
BLX             R1
CMP             R10, #0
ADDNE           R0, R6, #0x158
BLNE            sub_61F9CC
ADD             SP, SP, #0x20 ; ' '
POP             {R4-R10,PC}
