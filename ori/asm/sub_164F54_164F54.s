PUSH            {R4-R10,LR}
MOV             R5, R0
ADD             R6, R0, #0x16800
MOV             R8, #0
LDR             R7, =off_6D1648
ADD             R6, R6, #0x3EC
LDR             R0, [R7]
LDR             R0, [R0,#0xC8]
TST             R0, #7
BNE             loc_165030
LDR             R0, =0x13D64
LDR             R0, [R0,R5]
CMP             R0, #0
BEQ             loc_165010
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_164FA0
BL              sub_2FF5D4
STR             R8, [R6]
LDR             R0, =0x13CFC
LDR             R1, =0x49249249
LDR             R3, [R0,R5]
MOV             R0, #0
LDR             R3, [R3,#0x1C]
UMLAL           R1, R0, R3, R1
MOV             R0, R0,LSR#4
ADDS            R4, R0, #1
BEQ             loc_165010
MOV             R0, #2
ADD             R9, R0, R4,LSL#2
MOV             R0, #0x34 ; '4'
LDR             R1, =dword_6ED9B8
MUL             R0, R9, R0
MOV             R3, #0x800000
MOV             R2, #0
BL              sub_1143B4
CMP             R0, #0
NOP
BEQ             loc_165000
LDR             R1, =sub_1E2DE4
MOV             R3, R9
MOV             R2, #0x34 ; '4'
BLX             sub_1002F4
STR             R0, [R6]
MOV             R1, R4
MOV             R0, R5
BL              sub_165BC8
ADD             R0, R5, #0x16C00
MOV             R2, #0xA0
MOV             R1, #0
ADD             R0, R0, #0x38 ; '8'
BL              sub_110BE4
LDR             R0, =0x16CD8
MOV             R1, #1
STRB            R1, [R0,R5]
LDR             R0, [R7]
BL              sub_5C8540
CMP             R0, #0
NOP
BEQ             loc_1650EC
LDR             R0, [R7]
BL              sub_1E4614
ADD             R7, R0, #0x2600
MOV             R4, R0
LDRSH           R0, [R7,#0x88]
CMN             R0, #1
BEQ             loc_165078
LDR             R2, [R6]
LDR             R1, =0x268C
ADD             R3, R0, R0,LSL#2
ADD             R0, R3, R0,LSL#3
ADD             R0, R2, R0,LSL#2
STR             R0, [R1,R4]
LDR             R0, [R4]
LDR             R1, [R0,#0x468]
MOV             R0, R4
BLX             R1
CMP             R0, #4
BNE             loc_1650EC
LDRSH           R0, [R7,#0xA0]
CMN             R0, #1
LDREQ           R0, =0x269C
STREQ           R8, [R0,R4]
BEQ             loc_1650BC
LDR             R2, [R6]
LDR             R1, =0x269C
ADD             R3, R0, R0,LSL#2
ADD             R0, R3, R0,LSL#3
ADD             R0, R2, R0,LSL#2
STR             R0, [R1,R4]
LDRSB           R0, [R7,#0xA8]
CMN             R0, #1
ADDEQ           R4, R4, #0x2400
ADDEQ           R4, R4, #0x2A4
STREQ           R8, [R4]
BEQ             loc_1650EC
ADD             R0, R5, R0,LSL#2
ADD             R0, R0, #0x14000
ADD             R4, R4, #0x2400
LDR             R0, [R0,#0x184]
ADD             R4, R4, #0x2A4
STR             R0, [R4]
LDR             R0, [R5]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_68E804
LDM             R0, {R1,R2}
MOV             R0, R5
POP             {R4-R10,LR}
BX              R12
