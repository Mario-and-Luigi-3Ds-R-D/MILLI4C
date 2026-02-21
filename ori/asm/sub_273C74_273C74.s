PUSH            {R4-R8,LR}
ADD             R4, R0, #0x400
ADD             R4, R4, #0x2C8
LDR             R0, [R0,#0x6C8]
CMP             R0, #0
BEQ             loc_273C98
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [R4,#8]
ADD             R2, R4, #4
CMP             R1, R2
BNE             loc_273E3C
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_273CC0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R5, #0
MOV             R0, R4
STR             R5, [R4]
BL              sub_629440
LDR             R7, =off_6B7BEC
SUB             R4, R0, #0x3C ; '<'
LDR             R1, =nullsub_300
STR             R7, [R0,#-0x3C]
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x24 ; '$'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x64 ; 'd'
STR             R7, [R0,#-0x64]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x4C ; 'L'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x34 ; '4'
STR             R7, [R0,#-0x34]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x1C
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x34 ; '4'
STR             R7, [R0,#-0x34]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x1C
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x18
SUB             R8, R0, #0x28 ; '('
LDR             R1, [R0,#4]
CMP             R1, #0
STRNE           R5, [R0,#4]
LDR             R5, [R0,#-0x24]!
LDR             R6, [R0,#-4]
CMP             R6, R5
BEQ             loc_273DDC
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_273DC8
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_273DC8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_273D98
SUB             R0, R8, #0x400
SUB             R0, R0, #0xAC
BL              sub_14F3EC
SUB             R4, R0, #0xD4
LDR             R0, =off_6B7BFC
LDR             R1, =sub_5A2F60
MOV             R3, #1
STR             R0, [R4,#0x6C]!
MOV             R2, #0x28 ; '('
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x6C ; 'l'
STR             R7, [R0,#-0x6C]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x54 ; 'T'
BLX             sub_1009D8
MOV             R0, R4
POP             {R4-R8,LR}
B               nullsub_298
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_273CC0
