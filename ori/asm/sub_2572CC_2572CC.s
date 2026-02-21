PUSH            {R4-R8,LR}
MOV             R6, R1
MOV             R1, #0
STR             R1, [R0]
ADD             R1, R0, #4
STR             R1, [R0,#8]
STR             R1, [R0,#4]!
ADD             R0, R0, #0x10
BL              sub_14F198
ADD             R0, R0, #0x3F4
BL              sub_5A2BD0
LDR             R1, =off_6B7C1C
MOV             R3, #3
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R2, R0, #0x30 ; '0'
MOV             R1, #3
STR             R2, [R0,#0x28]
STRB            R1, [R0,#0x2C]
ADD             R0, R0, #0xA8
BL              sub_14F198
LDR             R7, =off_6CE970
MOV             R8, #0
SUB             R4, R0, #0x4B0
STRB            R8, [R0,#-0x4A4]
LDR             R0, [R7]
MOV             R1, #0xC000
BL              sub_52FACC
MOV             R1, R0
MOV             R2, #0
ADD             R0, R4, #0x14
BL              sub_14E6E0
MOV             R1, #1
ADD             R0, R4, #0x14
BL              sub_14C450
MOV             R0, #1
STRB            R0, [R4,#0x105]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #9
ADD             R0, R4, #0x14
BL              sub_14C548
MOV             R1, R6
ADD             R0, R4, #0x14
BL              sub_14E984
MOV             R1, #0
ADD             R0, R4, #0x14
BL              sub_14C3E8
LDR             R1, =0xC00E
LDR             R0, [R7]
ADD             R5, R4, #0x4B0
BL              sub_52FACC
MOV             R6, R0
MOV             R1, #1
MOV             R0, R5
BL              sub_14C450
LDR             R0, [R5]
MOV             R2, #0
MOV             R1, R6
LDR             R3, [R0,#0x58]
MOV             R0, R5
BLX             R3
MOV             R2, #1
MOV             R1, R2
MOV             R0, R5
BL              sub_14B798
MOV             R1, #2
ADD             R0, R4, #0x4B0
STRB            R8, [R5,#0xF1]
BL              sub_14C450
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #4
ADD             R0, R4, #0x4B0
BL              sub_14C548
MOV             R1, #0
ADD             R0, R4, #0x4B0
STRB            R8, [R4,#0x5A2]
BL              sub_14C3E8
LDR             R0, [R7]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #4
BL              sub_10A358
CMP             R0, #0
ADDNE           R1, R4, #0x14
STRNE           R1, [R0]
LDR             R1, [R4,#8]
MOVNE           R5, R0
MOVEQ           R5, #0
ADD             R2, R4, #4
CMP             R1, R2
BNE             loc_257468
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_300FD4
MOV             R0, R4
STR             R5, [R4]
POP             {R4-R8,PC}
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_25745C
