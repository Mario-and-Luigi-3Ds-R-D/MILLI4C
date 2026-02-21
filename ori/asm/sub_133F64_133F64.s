PUSH            {R3-R11,LR}
MOV             R4, R0
MOV             R8, R2
MOV             R11, R1
LDR             R0, [R0,#0x1C]
LDR             R10, [R4,#0xC]
ADD             R0, R0, #1
STR             R0, [R4,#0x1C]
MOV             R0, R1
BL              sub_137788
MOV             R9, R0
MOV             R0, R11
LDR             R0, [R0,#0x20]
STR             R0, [SP,#0x28+var_28]
LDR             R5, [R4,#8]
MOV             R7, #0
CMP             R9, #0x64 ; 'd'
MOV             R6, R7
BNE             loc_134000
MOV             R1, #0x64 ; 'd'
MOV             R0, R5
BL              sub_13F8F8
CMP             R0, #0
ADDNE           R7, R7, #1
MOV             R0, R5
BL              sub_135F54
CMP             R0, #0
LDRD            R0, R1, [R4,#4]
ADDNE           R6, R6, #1
ADD             R5, R5, #0x360
ADD             R0, R0, R0,LSL#3
ADD             R0, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#5
CMP             R0, R5
BHI             loc_133FB0
RSB             R0, R7, #0x18
CMP             R0, R6
RSBLT           R6, R7, #0x18
B               loc_13402C
MOV             R0, R5
BL              sub_135F54
CMP             R0, #0
LDRD            R0, R1, [R4,#4]
ADDNE           R6, R6, #1
ADD             R5, R5, #0x360
ADD             R0, R0, R0,LSL#3
ADD             R0, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#5
CMP             R0, R5
BHI             loc_134000
CMP             R6, R8
BCC             loc_134128
MOV             R5, #0
SUB             R6, R5, #0x360
CMP             R9, #0xC8
CMPNE           R9, #0x12C
BEQ             loc_134068
SUB             R0, R9, #0x100
SUBS            R0, R0, #0x2D ; '-'
CMPNE           R0, #1
BEQ             loc_134068
CMP             R5, #0
SUBNE           R5, R5, #0x360
BEQ             loc_1340A8
B               loc_1340BC
CMP             R5, #0
ADDNE           R5, R5, #0x360
LDREQ           R5, [R4,#8]
MOV             R0, R5
BL              sub_135F54
CMP             R0, #0
NOP
BNE             loc_1340D0
LDRD            R0, R1, [R4,#4]
ADD             R5, R5, #0x360
ADD             R0, R0, R0,LSL#3
ADD             R0, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#5
CMP             R0, R5
BHI             loc_134074
B               loc_134120
LDRD            R0, R1, [R4,#4]
ADD             R0, R0, R0,LSL#3
ADD             R0, R0, R0,LSL#1
ADD             R0, R6, R0,LSL#5
ADD             R5, R1, R0
MOV             R0, R5
BL              sub_135F54
CMP             R0, #0
NOP
BEQ             loc_134110
CMP             R5, #0
BEQ             loc_1340F4
MOV             R1, R5
MOV             R0, R11
BL              sub_134DB0
MOV             R1, R11
MOV             R0, R5
BL              sub_1360E8
STR             R5, [R10],#4
SUBS            R8, R8, #1
BNE             loc_13403C
LDR             R1, [R4,#0x1C]
LDR             R0, [R4,#0xC]
SUB             R1, R1, #1
STR             R1, [R4,#0x1C]
POP             {R3-R11,PC}
LDR             R0, [R4,#8]
SUB             R5, R5, #0x360
CMP             R0, R5
BLS             loc_1340BC
MOV             R5, #0
B               loc_1340F4
CMP             R9, #0x64 ; 'd'
BNE             loc_134158
ADD             R0, R7, R8
CMP             R0, #0x18
BHI             loc_134158
LDR             R2, [SP,#0x28+var_28]
MOV             R1, #0xC8
MOV             R0, R4
BL              sub_133C64
NOP
NOP
B               loc_134168
LDR             R2, [SP,#0x28+var_28]
MOV             R1, R9
MOV             R0, R4
BL              sub_133C64
CMP             R0, #0
BNE             loc_133F9C
LDR             R0, [R4,#0x1C]
SUB             R0, R0, #1
STR             R0, [R4,#0x1C]
MOV             R0, #0
POP             {R3-R11,PC}
