LDR             R1, =off_6BBE44
PUSH            {R4-R8,LR}
STR             R1, [R0],#0xB8
BL              sub_14F3EC
SUB             R4, R0, #0xB8
SUB             R5, R0, #0x44 ; 'D'
LDR             R0, [R0,#-0x3C]
ADD             R1, R5, #4
CMP             R0, R1
BNE             loc_266A34
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_266A34
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
BL              sub_300FD4
LDRD            R0, R1, [R5,#4]
ADD             R5, R4, #0x64 ; 'd'
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#0x6C]
ADD             R1, R4, #0x68 ; 'h'
CMP             R0, R1
BNE             loc_266A70
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_266A70
BL              sub_2678A0
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R5,#4]
ADD             R5, R4, #0x58 ; 'X'
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#0x60]
ADD             R1, R4, #0x5C ; '\'
CMP             R0, R1
BNE             loc_266AAC
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_266AAC
BL              sub_268BEC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R5,#4]
ADD             R5, R4, #0x4C ; 'L'
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#0x54]
ADD             R1, R4, #0x50 ; 'P'
CMP             R0, R1
BNE             loc_266AD8
LDR             R0, [R5]
CMP             R0, #0
BLNE            sub_300FD4
LDRD            R0, R1, [R5,#4]
ADD             R5, R4, #0x40 ; '@'
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#0x48]
ADD             R1, R4, #0x44 ; 'D'
CMP             R0, R1
BNE             loc_266B04
LDR             R0, [R5]
CMP             R0, #0
BLNE            sub_300FD4
LDRD            R0, R1, [R5,#4]
ADD             R7, R4, #0x34 ; '4'
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#0x3C]
ADD             R1, R4, #0x38 ; '8'
CMP             R0, R1
BNE             loc_266B94
LDR             R0, [R7]
CMP             R0, #0
BEQ             loc_266B94
ADD             R8, R0, #0x80
LDR             R6, [R0,#0x80]!
LDR             R5, [R0,#4]
CMP             R6, R5
BEQ             loc_266B8C
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_266B78
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_266B78
BL              sub_25E310
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_266B44
SUB             R0, R8, #0x80
BL              sub_300FD4
ADD             R1, R7, #4
LDRD            R0, R1, [R1]
STR             R1, [R0,#4]
STR             R0, [R1]
SUB             R0, R7, #0x34 ; '4'
POP             {R4-R8,PC}
