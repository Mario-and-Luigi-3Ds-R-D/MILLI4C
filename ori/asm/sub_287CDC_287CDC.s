PUSH            {R4-R12,LR}
MOV             R5, R0
ADD             R4, R0, #0x2C ; ','
MOV             R11, #0
LDR             R1, =off_6C3220
STR             R1, [R0,#0x2C]
STR             R11, [R0,#0x150]
STR             R11, [R0,#0x14C]!
ADD             R0, R0, #0x3FC
BL              sub_5B83E4
ADD             R0, R4, #0x128
BL              sub_528B1C
LDR             R0, =off_6C3340
ADD             R5, R5, #0x400
ADD             R5, R5, #0x148
MOV             R6, R5
STR             R0, [R5]
MOV             R0, R6
BL              sub_5B83E4
ADD             R5, R5, #0xCC
ADD             R0, R5, #0x9C
MOV             R1, #0
BL              sub_62D444
ADD             R0, R5, #0x9C
MOV             R1, #0
BL              sub_62D444
LDR             R0, [R6,#0x54]
ADD             R5, R6, #0x54 ; 'T'
CMP             R0, #0
LDRNE           R1, =dword_593390
BLNE            sub_3016C0
SUB             R0, R5, #0x400
SUB             R0, R0, #0x48 ; 'H'
BL              sub_14F3EC
SUB             R0, R0, #0x128
BL              sub_14CD84
SUB             R9, R0, #0x10
LDR             R5, [R0,#-0xC]!
LDR             R6, [R0,#-4]
CMP             R6, R5
LDRNE           R10, =off_6C0770
BEQ             loc_287E30
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_287E1C
LDR             R7, [R4]
CMP             R7, #0
BEQ             loc_287E1C
LDR             R8, [R7,#0x468]
CMP             R8, #0
BEQ             loc_287DFC
LDR             R0, [R8,#4]
CMP             R0, #0
BEQ             loc_287DC8
BL              sub_533330
STR             R11, [R8,#4]
LDR             R0, [R8,#0xC]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
STR             R10, [R8,#8]
LDR             R1, [R8,#0xC]
ADD             R0, R8, #8
CMP             R1, #0
STRNE           R11, [R1,#0x64]
STRNE           R11, [R0,#4]
MOV             R0, R8
BL              sub_300FD4
STR             R11, [R7,#0x468]
ADD             R0, R7, #0x3F8
NOP
SUB             R0, R0, #0x3F8
NOP
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_287D84
SUB             R0, R9, #0x1C
POP             {R4-R12,PC}
