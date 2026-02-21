PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R8, #0
LDR             R0, [R0,#0x684]
CMP             R0, #0
BEQ             loc_28AA80
BL              sub_300FD4
STR             R8, [R4,#0x684]
ADD             R7, R4, #0x690
STR             R8, [R4,#0x6A4]
LDR             R6, [R4,#0x69C]!
LDR             R5, [R4,#4]
CMP             R6, R5
BEQ             loc_28AAE4
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_28AAD0
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_28AAD0
ADD             R0, R0, #0x1C
BL              sub_14F3EC
SUB             R0, R0, #0x1C
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_28AA98
STR             R8, [R7,#0xC]
STR             R8, [R7,#0x10]
LDR             R0, [R7,#8]
STR             R8, [R7,#8]
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R6, [R7,#0xC]!
LDR             R5, [R7,#4]
CMP             R6, R5
BEQ             loc_28AB58
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_28AB44
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_28AB44
ADD             R0, R0, #0x1C
BL              sub_14F3EC
SUB             R0, R0, #0x1C
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_28AB0C
LDR             R0, [R7,#-4]
SUB             R4, R7, #4
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R0, =off_6B7C1C
LDR             R1, =sub_5A2F60
MOV             R3, #3
STR             R0, [R4,#-0xC0]!
MOV             R2, #0x28 ; '('
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R6, R0, #0xA8
LDR             R0, [R0,#-0x88]
ADD             R4, R6, #0x20 ; ' '
CMP             R0, #0
BEQ             loc_28ABAC
BL              sub_2FF5D4
STR             R8, [R4]
STR             R8, [R4,#4]
STR             R8, [R4,#8]
STR             R8, [R4,#0xC]
LDR             R0, [R6,#0x10]
ADD             R5, R6, #0x10
CMP             R0, #0
BEQ             loc_28ABD0
BL              sub_2FF5D4
STR             R8, [R5]
STR             R8, [R5,#4]
STR             R8, [R5,#8]
STR             R8, [R5,#0xC]
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_28ABF0
BL              sub_2FF5D4
STR             R8, [R6]
STR             R8, [R6,#4]
STR             R8, [R6,#8]
SUB             R0, R6, #0x90
STR             R8, [R6,#0xC]
NOP
SUB             R0, R0, #0x6C ; 'l'
NOP
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #0x24 ; '$'
BL              sub_14F3EC
SUB             R0, R0, #0x10
POP             {R4-R8,PC}
