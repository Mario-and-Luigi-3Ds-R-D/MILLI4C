LDR             R1, =off_6BBE28
PUSH            {R4-R8,LR}
MOV             R3, #3
LDR             R2, =off_6C357C
STR             R1, [R0],#0x8DC
LDR             R1, =sub_14F3EC
STR             R2, [R0],#0x13C
MOV             R4, R0
MOV             R2, #0x3F4
BLX             sub_1009D8
SUB             R0, R4, #0x13C
BL              sub_14CD84
SUB             R4, R0, #0x10
LDR             R0, [R0,#-8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_263CA0
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_263CA0
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
BL              sub_300FD4
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
MOV             R8, #0
SUB             R7, R4, #0x18
STR             R0, [R1,#4]
STR             R1, [R0]
STR             R8, [R4,#-4]
LDR             R5, [R4,#-8]!
LDR             R6, [R4,#-4]
CMP             R6, R5
BEQ             loc_263D18
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_263D04
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_263D04
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_263CCC
STR             R8, [R7,#0xC]
STR             R8, [R7,#0x10]
LDR             R0, [R7,#8]
STR             R8, [R7,#8]
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R6, [R7,#0xC]!
LDR             R5, [R7,#4]
CMP             R6, R5
BEQ             loc_263D8C
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_263D78
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_263D78
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_263D40
LDR             R0, [R7,#-4]
SUB             R4, R7, #4
CMP             R0, #0
BLNE            sub_2FF5D4
SUB             R0, R4, #0x5C ; '\'
NOP
NOP
SUB             R0, R0, #0x58 ; 'X'
NOP
NOP
SUB             R0, R0, #0x3F4
NOP
BL              sub_14F3EC
SUB             R0, R0, #0x3F4
NOP
BL              sub_14F3EC
SUB             R4, R0, #0xC
LDR             R0, [R0,#-4]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_263DEC
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_300FD4
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
SUB             R4, R4, #0xC
STR             R0, [R1,#4]
STR             R1, [R0]
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_263E1C
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_300FD4
ADD             R1, R4, #4
LDRD            R0, R1, [R1]
STR             R1, [R0,#4]
STR             R0, [R1]
SUB             R0, R4, #8
POP             {R4-R8,PC}
