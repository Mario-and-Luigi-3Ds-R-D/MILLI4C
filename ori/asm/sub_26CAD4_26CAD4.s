PUSH            {R4-R9,LR}
MOV             R4, R0
ADD             R5, R0, #0x1C
MOV             R7, R1
LDR             R0, =off_6CE970
MOV             R9, R3
MOV             R8, R2
MOV             R3, #0
LDR             R0, [R0]
SUB             SP, SP, #0xC
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x6D4
BL              sub_10A358
CMP             R0, #0
MOVEQ           R6, #0
BEQ             loc_26CB24
MOV             R1, R9
BL              sub_2739FC
MOV             R6, R0
LDR             R1, [R5,#8]
ADD             R0, R5, #4
CMP             R1, R0
BNE             loc_26CC34
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_26CB50
BL              sub_273C74
NOP
NOP
BL              sub_300FD4
STR             R6, [R5]
LDR             R0, [R4,#0x1C]
MOV             R1, R9
BL              sub_2715F4
LDR             R0, [R7]
ADD             R1, SP, #0x28+var_24
LDR             R2, [R0,#0x10]!
ADD             R0, R0, #4
STR             R0, [SP,#0x28+var_24]
STR             R2, [SP,#0x28+var_28]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x28+var_20]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [R4,#0x1C]
MOV             R1, SP
BL              sub_26D51C
LDR             R1, [SP,#0x28+var_20]
ADD             R5, SP, #0x28+var_24
CMP             R1, R5
BNE             loc_26CBBC
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_26CBBC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x28+var_24]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R8]
ADD             R1, SP, #0x28+var_24
LDR             R2, [R0,#4]!
ADD             R0, R0, #4
STR             R0, [SP,#0x28+var_24]
STR             R2, [SP,#0x28+var_28]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x28+var_20]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [R4,#0x1C]
MOV             R1, SP
BL              sub_26D51C
LDR             R0, [SP,#0x28+var_20]
CMP             R0, R5
BNE             loc_26CC20
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_26CC20
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x28+var_24]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_26CB50
