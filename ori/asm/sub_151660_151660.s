PUSH            {R4-R10,LR}
ADD             R5, R0, #0x100
MOV             R7, #0
MOV             R6, R0
ADD             R0, R0, #0x5C ; '\'
VPUSH           {D8}
MOV             R2, #0x100
STRH            R7, [R5,#0x5C]
MOV             R1, R7
STRH            R7, [R5,#0x5E]
BL              sub_110BE4
LDR             R0, =off_6CE970
LDR             R1, =0x10646C
LDR             R0, [R0]
ADD             R0, R0, R1; loc_10646C
LDR             R0, [R0,#(loc_106470 - 0x10646C)]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
MOVNE           R8, R7
BEQ             loc_151740
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
ADD             R1, R6, #0x58 ; 'X'
BL              sub_5EC180
CMP             R0, #0
NOP
BEQ             loc_151734
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
LDRB            R0, [R0,#0x1D9]
AND             R0, R0, #2
MOVS            R0, R0,LSR#1
BEQ             loc_151704
LDRH            R0, [R5,#0x5E]
ADD             R0, R0, #1
STRH            R0, [R5,#0x5E]
LDRH            R1, [R5,#0x5C]
MOVS            R0, R4
SUBNE           R0, R4, #0x1AC
LDRH            R0, [R0,#0x10]
ADD             R1, R6, R1,LSL#2
STRH            R0, [R1,#0x5C]
LDRH            R0, [R5,#0x5C]
ADD             R0, R6, R0,LSL#2
STRB            R8, [R0,#0x5E]
LDRH            R0, [R5,#0x5C]
ADD             R0, R0, #1
STRH            R0, [R5,#0x5C]
LDR             R4, [R4,#8]
CMP             R4, R7
BNE             loc_1516BC
MOV             R5, #0
VLDR            S16, =0.0
MOV             R8, #1
MOV             R9, #0xFFFFFFFE
ADD             R0, R5, R5,LSL#2
ADD             R4, R6, R0,LSL#4
STRB            R7, [R4,#0x1E4]!
STRB            R7, [R4,#1]
STRB            R8, [R4,#2]
STRB            R9, [R4,#3]
STRH            R7, [R4,#4]
STR             R7, [R4,#8]
VSTR            S16, [R4,#0xC]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R5, R5, #1
LDR             R0, [R0,#8]
CMP             R5, #0x40 ; '@'
STR             R0, [R4,#0x18]
ADD             R4, R4, #0x10
STM             R4, {R1,R2}
BCC             loc_151750
STRB            R7, [R6,#0x1E0]
VPOP            {D8}
POP             {R4-R10,PC}
