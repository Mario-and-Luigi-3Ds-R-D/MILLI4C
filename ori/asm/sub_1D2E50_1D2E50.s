MOV             R1, #1
NOP
PUSH            {R3-R11,LR}
MOV             R7, #0
MOV             R8, R0
MOV             R9, R1
LDR             R0, =0x10645C
ADD             R6, R8, R0
LDR             R0, [R6,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
BEQ             loc_1D2EA8
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_4E2C80
LDR             R4, [R4,#8]
CMP             R4, R7
BNE             loc_1D2E8C
LDR             R0, =loc_19CF44
ADD             R4, R8, R0
LDR             R0, [R4]
BIC             R0, R0, #1
STR             R0, [R4]
LDR             R0, [R6,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R5, #0
ADDNE           R5, R0, #0x1AC
CMP             R5, #0
BEQ             loc_1D2F0C
CMP             R5, #0
MOVEQ           R0, #0
SUBNE           R0, R5, #0x1AC
BL              sub_5EBF20
CMP             R0, #0
NOP
BEQ             loc_1D2F00
LDR             R0, [R4]
ORR             R0, R0, #1
STR             R0, [R4]
LDR             R5, [R5,#8]
CMP             R5, R7
BNE             loc_1D2ED8
MOV             R0, R8
BL              sub_5295A8
MOV             R0, R8
NOP
BL              sub_52FA94
MOVS            R10, R0
NOP
BEQ             loc_1D2F84
LDRH            R0, [R10,#0x10]
BL              sub_47FF54
CMP             R0, #0
NOP
BEQ             loc_1D2F84
LDR             R0, [R4]
TST             R0, #2
BNE             loc_1D2F84
LDR             R0, [R6,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R5, #0
ADDNE           R5, R0, #0x1AC
CMP             R5, #0
BEQ             loc_1D2F84
CMP             R5, #0
MOVEQ           R0, #0
SUBNE           R0, R5, #0x1AC
BL              sub_4E255C
LDR             R5, [R5,#8]
CMP             R5, R7
BNE             loc_1D2F68
LDR             R0, [R4]
TST             R0, #3
BNE             locret_1D3260
LDR             R0, =0x19CF48
LDR             R0, [R8,R0]
TST             R0, #2
BNE             locret_1D3260
LDR             R0, =word_19D69E
LDRH            R0, [R0,R8]
CMP             R0, #0
BNE             locret_1D3260
MOV             R0, R8
BL              sub_52C510
LDR             R0, =byte_19CF34
TST             R9, #2
STRB            R7, [R8,R0]
BEQ             loc_1D2FDC
MOV             R0, R8
BL              sub_1D0C20
CMP             R0, #0
NOP
BNE             locret_1D3260
MOV             R0, R8
BL              sub_5EE468
CMP             R0, #0
ADD             R0, R8, #0x1A0000
STR             R0, [SP,#0x28+var_28]
LDRBNE          R0, [R0,#0x74]
CMPNE           R0, #0
BNE             locret_1D3260
LDR             R0, =0x10643C
ADD             R0, R0, R8
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x3F4
ADDNE           R5, R0, #0x3F4
MOVEQ           R5, #0
CMP             R5, #0
BEQ             loc_1D3068
CMP             R5, #0
MOVEQ           R0, #0
SUBNE           R0, R5, #0x3F4
LDR             R0, [R0,#0x4C8]
CMP             R0, #0
BEQ             loc_1D305C
MOVS            R0, R5
SUBNE           R0, R5, #0x3F4
LDRH            R0, [R0,#0x10]
AND             R0, R0, #0xF000
CMP             R0, #0x3000
BEQ             loc_1D305C
MOVS            R0, R5
SUBNE           R0, R5, #0x3F4
BL              sub_501804
LDR             R5, [R5,#8]
CMP             R5, R7
BNE             loc_1D3020
LDR             R0, [R6,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R5, #0
ADDNE           R5, R0, #0x1AC
CMP             R5, #0
BEQ             loc_1D30A4
CMP             R5, #0
MOVEQ           R0, #0
SUBNE           R0, R5, #0x1AC
MOV             R1, #2
BL              sub_4E3ED8
LDR             R5, [R5,#8]
CMP             R5, R7
BNE             loc_1D3084
TST             R9, #1
BEQ             loc_1D3264
CMP             R10, #0
BEQ             loc_1D30D8
LDRH            R0, [R10,#0x10]
BL              sub_47FF28
MOV             R9, R0
LDRH            R0, [R10,#0x10]
BL              sub_47FF54
CMP             R0, #0
MOVNE           R11, #1
BNE             loc_1D3144
B               loc_1D3140
MOV             R0, R8
BL              sub_52951C
CMP             R0, #0
NOP
BNE             loc_1D30F8
LDR             R0, [R4]
TST             R0, #8
BEQ             loc_1D3264
MOV             R9, #0
MOV             R0, R8
BL              sub_52951C
CMP             R0, #0
NOP
BEQ             loc_1D3134
MOV             R0, R8
BL              sub_52951C
LDR             R0, [R0,#0x18]
LDR             R0, [R0]
LDRH            R0, [R0,#0x10]
BL              sub_47FF54
MOV             R9, R0
NOP
B               loc_1D3140
LDR             R0, [R4]
TST             R0, #8
MOVNE           R9, #1
MOV             R11, #0
LDR             R0, [R4]
BIC             R0, R0, #2
STR             R0, [R4]
LDR             R0, =0x10646C
ADD             R0, R0, R8
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R5, #0
ADDNE           R5, R0, #0x1AC
CMP             R5, #0
BEQ             loc_1D323C
LDR             R0, [R4]
CMP             R5, #0
MOVEQ           R6, #0
SUBNE           R6, R5, #0x1AC
TST             R0, #0x40
BEQ             loc_1D319C
LDRB            R0, [R6,#0x21D]
CMP             R0, #0
BEQ             loc_1D3230
B               loc_1D31BC
MOV             R0, R6
BL              sub_5ED140
CMP             R0, #0
NOP
BEQ             loc_1D31BC
LDRB            R0, [R6,#0x21D]
CMP             R0, #0
BEQ             loc_1D3230
CMP             R9, #0
BEQ             loc_1D31DC
MOV             R1, #8
MOV             R0, R6
BL              sub_4FFF08
NOP
NOP
B               loc_1D3210
CMP             R11, #0
BEQ             loc_1D3210
CMP             R10, R6
BNE             loc_1D3204
MOV             R1, #7
MOV             R0, R6
BL              sub_4FFF08
NOP
NOP
B               loc_1D3210
MOV             R1, #9
MOV             R0, R6
BL              sub_4FFF08
MOV             R0, R6
BL              sub_5ED270
CMP             R0, #0
NOP
BEQ             loc_1D3230
LDR             R0, [R4]
ORR             R0, R0, #2
STR             R0, [R4]
LDR             R5, [R5,#8]
CMP             R5, R7
BNE             loc_1D3174
LDR             R0, [R4]
TST             R0, #2
BEQ             loc_1D3264
LDR             R2, =unk_653FC0
LDR             R0, [SP,#0x28+var_28]
LDR             R1, [R2,#(off_653FD4 - 0x653FC0)]; sub_1D3D5C
LDR             R2, [R2,#(dword_653FD8 - 0x653FC0)]
ADD             R0, R0, #0x5C ; '\'
STM             R0, {R1,R2}
POP             {R3-R11,PC}
MOV             R0, R8
POP             {R3-R11,LR}
B               sub_1D1D00
