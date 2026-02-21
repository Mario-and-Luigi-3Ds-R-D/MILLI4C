PUSH            {R4-R7,LR}
MOV             R5, R0
SUB             SP, SP, #0x14
LDRB            R0, [R0,#0xFD]
LDR             R7, =off_6CE970
LDR             R6, [R2,#4]
CMP             R0, #2
LDR             R0, [R7]
BCC             loc_1CE9F0
LDR             R1, =0x1215CC
MOV             R2, #0
MOV             R3, #0x100
ADD             R4, R0, R1; loc_1215CC
MOV             R1, R2
MOV             R0, R4
BL              sub_11DCDC
B               loc_1CEA14
LDR             R1, =0x1214C8
ADD             R4, R0, R1; loc_1214C8
LDRB            R0, [R5,#0xFE]
BL              sub_47FC0C
LDRB            R1, [R0,#2]
MOV             R3, #0x100
MOV             R2, #0
MOV             R0, R4
BL              sub_11DCDC
MOV             R0, #0xFFFFFFFF
MOV             R2, SP
REV             R0, R0
MOV             R1, #0
STR             R0, [SP,#0x28+var_28]
MOV             R0, R4
BL              sub_12C9C4
MOV             R0, #0
MOV             R2, SP
REV             R0, R0
MOV             R1, #1
STR             R0, [SP,#0x28+var_28]
MOV             R0, R4
BL              sub_12C9C4
LDR             R0, [R7]
ADD             R1, R4, #0x20 ; ' '
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x550
VLDM            R0, {S0-S7}
VSTM            R1, {S0-S7}
ADD             R1, R0, #0x20 ; ' '
LDR             R0, [R0,#(off_10C57C - 0x10C550)]
LDM             R1, {R1-R3}
STR             R0, [R4,#0x4C]
ADD             R0, R4, #0x40 ; '@'
STM             R0, {R1-R3}
MOV             R2, #0
LDR             R0, [R5]
ADD             R1, SP, #0x28+var_24
LDR             R3, [R0,#0x24]
MOV             R0, R5
BLX             R3
LDR             R0, =flt_6E2A58
VLDR            S0, [R0,#(flt_6E2B2C - 0x6E2A58)]
ADD             R0, R4, #0x20 ; ' '
MOV             R1, R0
BL              sub_142014
LDR             R1, [SP,#0x28+var_24]
MOV             R0, R4
STR             R1, [R4,#0x2C]
LDR             R1, [SP,#0x28+var_20]
STR             R1, [R4,#0x3C]
LDR             R1, [SP,#0x28+var_1C]
STR             R1, [R4,#0x4C]
LDR             R1, [R5,#0x100]
BL              sub_592F08
MOV             R1, R6
MOV             R0, R4
BL              sub_12CA08
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
