NOP
PUSH            {R4-R12,LR}
MOV             R6, #0
MOV             R8, R0
MOV             R4, R6
ADD             R5, R0, #0x400
LDR             R11, =unk_64E7C4
LDR             R10, =off_6CE970
CMP             R4, #1
BNE             loc_21B134
LDR             R0, [R10]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xCF00
LDRB            R0, [R0,#0x28]
CMP             R0, #0
BEQ             loc_21B1E0
LDR             R9, [R8,#0x480]
CMP             R9, #0
BEQ             loc_21B148
CMP             R4, #0
BEQ             loc_21B158
LDRSB           R1, [R5,#0x95]
LDR             R0, =unk_64E804
ADD             R0, R0, R1,LSL#3
LDR             R9, [R0,R4,LSL#2]
LDRSB           R0, [R5,#0x95]
ADD             R0, R11, R0,LSL#2
ADD             R0, R0, R4,LSL#1
LDRH            R1, [R0]
LDR             R0, [R10]
BL              sub_52FACC
MOV             R7, R0
LDR             R0, [R0]
LDR             R1, [R0,#0x10]
MOV             R0, R7
BLX             R1
CMP             R0, #0
BNE             loc_21B1A4
LDR             R0, [R7]
LDR             R1, [R0,#0x14]
MOV             R0, R7
BLX             R1
CMP             R0, #0
BEQ             loc_21B1AC
ADD             R6, R6, #1
B               loc_21B1D4
MOV             R3, #0
MOV             R2, #0x10000
MOV             R1, R9
MOV             R0, R7
BL              sub_572670
LDR             R2, [R10]
LDR             R0, =sub_10640C
MOV             R1, R7
ADD             R0, R0, R2
BL              sub_1CF9FC
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_21B114
CMP             R6, #2
MOVNE           R0, #0
STRBNE          R0, [R8,#0x48A]
LDRB            R0, [R8,#0xB14]
CMP             R0, #8
BEQ             locret_21B208
MOV             R0, R8
POP             {R4-R12,LR}
MOV             R1, #8
B               sub_4E3ED8
POP             {R4-R12,PC}
