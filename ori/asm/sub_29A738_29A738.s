PUSH            {R4-R10,LR}
ADD             R7, R0, #0x2C ; ','
MOV             R9, #0
STR             R9, [R0,#0x40]
LDR             R6, [R0,#0x38]!
LDR             R5, [R0,#4]
CMP             R6, R5
BEQ             loc_29A7C0
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_29A7AC
LDR             R8, [R4]
CMP             R8, #0
BEQ             loc_29A7AC
LDR             R0, [R8,#0x444]
CMP             R0, #0
LDRNE           R0, [R0,#4]
CMPNE           R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
ADD             R0, R8, #0x48 ; 'H'
NOP
BL              sub_14F3EC
SUB             R0, R0, #0x48 ; 'H'
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_29A758
STR             R9, [R7,#0xC]
STR             R9, [R7,#0x10]
LDR             R0, [R7,#8]
STR             R9, [R7,#8]
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R6, [R7,#0xC]!
LDR             R5, [R7,#4]
CMP             R6, R5
BEQ             loc_29A850
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_29A83C
LDR             R8, [R4]
CMP             R8, #0
BEQ             loc_29A83C
LDR             R0, [R8,#0x444]
CMP             R0, #0
LDRNE           R0, [R0,#4]
CMPNE           R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
ADD             R0, R8, #0x48 ; 'H'
NOP
BL              sub_14F3EC
SUB             R0, R0, #0x48 ; 'H'
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_29A7E8
LDR             R0, [R7,#-4]
SUB             R4, R7, #4
CMP             R0, #0
BLNE            sub_2FF5D4
SUB             R0, R4, #0x34 ; '4'
POP             {R4-R10,PC}
