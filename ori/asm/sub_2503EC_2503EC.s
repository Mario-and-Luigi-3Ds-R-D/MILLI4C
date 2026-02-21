PUSH            {R4-R10,LR}
MOV             R5, R0
ADD             R4, R5, #0x1940
MOV             R10, #0
LDR             R0, =off_6BBB4C
STR             R0, [R5]
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_250424
ADD             R0, R0, #0x20 ; ' '
NOP
SUB             R0, R0, #0x20 ; ' '
BL              sub_300FD4
STR             R10, [R4]
LDR             R4, [R5,#0x3F4]
CMP             R4, #0
BEQ             loc_250464
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_250444
BL              sub_2FF5D4
STR             R10, [R4]
LDR             R0, [R4,#4]
CMP             R0, #0
BEQ             loc_250458
BL              sub_110D10
STR             R10, [R4,#4]
MOV             R0, R4
BL              sub_300FD4
STR             R10, [R5,#0x3F4]
LDR             R0, =off_6C075C
ADD             R5, R5, #0x1800
ADD             R5, R5, #0x174
SUB             R9, R5, #0xA8
STR             R0, [R5]
LDR             R0, [R5,#4]
LDR             R8, =off_6B7C1C
CMP             R0, #0
STRNE           R10, [R0,#0x184]
STRNE           R10, [R5,#4]
LDR             R6, [R5,#-0xA8]
LDR             R5, [R5,#-0xA4]
CMP             R6, R5
BEQ             loc_250514
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_250500
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_250500
ADD             R0, R0, #0x168
NOP
SUB             R7, R0, #0xC4
STR             R8, [R0,#-0xC4]
LDR             R1, =sub_5A2F60
MOV             R3, #3
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x94
BLX             sub_1009D8
MOV             R0, R7
NOP
NOP
SUB             R0, R0, #0xA4
STRH            R10, [R0,#0x34]
STRH            R10, [R0,#0x28]
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_25049C
LDR             R5, [R9,#-0xB44]!
LDR             R6, [R9,#-4]!
CMP             R6, R5
BEQ             loc_25059C
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_250588
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_250588
ADD             R0, R0, #0x168
NOP
SUB             R7, R0, #0xC4
STR             R8, [R0,#-0xC4]
LDR             R1, =sub_5A2F60
MOV             R3, #3
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x94
BLX             sub_1009D8
MOV             R0, R7
NOP
NOP
SUB             R0, R0, #0xA4
STRH            R10, [R0,#0x34]
STRH            R10, [R0,#0x28]
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_250524
LDR             R0, [R9,#-0x98C]
SUB             R5, R9, #0xC00
SUB             R4, R9, #0x800
CMP             R0, #0
SUB             R5, R5, #0x184
SUB             R4, R4, #0x18C
BEQ             loc_2505C0
BL              sub_2FF5D4
STR             R10, [R4]
LDR             R0, [R4,#4]
CMP             R0, #0
BEQ             loc_2505D4
BL              sub_2FF5D4
STR             R10, [R4,#4]
MOV             R0, R5
POP             {R4-R10,LR}
B               sub_14F3EC
