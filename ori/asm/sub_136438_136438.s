PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R5, R1
MOV             R6, R2
MOV             R7, R3
BL              sub_13FED4
MOV             R8, R0
BL              sub_13273C
CMP             R6, #0x65 ; 'e'
MOVEQ           R6, #0x64 ; 'd'
ORREQ           R7, R7, #0x1000000
CMP             R5, #0
MOV             R9, #0
BEQ             loc_136588
ADD             R0, R4, #0x10
LDM             R0, {R0,R3}
CMP             R3, R0
BEQ             loc_1364B8
LDR             R2, [R0]
LDR             R1, [R2]
CMP             R1, R5
LDRNE           R1, [R2,#4]
CMPNE           R1, R5
BNE             loc_1364AC
MOV             R0, R5
BL              sub_1361A4
NOP
NOP
B               loc_1364B8
ADD             R0, R0, #4
CMP             R3, R0
BNE             loc_136480
ADD             R0, R4, #0x10
LDM             R0, {R0,R3}
CMP             R0, R3
BEQ             loc_1364F8
LDR             R1, [R0]
LDR             R12, [R1]
CMP             R12, R5
LDRNE           R12, [R1,#4]
CMPNE           R12, R5
ADDNE           R0, R0, #4
BNE             loc_1364C0
MOV             R2, #0
STR             R9, [R1,#8]
MOV             R12, R2
STR             R9, [R1,#0xC]
STM             R1, {R2,R12}
CMP             R0, R3
BEQ             loc_136564
ADD             R2, R0, #4
CMP             R2, R3
MOV             R1, R0
BEQ             loc_136560
LDR             R0, [R2]
LDR             R12, [R0]
CMP             R12, R5
LDRNE           LR, [R0,#4]
CMPNE           LR, R5
MOVNE           R12, #0
BNE             loc_136544
MOV             R6, #0
STR             R9, [R0,#8]
MOV             LR, R6
STR             R9, [R0,#0xC]
STM             R0, {R6,LR}
MOV             R12, #1
CMP             R12, #0
BNE             loc_136554
LDR             R0, [R2]
STR             R0, [R1],#4
ADD             R2, R2, #4
CMP             R2, R3
BNE             loc_136510
MOV             R0, R1
LDR             R1, [R4,#0x14]
LDR             R2, [R4,#0x10]
CMP             R2, R1
BEQ             loc_13676C
SUB             R0, R1, R0
BIC             R0, R0, #3
SUB             R0, R1, R0
STR             R0, [R4,#0x14]
B               loc_13676C
LDR             R5, [R4,#0x10]
CMN             R7, #1
BNE             loc_136670
LDR             R0, [R4,#0x14]
CMP             R0, R5
BEQ             loc_1365C0
LDR             R0, [R5]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x10]
CMP             R1, R6
BLEQ            sub_1361A4
ADD             R5, R5, #4
NOP
B               loc_136594
LDR             R1, [R4,#0x10]
MOV             R3, R0
CMP             R1, R3
BEQ             loc_1365FC
LDR             R0, [R1]
LDR             R2, [R0,#4]
LDR             R2, [R2,#0x10]
CMP             R2, R6
ADDNE           R1, R1, #4
BNE             loc_1365C8
STR             R9, [R0,#8]
MOV             R12, #0
STR             R9, [R0,#0xC]
STR             R12, [R0]
STR             R12, [R0,#4]
CMP             R1, R3
MOV             R0, R1
ADDNE           R2, R0, #4
CMPNE           R2, R3
BEQ             loc_13665C
LDR             R1, [R2]
LDR             R12, [R1,#4]
LDR             R12, [R12,#0x10]
CMP             R12, R6
MOVNE           R12, #0
BNE             loc_136640
STR             R9, [R1,#8]
MOV             LR, #0
STR             R9, [R1,#0xC]
STR             LR, [R1]
MOV             R12, #1
STR             LR, [R1,#4]
CMP             R12, #0
BNE             loc_136650
LDR             R1, [R2]
STR             R1, [R0],#4
ADD             R2, R2, #4
CMP             R2, R3
BNE             loc_136610
LDR             R1, [R4,#0x14]
LDR             R2, [R4,#0x10]
CMP             R2, R1
BEQ             loc_13676C
B               loc_136574
LDR             R0, [R4,#0x14]
CMP             R0, R5
BEQ             loc_1366A4
LDR             R0, [R5]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x10]
CMP             R1, R6
BNE             loc_13669C
LDR             R1, [R0,#0x14]
CMP             R1, R7
BLEQ            sub_1361A4
ADD             R5, R5, #4
B               loc_136670
LDR             R2, [R4,#0x10]
MOV             R1, R0
CMP             R2, R1
BEQ             loc_1366E8
LDR             R0, [R2]
LDR             R3, [R0,#4]
LDR             R12, [R3,#0x10]
CMP             R12, R6
BNE             loc_136740
LDR             R12, [R3,#0x14]
CMP             R12, R7
BNE             loc_136740
STR             R9, [R0,#8]
MOV             R12, #0
STR             R9, [R0,#0xC]
STR             R12, [R0]
STR             R12, [R0,#4]
CMP             R2, R1
MOV             R0, R2
ADDNE           R2, R0, #4
CMPNE           R2, R1
BEQ             loc_13675C
LDR             R3, [R2]
LDR             R12, [R3,#4]
LDR             LR, [R12,#0x10]
CMP             LR, R6
LDREQ           R12, [R12,#0x14]
CMPEQ           R12, R7
MOVNE           R12, #0
BNE             loc_136734
STR             R9, [R3,#8]
MOV             LR, #0
STR             R9, [R3,#0xC]
STR             LR, [R3]
MOV             R12, #1
STR             LR, [R3,#4]
CMP             R12, #0
BNE             loc_136750
B               loc_136748
ADD             R2, R2, #4
B               loc_1366AC
LDR             R3, [R2]
STR             R3, [R0],#4
ADD             R2, R2, #4
CMP             R2, R1
BNE             loc_1366FC
LDR             R1, [R4,#0x14]
LDR             R2, [R4,#0x10]
CMP             R2, R1
BNE             loc_136574
MOV             R0, R8
POP             {R4-R10,LR}
B               sub_1327BC
