PUSH            {R4-R11,LR}
SUB             SP, SP, #0x3C
MOV             R9, R0
LDR             R8, =off_6CE098
LDR             R0, [R8]
BL              sub_255340
LDRB            R0, [R9,#8]
LDR             R5, =off_6B7BEC
LDR             R6, =off_6B7BFC
CMP             R0, #0
MOV             R10, #0
BEQ             loc_25BA24
CMP             R0, #1
BNE             loc_25BA1C
LDR             R0, [R8]
ADD             R1, SP, #0x60+var_58
LDR             R2, [R0,#0x74]!
ADD             R0, R0, #4
STR             R0, [SP,#0x60+var_58]
STR             R2, [SP,#0x60+var_5C]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x60+var_54]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x60+var_5C]
LDR             R1, [SP,#0x60+var_54]
LDRB            R0, [R0]
CMP             R0, #1
MOVNE           R7, #0
MOVEQ           R7, #1
ADD             R0, SP, #0x60+var_58
CMP             R1, R0
BNE             loc_25B9FC
LDR             R0, [SP,#0x60+var_5C]
CMP             R0, #0
BEQ             loc_25B9FC
ADD             R4, R0, #0x5C ; '\'
STR             R5, [R0,#0x5C]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R0, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R4, R0, #0x58 ; 'X'
STR             R6, [R0,#-0x58]
LDR             R1, =sub_5A2F60
MOV             R3, #1
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x28 ; '('
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R0, R0, #4
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x60+var_58]
CMP             R7, #0
STR             R1, [R0,#4]
STR             R0, [R1]
BEQ             loc_25BA1C
LDR             R0, [R8]
BL              sub_254A84
STRB            R10, [R9,#8]
ADD             SP, SP, #0x3C ; '<'
POP             {R4-R11,PC}
LDR             R0, [R8]
ADD             R2, SP, #0x60+var_3C
MOV             R1, #0
MOV             R4, R1
LDR             R3, [R0,#0x74]!
ADD             R0, R0, #4
STR             R0, [SP,#0x60+var_3C]
STR             R3, [SP,#0x60+var_40]
LDR             R3, [R0,#4]
STR             R3, [SP,#0x60+var_38]
STR             R2, [R3]
STR             R2, [R0,#4]
LDR             R0, [SP,#0x60+var_40]
LDRB            R0, [R0]
CMP             R0, #5
BNE             loc_25BAE0
LDR             R0, [R8]
ADD             R2, SP, #0x60+var_58
MOV             R4, #1
LDR             R3, [R0,#0x80]!
ADD             R0, R0, #4
STR             R0, [SP,#0x60+var_58]
STR             R3, [SP,#0x60+var_5C]
LDR             R3, [R0,#4]
STR             R3, [SP,#0x60+var_54]
STR             R2, [R3]
STR             R2, [R0,#4]
LDR             R0, [SP,#0x60+var_5C]
LDRB            R0, [R0,#0xC]
CMP             R0, #0xA
BNE             loc_25BAE0
LDR             R0, [R8]
ADD             R1, SP, #0x60+var_4C
LDR             R2, [R0,#0x68]!
ADD             R0, R0, #4
STR             R0, [SP,#0x60+var_4C]
STR             R2, [SP,#0x60+var_50]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x60+var_48]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x60+var_50]
MOV             R1, #1
LDRB            R0, [R0]
CMP             R0, #0xC
MOVEQ           R7, #1
BEQ             loc_25BAE4
MOV             R7, #0
CMP             R1, #0
BEQ             loc_25BB24
LDR             R1, [SP,#0x60+var_48]
ADD             R0, SP, #0x60+var_4C
CMP             R1, R0
BNE             loc_25BB18
LDR             R0, [SP,#0x60+var_50]
CMP             R0, #0
BEQ             loc_25BB18
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x60+var_4C]
STR             R1, [R0,#4]
STR             R0, [R1]
CMP             R4, #0
BEQ             loc_25BB64
LDR             R1, [SP,#0x60+var_54]
ADD             R0, SP, #0x60+var_58
CMP             R1, R0
BNE             loc_25BB58
LDR             R0, [SP,#0x60+var_5C]
CMP             R0, #0
BEQ             loc_25BB58
BL              sub_257494
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x60+var_58]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R1, [SP,#0x60+var_38]
ADD             R0, SP, #0x60+var_3C
CMP             R1, R0
BNE             loc_25BBDC
LDR             R0, [SP,#0x60+var_40]
CMP             R0, #0
BEQ             loc_25BBDC
ADD             R4, R0, #0x5C ; '\'
STR             R5, [R0,#0x5C]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R0, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x58 ; 'X'
STR             R6, [R0,#-0x58]
LDR             R1, =sub_5A2F60
MOV             R3, #1
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x28 ; '('
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #4
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x60+var_3C]
CMP             R7, #0
STR             R1, [R0,#4]
STR             R0, [R1]
BEQ             loc_25BA1C
LDR             R0, [R8]
ADD             R0, R0, #0x13000
LDR             R0, [R0,#0x24C]
BL              sub_5CAF2C
CMP             R0, #0
LDREQ           R0, [R8]
MOV             R11, #1
STRBEQ          R11, [R0,#0x19]
LDR             R7, [R8]
LDRB            R0, [R7,#0x19]
CMP             R0, #0
LDRBEQ          R0, [R7,#0x1A]
CMPEQ           R0, #0
BEQ             loc_25BC84
LDR             R0, [R7,#0x14]
LDR             R4, [R7,#0x10]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_25BC48
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
STR             R4, [R7,#0x14]
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#8]
MOV             R0, R4
BLX             R2
LDR             R0, [R7,#0xC]
CMP             R0, #0
BEQ             loc_25BA1C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R10, [R7,#0xC]
ADD             SP, SP, #0x3C ; '<'
POP             {R4-R11,PC}
ADD             R8, R7, #0x12400
ADD             R8, R8, #0x394
LDR             R5, [R8,#0x25C]
LDR             R6, [R8,#0x258]
CMP             R6, R5
BEQ             loc_25BCD8
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_25BCC4
LDR             R1, [R4]
CMP             R1, #0
ADDNE           R0, SP, #0x60+var_28
BLNE            sub_5CAE88
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_25BC9C
LDR             R0, [R8,#0x258]
STR             R0, [R8,#0x25C]
ADD             R8, R7, #0x12800
ADD             R8, R8, #0x1F4
LDR             R5, [R8,#0x25C]
LDR             R6, [R8,#0x258]
CMP             R6, R5
BEQ             loc_25BD34
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_25BD20
LDR             R1, [R4]
CMP             R1, #0
ADDNE           R0, SP, #0x60+var_28
BLNE            sub_5CBAC4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_25BCF8
LDR             R0, [R8,#0x258]
STR             R0, [R8,#0x25C]
MOV             R0, R7
BL              sub_253A54
LDR             R0, [R7,#0x74]
NOP
BL              sub_25B094
LDR             R0, [R7,#0x68]
NOP
BL              sub_259BF8
LDR             R0, [R7,#0x80]
NOP
BL              sub_25675C
STRB            R11, [R9,#8]
ADD             SP, SP, #0x3C ; '<'
POP             {R4-R11,PC}
