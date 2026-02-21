PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6ACE18
MOV             R5, #0
STR             R0, [R4]
LDR             R0, [R4,#0x3AC]
CMP             R0, #0
BEQ             loc_14F41C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R5, [R4,#0x3AC]
LDR             R0, [R4,#0x3B0]
CMP             R0, #0
BEQ             loc_14F43C
BL              sub_4FE6E4
NOP
NOP
BL              sub_300FD4
STR             R5, [R4,#0x3B0]
LDR             R0, [R4,#0x3EC]
CMP             R0, #0
BEQ             loc_14F45C
NOP
NOP
NOP
BL              sub_300FD4
STR             R5, [R4,#0x3EC]
LDR             R0, [R4,#0x3F0]
CMP             R0, #0
BEQ             loc_14F478
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R5, [R4,#0x3F0]
ADD             R0, R4, #0x380
NOP
SUB             R0, R0, #0x38 ; '8'
NOP
NOP
LDR             R5, =off_6B7C1C
SUB             R4, R0, #0xC4
LDR             R1, =sub_5A2F60
STR             R5, [R0,#-0xC4]
MOV             R3, #3
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x94
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0xA8
STR             R5, [R0,#-0xA8]
LDR             R1, =sub_5A2F60
MOV             R3, #3
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x78 ; 'x'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
LDR             R5, =off_6B7BFC
SUB             R4, R0, #0x84
LDR             R1, =sub_5A2F60
STR             R5, [R0,#-0x84]
MOV             R3, #1
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x54 ; 'T'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x58 ; 'X'
STR             R5, [R0,#-0x58]
LDR             R1, =sub_5A2F60
MOV             R3, #1
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x28 ; '('
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
POP             {R4-R6,LR}
SUB             R0, R0, #0x100
B               sub_14CD84
