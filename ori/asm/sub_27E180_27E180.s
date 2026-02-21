LDR             R1, =off_6BC240
PUSH            {R4-R8,LR}
STR             R1, [R0],#0x6F0
MOV             R7, R0
LDR             R5, [R0,#4]
LDR             R6, [R0]
CMP             R6, R5
BEQ             loc_27E1D8
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_27E1C4
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_27E1A0
LDR             R0, =off_6B7C1C
LDR             R1, =sub_5A2F60
SUB             R4, R7, #0x230
STR             R0, [R7,#-0x230]
MOV             R3, #3
MOV             R2, #0x28 ; '('
SUB             R0, R7, #0x200
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
LDR             R5, =off_6B7BEC
SUB             R4, R0, #0x8C
LDR             R1, =nullsub_300
STR             R5, [R0,#-0x8C]
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x74 ; 't'
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
SUB             R0, R0, #0x3FC
NOP
BL              sub_14F3EC
SUB             R0, R0, #4
POP             {R4-R8,PC}
