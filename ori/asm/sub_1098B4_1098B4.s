PUSH            {R4-R12,LR}
MOV             R5, R3
MOV             R7, R1
MOV             R10, R2
LDR             R8, =dword_6FB418
VPUSH           {D8}
MOV             R0, R8
LDR             R6, [SP,#0x30+arg_0]
LDR             R9, [SP,#0x30+arg_8]
VLDR            S17, [SP,#0x30+arg_4]
VLDR            S16, [SP,#0x30+arg_C]
BL              sub_13273C
CMP             R7, #0
BNE             loc_1098F4
BL              sub_11D858
MOV             R7, R0
CMP             R10, #0
BEQ             loc_109B68
LDR             R4, =dword_6D23EC
LDR             R0, [R4,#(off_6D23F0 - 0x6D23EC)]!
LDR             R0, [R0]
CMP             R0, #0
BNE             loc_109B68
CMP             R5, #0x64 ; 'd'
BEQ             loc_109934
CMP             R5, #0x65 ; 'e'
BEQ             loc_1099B8
CMP             R5, #0xC8
BEQ             loc_1099F4
CMP             R5, #0
BEQ             loc_109A30
B               loc_109A68
LDR             R0, =0x10624DD3
MOV             R2, #0
SMULL           R1, R0, R0, R6
MOV             R1, R0,ASR#6
SUB             R11, R1, R0,ASR#31
MOV             R1, R11
MOV             R0, #0x65 ; 'e'
BL              sub_11DAF8
CMP             R0, #0
NOP
BNE             loc_109B68
MOV             R2, #0
MOV             R1, R6
MOV             R0, #0x64 ; 'd'
BL              sub_11DAF8
CMP             R0, #0
NOP
BNE             loc_109B68
MOV             R2, #0
MOV             R1, R6
MOV             R0, #0x64 ; 'd'
BL              sub_11BEBC
CMP             R0, #0
NOP
BNE             loc_109B68
MOV             R2, #1
MOV             R1, R11
MOV             R0, #0x65 ; 'e'
BL              sub_11BEBC
CMP             R0, #0
NOP
BNE             loc_109B68
B               loc_109A68
ORR             R1, R6, #0x1000000
MOV             R2, #1
MOV             R0, #0x64 ; 'd'
BL              sub_11DAF8
CMP             R0, #0
NOP
BNE             loc_109B68
MOV             R2, #1
MOV             R1, R6
MOV             R0, #0x65 ; 'e'
BL              sub_11BEBC
CMP             R0, #0
NOP
BNE             loc_109B68
B               loc_109A68
MOV             R2, #0
MOV             R1, R6
MOV             R0, #0xC8
BL              sub_11DAF8
CMP             R0, #0
NOP
BNE             loc_109B68
MOV             R2, #0
MOV             R1, R6
MOV             R0, #0xC8
BL              sub_11BEBC
CMP             R0, #0
NOP
BNE             loc_109B68
B               loc_109A68
MOV             R2, #1
MOV             R1, R6
MOV             R0, #0
BL              sub_11DAF8
CMP             R0, #0
NOP
BNE             loc_109B68
MOV             R2, #1
MOV             R1, R6
MOV             R0, #0
BL              sub_11BEBC
CMP             R0, #0
NOP
BNE             loc_109B68
CMP             R5, #0xC8
LDREQ           R1, [R4]
MOVEQ           R0, #5
BEQ             loc_109AE0
BGT             loc_109AA8
CMP             R5, #0
LDREQ           R1, [R4]
MOVEQ           R0, #3
BEQ             loc_109AE0
CMP             R5, #0x64 ; 'd'
LDREQ           R1, [R4]
MOV             R0, #4
BEQ             loc_109AE0
CMP             R5, #0x65 ; 'e'
BEQ             loc_109AC8
B               loc_109AE4
CMP             R5, #0x12C
SUBNE           R0, R5, #0x100
SUBSNE          R0, R0, #0x2D ; '-'
CMPNE           R0, #1
LDREQ           R1, [R4]
MOVEQ           R0, #6
BNE             loc_109AE4
B               loc_109AE0
LDR             R1, [R4]
MOV             R2, #1
STR             R0, [R1,#0x10]
LDR             R0, [R4]
STR             R2, [R0,#0x28]
B               loc_109AE4
STR             R0, [R1,#0x10]
LDR             R0, [R4]
MOV             R1, R10
ADD             R0, R0, #0x48 ; 'H'
BL              sub_11D1D8
LDR             R1, [R4]
MOV             R0, R9,ASR#31
VSTR            S17, [R1,#4]
LDR             R1, [R4]
STR             R9, [R1,#8]!
STR             R0, [R1,#4]
LDR             R0, [R4]
STR             R5, [R0,#0x20]
LDR             R0, [R4]
STR             R6, [R0,#0x24]
LDR             R1, [R4]
MOV             R0, #0xFFFFFFF8
STR             R0, [R1,#0x18]
LDR             R1, [R4]
LDR             R0, =sub_10FFE8
STR             R0, [R1,#0x44]
LDR             R0, [R4]
VSTR            S16, [R0,#0x1C]
LDR             R0, [R4]
STR             R7, [R0]
LDR             R0, [R4]
ADD             R1, R0, #0x248
LDR             R0, =byte_6D23B8
STR             R1, [R4]
LDR             R0, [R0,#(dword_6D23DC - 0x6D23B8)]
ADD             R2, R0, #0x9200
CMP             R1, R2
ADDEQ           R0, R0, #0x4900
STREQ           R0, [R4]
MOV             R0, R8
BL              sub_1327BC
VPOP            {D8}
MOV             R0, R7
POP             {R4-R12,PC}
