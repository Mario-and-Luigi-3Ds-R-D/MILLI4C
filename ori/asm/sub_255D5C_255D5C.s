PUSH            {R3-R11,LR}
MOV             R6, R0
LDR             R0, =off_6BBCF8
STR             R0, [R6]
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528C8C
LDR             R0, [R6,#8]
MOV             R9, #0
CMP             R0, #0
BEQ             loc_255D98
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R9, [R6,#8]
LDR             R0, [R6,#0xC]
CMP             R0, #0
BEQ             loc_255DB4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R9, [R6,#0xC]
LDR             R0, [R6,#0x10]
CMP             R0, #0
BEQ             loc_255DD0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R9, [R6,#0x10]
LDR             R0, [R6,#0x8C]
CMP             R0, #0
BEQ             loc_255DE4
BL              sub_300FD4
STR             R9, [R6,#0x8C]
LDR             R0, [R6,#0x5C]
CMP             R0, #0
BEQ             loc_255DFC
LDR             R1, =dword_6E2378
LDR             R0, [R0]
STRH            R0, [R1,#(word_6E23A4 - 0x6E2378)]
LDR             R1, [R6,#0x70]
ADD             R0, R6, #0x6C ; 'l'
MOV             R5, #0
CMP             R1, R0
ADD             R4, R6, #0x68 ; 'h'
BNE             loc_2562F4
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_255E30
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
STR             R5, [R4]
LDR             R1, [R6,#0x7C]
LDR             R10, =off_6B7BEC
LDR             R11, =off_6B7BFC
ADD             R0, R6, #0x78 ; 'x'
CMP             R1, R0
MOV             R7, #0
ADD             R5, R6, #0x74 ; 't'
BNE             loc_256310
LDR             R4, [R5]
CMP             R4, #0
BEQ             loc_255EB8
STR             R10, [R4,#0x5C]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R4, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x58 ; 'X'
STR             R11, [R0,#-0x58]
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
STR             R7, [R5]
LDR             R2, [R6,#0x64]
ADD             R0, R6, #0x60 ; '`'
MOV             R5, #0
CMP             R2, R0
ADD             R4, R6, #0x5C ; '\'
BNE             loc_25632C
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_255EF0
BL              sub_257C2C
NOP
NOP
BL              sub_300FD4
ADD             R8, R6, #0x12800
ADD             R8, R8, #0x1F4
STR             R5, [R4]
LDR             R5, [R8,#0x25C]
LDR             R7, [R8,#0x258]
CMP             R7, R5
BEQ             loc_255F48
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_255F34
LDR             R1, [R4]
CMP             R1, #0
MOVNE           R0, SP
BLNE            sub_5CBAC4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_255F0C
LDR             R0, [R8,#0x258]
STR             R0, [R8,#0x25C]
ADD             R8, R6, #0x12400
ADD             R8, R8, #0x394
LDR             R5, [R8,#0x25C]
LDR             R7, [R8,#0x258]
CMP             R7, R5
BEQ             loc_255FA4
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_255F90
LDR             R1, [R4]
CMP             R1, #0
MOVNE           R0, SP
BLNE            sub_5CAE88
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_255F68
LDR             R0, [R8,#0x258]
STR             R0, [R8,#0x25C]
LDRB            R0, [R6,#0x30]
CMP             R0, #0
LDRNE           R0, [R6,#0x20]
CMPNE           R0, #0
BEQ             loc_255FC8
BL              sub_110D10
STR             R9, [R6,#0x20]
LDRB            R0, [R6,#0x44]
CMP             R0, #0
LDRNE           R0, [R6,#0x34]
CMPNE           R0, #0
BEQ             loc_255FE4
BL              sub_110D10
STR             R9, [R6,#0x34]
LDRB            R0, [R6,#0x58]
CMP             R0, #0
LDRNE           R0, [R6,#0x48]
CMPNE           R0, #0
BEQ             loc_256000
BL              sub_110D10
STR             R9, [R6,#0x48]
ADD             R4, R6, #0x13000
ADD             R4, R4, #0x24C
ADD             R1, R6, #0x13000
LDR             R0, [R4,#8]
ADD             R1, R1, #0x250
CMP             R0, R1
BNE             loc_25602C
LDR             R1, [R4]
CMP             R1, #0
MOVNE           R0, SP
BLNE            sub_5CBAC4
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
STR             R0, [R1,#4]
STR             R1, [R0]
SUB             R0, R4, #0x400
SUB             R0, R0, #0x1F8
BL              sub_503254
SUB             R7, R0, #8
LDR             R5, [R0,#-4]!
LDR             R6, [R0,#-4]
CMP             R6, R5
BEQ             loc_256098
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_256084
LDR             R1, [R4]
CMP             R1, #0
MOVNE           R0, SP
BLNE            sub_5CBAC4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_25605C
LDR             R5, [R7,#-0x25C]!
LDR             R6, [R7,#-4]!
CMP             R6, R5
BEQ             loc_2560E4
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_2560D0
LDR             R1, [R4]
CMP             R1, #0
MOVNE           R0, SP
BLNE            sub_5CAE88
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_2560A8
LDR             R5, [R7,#-0x26C]
SUB             R6, R7, #0x26C
LDR             R0, [R5,#8]
CMP             R0, R5
BEQ             loc_256134
ADD             R1, R0, #4
LDM             R1, {R1,R2}
MOV             R4, R1
STR             R1, [R2,#4]
ADD             R1, R0, #4
LDM             R1, {R1,R2}
STR             R2, [R1,#8]
STR             R9, [R0,#8]
STR             R9, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R0, [R4,#8]
CMP             R0, R5
BNE             loc_2560F8
SUB             R0, R6, #0x12000
SUB             R0, R0, #0x6F0
BL              sub_2585C8
SUB             R4, R0, #0x10
LDR             R0, [R0,#-8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_256170
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_256170
BL              sub_257494
NOP
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
BNE             loc_2561F8
LDR             R5, [R4]
CMP             R5, #0
BEQ             loc_2561F8
STR             R10, [R5,#0x5C]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R5, #0x18
BLX             sub_1009D8
MOV             R0, R5
NOP
NOP
SUB             R5, R0, #0x58 ; 'X'
STR             R11, [R0,#-0x58]
LDR             R1, =sub_5A2F60
MOV             R3, #1
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x28 ; '('
BLX             sub_1009D8
MOV             R0, R5
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
BNE             loc_256238
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_256238
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
SUB             R4, R4, #0xC
STR             R0, [R1,#4]
STR             R1, [R0]
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_256278
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_256278
BL              sub_257C2C
NOP
NOP
BL              sub_300FD4
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
SUB             R4, R4, #0x14
STR             R0, [R1,#4]
STR             R1, [R0]
LDRB            R0, [R4,#0x10]
CMP             R0, #0
LDRNE           R0, [R4]
CMPNE           R0, #0
BEQ             loc_2562A8
BL              sub_110D10
STR             R9, [R4]
SUB             R4, R4, #0x14
LDRB            R0, [R4,#0x10]
CMP             R0, #0
LDRNE           R0, [R4]
CMPNE           R0, #0
BEQ             loc_2562C8
BL              sub_110D10
STR             R9, [R4]
SUB             R5, R4, #0x34 ; '4'
SUB             R4, R4, #0x14
LDRB            R0, [R4,#0x10]
CMP             R0, #0
LDRNE           R0, [R4]
CMPNE           R0, #0
BEQ             loc_2562EC
BL              sub_110D10
STR             R9, [R4]
MOV             R0, R5
POP             {R3-R11,PC}
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_255E30
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_255EB8
LDR             R1, [R4,#4]
ADD             R0, R4, #4
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_255EF0
