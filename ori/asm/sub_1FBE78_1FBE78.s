PUSH            {R4-R12,LR}
MOV             R6, R0
ADD             R4, R6, #0x12400
ADD             R4, R4, #0x304
LDR             R0, =off_6BB84C
STR             R0, [R6]
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1FBEA8
LDR             R1, =dword_6E2378
LDR             R0, [R0]
STRH            R0, [R1,#(word_6E23A4 - 0x6E2378)]
ADD             R5, R6, #0x12400
ADD             R5, R5, #0x2D8
MOV             R10, #0
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1FBED4
BL              sub_1FF4F4
NOP
NOP
BL              sub_300FD4
STR             R10, [R5]
ADD             R5, R6, #0x12400
ADD             R5, R5, #0x2DC
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1FBEFC
BL              sub_1FF4F4
NOP
NOP
BL              sub_300FD4
STR             R10, [R5]
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1FBF1C
BL              sub_1FD7EC
NOP
NOP
BL              sub_300FD4
STR             R10, [R4]
ADD             R11, R6, #0x12400
ADD             R11, R11, #0x308
LDR             R5, [R11,#0x10]
LDR             R7, [R11,#0xC]
CMP             R7, R5
BEQ             loc_1FBFA4
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_1FBF90
LDR             R9, [R4]
CMP             R9, #0
BEQ             loc_1FBF90
LDR             R0, =off_6CDC90
LDR             R0, [R0]
ADD             R8, R0, #0x12400
LDR             R0, [R9]
ADD             R8, R8, #0x378
LDR             R1, [R0]
MOV             R0, R9
BLX             R1
LDR             R0, [R8,#4]
STR             R0, [R9]
STR             R9, [R8,#4]
LDR             R0, [R8,#8]
ADD             R0, R0, #1
STR             R0, [R8,#8]
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_1FBF34
LDR             R0, [R11,#0xC]
STR             R0, [R11,#0x10]
LDR             R0, =0x1273C
LDR             R5, [R0,R6]
LDR             R0, [R5,#8]
CMP             R0, R5
BEQ             loc_1FBFFC
ADD             R1, R0, #4
LDM             R1, {R1,R2}
MOV             R4, R1
STR             R1, [R2,#4]
ADD             R1, R0, #4
LDM             R1, {R1,R2}
STR             R2, [R1,#8]
STR             R10, [R0,#8]
STR             R10, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R0, [R4,#8]
CMP             R0, R5
BNE             loc_1FBFC0
ADD             R4, R6, #0x12400
ADD             R4, R4, #0x378
LDRB            R0, [R4,#0x10]
CMP             R0, #0
LDRNE           R0, [R4]
CMPNE           R0, #0
BEQ             loc_1FC020
BL              sub_110D10
STR             R10, [R4]
ADD             R5, R6, #0x12000
ADD             R5, R5, #0x750
LDRB            R0, [R5,#0x10]
CMP             R0, #0
LDRNE           R0, [R5]
CMPNE           R0, #0
BEQ             loc_1FC044
BL              sub_110D10
STR             R10, [R5]
ADD             R5, R6, #0x12400
ADD             R5, R5, #0x364
LDRB            R0, [R5,#0x10]
CMP             R0, #0
LDRNE           R0, [R5]
CMPNE           R0, #0
BEQ             loc_1FC068
BL              sub_110D10
STR             R10, [R5]
ADD             R5, R6, #0x10000
ADD             R5, R5, #0x2700
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1FC084
BL              sub_300FD4
STR             R10, [R5]
ADD             R0, R6, #0x12400
LDR             R1, =sub_14F3EC
MOV             R3, #2
MOV             R2, #0x3F4
ADD             R0, R0, #0x398
BLX             sub_1009D8
LDRB            R0, [R4,#0x10]
CMP             R0, #0
LDRNE           R0, [R4]
CMPNE           R0, #0
BEQ             loc_1FC0B8
BL              sub_110D10
STR             R10, [R4]
SUB             R4, R4, #0x14
LDRB            R0, [R4,#0x10]
CMP             R0, #0
LDRNE           R0, [R4]
CMPNE           R0, #0
BEQ             loc_1FC0D8
BL              sub_110D10
STR             R10, [R4]
LDRB            R0, [R4,#-4]
SUB             R6, R4, #0x14
CMP             R0, #0
LDRNE           R0, [R6]
CMPNE           R0, #0
BEQ             loc_1FC0F8
BL              sub_110D10
STR             R10, [R6]
LDR             R5, [R6,#-0x14]!
LDR             R0, [R5,#8]
CMP             R0, R5
BEQ             loc_1FC144
ADD             R1, R0, #4
LDM             R1, {R1,R2}
MOV             R4, R1
STR             R1, [R2,#4]
ADD             R1, R0, #4
LDM             R1, {R1,R2}
STR             R2, [R1,#8]
STR             R10, [R0,#8]
STR             R10, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R0, [R4,#8]
CMP             R0, R5
BNE             loc_1FC108
SUB             R8, R6, #0x34 ; '4'
STR             R10, [R6,#-0x20]
LDR             R6, [R6,#-0x28]
LDR             R5, [R8,#0x10]
CMP             R6, R5
LDRNE           R11, =off_6CDC90
BEQ             loc_1FC1CC
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_1FC1B8
LDR             R9, [R4]
CMP             R9, #0
BEQ             loc_1FC1B8
LDR             R0, [R11]
ADD             R7, R0, #0x12400
LDR             R0, [R9]
ADD             R7, R7, #0x378
LDR             R1, [R0]
MOV             R0, R9
BLX             R1
LDR             R0, [R7,#4]
STR             R0, [R9]
STR             R9, [R7,#4]
LDR             R0, [R7,#8]
ADD             R0, R0, #1
STR             R0, [R7,#8]
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_1FC160
STR             R10, [R8,#0xC]
STR             R10, [R8,#0x10]
LDR             R0, [R8,#8]
STR             R10, [R8,#8]
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R6, [R8,#0xC]!
LDR             R5, [R8,#4]
CMP             R6, R5
LDRNE           R10, =off_6CDC90
BEQ             loc_1FC264
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_1FC250
LDR             R9, [R4]
CMP             R9, #0
BEQ             loc_1FC250
LDR             R0, [R10]
ADD             R7, R0, #0x12400
LDR             R0, [R9]
ADD             R7, R7, #0x378
LDR             R1, [R0]
MOV             R0, R9
BLX             R1
LDR             R0, [R7,#4]
STR             R0, [R9]
STR             R9, [R7,#4]
LDR             R0, [R7,#8]
ADD             R0, R0, #1
STR             R0, [R7,#8]
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_1FC1F8
LDR             R0, [R8,#-4]
SUB             R4, R8, #4
CMP             R0, #0
BLNE            sub_2FF5D4
SUB             R7, R4, #0x18
LDR             R5, [R4,#-0x14]!
LDR             R6, [R4,#-4]
CMP             R6, R5
BEQ             loc_1FC2D0
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_1FC2BC
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1FC2BC
BL              sub_1FD044
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_1FC288
SUB             R0, R7, #0x28 ; '('
NOP
SUB             R0, R0, #0x10000
SUB             R0, R0, #0x26C0
BL              sub_1FDF78
SUB             R0, R0, #0x10
POP             {R4-R12,PC}
