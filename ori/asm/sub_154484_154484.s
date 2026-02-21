PUSH            {R4-R11,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #4
LDR             R0, [R0,#8]
LDR             R5, [R0,#0x18]
ADD             R0, R5, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
LDREQ           R10, =off_6CE970
LDREQ           R6, [R10]
BNE             loc_154630
BL              sub_47FFCC
CMP             R0, #0
BNE             loc_1544D0
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R6]
CMP             R0, #0
BEQ             loc_1544DC
LDR             R0, [R10]
MOV             R1, #0
BL              sub_52A4AC
MOV             R0, R5
BL              sub_14D83C
MOV             R7, #0
STR             R7, [SP,#0x30+var_30]
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R2, R7
MOV             R1, R7
BL              sub_4E3CA0
LDR             R6, [R10]
NOP
BL              sub_47FFCC
LDR             R8, =unk_6E1FD0
LDR             R11, =0x1064D8
LDR             R5, =off_63FF1C
CMP             R0, #0
MOV             R9, #1
BNE             loc_154594
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R6]
CMP             R0, #0
BNE             loc_154594
LDR             R0, [R10]
MOV             R3, #0
MOV             R2, R3
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x6000
LDR             R1, [R0,#0x3BC]
MOV             R0, #0x20 ; ' '
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_154584
ADD             R6, R4, #0xBF0
VLDR            S16, [R8,#(flt_6E2314 - 0x6E1FD0)]
MOV             R2, R6
MOV             R1, #1
BL              sub_1DFBC4
STR             R5, [R0]
STRB            R7, [R0,#0x18]
VSTR            S16, [R0,#0x1C]
STRB            R9, [R6,#4]
MOV             R1, R0
LDR             R0, [R10]
ADD             R0, R0, R11
BL              sub_1DFCE0
LDR             R6, [R10]
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_1545B8
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R6]
CMP             R0, #0
BEQ             loc_154624
LDRB            R0, [R4,#0x3D]
CMP             R0, #0
BEQ             loc_154624
LDR             R0, [R10]
MOV             R3, #0
MOV             R2, R3
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x6000
LDR             R1, [R0,#0x3BC]
MOV             R0, #0x20 ; ' '
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_154614
ADD             R6, R4, #0xBF0
LDR             R8, [R8,#(dword_6E233C - 0x6E1FD0)]
MOV             R2, R6
MOV             R1, #1
BL              sub_1DFBC4
STR             R5, [R0]
STRB            R7, [R0,#0x18]
STR             R8, [R0,#0x1C]
STRB            R9, [R6,#4]
MOV             R1, R0
LDR             R0, [R10]
ADD             R0, R0, R11
BL              sub_1DFCE0
LDR             R1, =off_63FDB0
LDRD            R0, R1, [R1,#(off_63FE80 - 0x63FDB0)]
STRD            R0, R1, [R4,#0xC]
ADD             SP, SP, #4
VPOP            {D8}
POP             {R4-R11,PC}
