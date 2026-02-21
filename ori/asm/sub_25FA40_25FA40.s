PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R9, #0
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_25FA60
BL              sub_533330
STR             R9, [R4]
LDR             R0, [R4,#0xE70]
BL              sub_110D10
LDR             R1, =off_6B0F7C
ADD             R0, R4, #0xC00
ADD             R0, R0, #0x268
ADD             R8, R4, #0xE60
STM             R0, {R1,R9}
LDR             R6, [R4,#0xE60]!
LDR             R5, [R4,#4]
CMP             R6, R5
BEQ             loc_25FAEC
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_25FAD8
LDR             R7, [R4]
CMP             R7, #0
BEQ             loc_25FAD8
LDR             R0, [R7,#4]
CMP             R0, #0
BEQ             loc_25FAC4
BL              sub_533330
STR             R9, [R7,#4]
ADD             R0, R7, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_25FA8C
LDR             R0, [R8,#-0x1EC]
LDR             R5, =off_6B7BEC
SUB             R4, R8, #0x1F0
CMP             R0, #0
STRNE           R9, [R4,#4]
STR             R5, [R4,#-0x40]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R4, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x3F4
NOP
BL              sub_14F3EC
SUB             R0, R0, #0x3F4
NOP
BL              sub_14F3EC
SUB             R4, R0, #0x4C ; 'L'
STR             R5, [R0,#-0x4C]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x34 ; '4'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x3F8
NOP
BL              sub_14F3EC
SUB             R0, R0, #4
POP             {R4-R10,PC}
