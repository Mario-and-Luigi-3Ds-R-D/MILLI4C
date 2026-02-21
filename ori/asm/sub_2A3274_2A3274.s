PUSH            {R4-R9,LR}
MOV             R5, R0
SUB             SP, SP, #0xC
MOV             R9, #0x300
LDR             R7, =off_6CE970
LDR             R6, [R2,#4]
MOV             R3, #0
MOV             R2, #1
LDR             R0, [R7]
STR             R9, [SP,#0x28+var_28]
ADD             R4, R0, #0x120000
ADD             R4, R4, #0x12C0
ADD             R1, R4, #0x20 ; ' '
MOV             R0, R5
BL              sub_5C4A88
LDR             R0, [R5,#0x9C]
ADD             R2, SP, #0x28+var_24
MOV             R1, #0
STR             R0, [SP,#0x28+var_24]
MOV             R0, R4
BL              sub_12C9C4
MOV             R0, #0
ADD             R2, SP, #0x28+var_24
REV             R0, R0
MOV             R1, #1
STR             R0, [SP,#0x28+var_24]
MOV             R0, R4
BL              sub_12C9C4
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x24 ; '$'
MOV             R0, R4
BL              sub_11DCDC
MOV             R1, R6
MOV             R0, R4
BL              sub_12CA08
LDR             R0, [R7]
LDR             R1, =0x1214C8
MOV             R3, #0
MOV             R2, #1
ADD             R4, R0, R1; loc_1214C8
LDRB            R0, [R4,#(loc_121534+3 - 0x1214C8)]
AND             R1, R0, #2
AND             R8, R0, #1
MOV             R7, R1,LSR#1
MOV             R1, #3
STRB            R1, [R4,#(loc_121534+3 - 0x1214C8)]
ADD             R1, R4, #0x20 ; ' '
MOV             R0, R5
STR             R9, [SP,#0x28+var_28]
BL              sub_5C4A88
VLDR            S1, [R4,#(loc_1214F4 - 0x1214C8)]
VLDR            S2, =-50.0
VLDR            S0, =-11.0
ADD             R2, SP, #0x28+var_24
VADD.F32        S1, S1, S2
MOV             R1, #0
VSTR            S1, [R4,#(loc_1214F4 - 0x1214C8)]
VLDR            S1, [R4,#(loc_121504 - 0x1214C8)]
VADD.F32        S0, S1, S0
VSTR            S0, [R4,#(loc_121504 - 0x1214C8)]
LDR             R0, [R5,#0x9C]
STR             R0, [SP,#0x28+var_24]
MOV             R0, R4
BL              sub_12C9C4
MOV             R0, #0
ADD             R2, SP, #0x28+var_24
REV             R0, R0
MOV             R1, #1
STR             R0, [SP,#0x28+var_24]
MOV             R0, R4
BL              sub_12C9C4
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
MOV             R0, R4
BL              sub_11DCDC
MOV             R1, R6
MOV             R0, R4
BL              sub_12CA08
CMP             R8, #0
MOVEQ           R0, #0
BEQ             loc_2A33D0
CMP             R7, #0
MOVNE           R0, #2
MOVEQ           R0, #0
ORR             R0, R0, #1
STRB            R0, [R4,#(loc_121534+3 - 0x1214C8)]
ADD             R0, R5, #0x28 ; '('
VLDR            S0, =52.0
VLDR            S1, [R5,#0x24]
VLDR            S2, =0.0
LDR             R3, [R5,#0x224]
VADD.F32        S1, S1, S0
VLDM            R0, {S3-S4}
AND             R2, R3, #4
MOV             R1, #7
ORR             R2, R3, R2,LSL#3
VADD.F32        S0, S3, S2
VADD.F32        S2, S4, S2
STR             R2, [R5,#0x224]
ADD             R4, R5, #0x190
VSTR            S1, [R5,#0x218]
VSTR            S0, [R5,#0x21C]
VSTR            S2, [R5,#0x220]
LDR             R0, [R5,#0x194]
BICS            R1, R1, R0
BNE             loc_2A3450
TST             R0, #0x80
BEQ             loc_2A3444
MOV             R0, R4
BL              sub_5B7438
MOV             R0, R6
BL              sub_127FD4
MOV             R0, R6
BL              sub_128004
MOV             R1, R6
MOV             R0, R4
BL              sub_5B5828
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
