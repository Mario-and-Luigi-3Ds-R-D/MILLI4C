PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0xB50]
BL              sub_259C00
LDR             R0, [R4,#0xA70]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_25AF0C
BL              sub_533330
STR             R5, [R4,#0xA70]
LDR             R0, [R4,#0xA74]
CMP             R0, #0
BEQ             loc_25AF3C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R5, [R4,#0xA74]
LDR             R0, [R4,#0xA70]
CMP             R0, #0
BEQ             loc_25AF3C
BL              sub_533330
STR             R5, [R4,#0xA70]
ADD             R4, R4, #0x800
ADD             R4, R4, #0x35C
LDR             R5, =off_6B7BEC
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_25AF94
LDR             R6, [R4]
CMP             R6, #0
BEQ             loc_25AF94
STR             R5, [R6,#4]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R6, #0x18
BLX             sub_1009D8
MOV             R0, R6
NOP
NOP
SUB             R0, R0, #4
NOP
BL              sub_300FD4
ADD             R1, R4, #4
SUB             R4, R4, #0xC
LDRD            R0, R1, [R1]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_25AFD0
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_25AFD0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
ADD             R1, R4, #4
MOV             R3, #1
LDRD            R0, R1, [R1]
MOV             R2, #0x28 ; '('
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, =off_6B7BFC
LDR             R1, =sub_5A2F60
STR             R0, [R4,#-0x58]!
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x80
NOP
NOP
SUB             R0, R0, #0x3FC
NOP
BL              sub_14F3EC
SUB             R0, R0, #0x400
SUB             R0, R0, #0x1F8
BL              sub_503254
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
SUB             R4, R0, #0x34 ; '4'
STR             R5, [R0,#-0x34]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x1C
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #4
POP             {R4-R6,PC}
