PUSH            {R4-R12,LR}
MOV             R6, R0
ADD             R8, R0, #0x1A0000
ADD             R9, R0, #0x190000
ADD             R9, R9, #0xCF00
LDR             R11, =unk_653FC0
LDRB            R0, [R9,#0x2C]
MOV             R7, #0
CMP             R0, #0
BEQ             loc_1D1DCC
LDR             R0, =0x10645C
ADD             R0, R0, R6
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
ADDNE           R4, R0, #0x1AC
LDR             R0, =byte_19CF2C
MOVEQ           R4, #0
CMP             R4, #0
ADD             R10, R6, R0
BEQ             loc_1D1DC8
CMP             R4, #0
MOVEQ           R5, #0
SUBNE           R5, R4, #0x1AC
MOV             R0, R5
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_1D1DAC
LDRB            R0, [R9,#0x28]
CMP             R0, #0
BNE             loc_1D1DAC
LDR             R0, [R5]
LDR             R1, [R0,#0xC]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BEQ             loc_1D1DAC
MOV             R0, R5
BL              sub_14760C
MOV             R1, #0
STR             R0, [R5,#0x140]
STRB            R1, [R10]
LDR             R4, [R4,#8]
CMP             R4, R7
BNE             loc_1D1D54
LDRB            R0, [R9,#0x2C]
CMP             R0, #0
LDRDEQ          R0, R1, [R11,#(off_653FD4 - 0x653FC0)]
BEQ             loc_1D1EF0
STRB            R7, [R10]
MOV             R1, #1
MOV             R0, R6
BL              sub_52C858
LDR             R0, =loc_19CF44
ADD             R4, R6, R0
LDR             R0, [R4]
BIC             R0, R0, #0x3FC
STR             R0, [R4]
MOV             R0, R6
BL              sub_1D1C80
CMP             R0, #0
NOP
BEQ             loc_1D1E3C
LDR             R0, =0x19DE60
MOV             R10, #1
LDRB            R0, [R0,R6]
CMP             R0, #0
BEQ             loc_1D1EC4
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528E64
MOV             R5, R0
MOV             R0, R6
BL              sub_5EE448
CMP             R0, #2
NOP
BEQ             loc_1D1E4C
B               loc_1D1E74
LDR             R1, =off_654104
LDM             R1, {R0,R1}
STRD            R0, R1, [R8,#0x5C]
POP             {R4-R12,PC}
NOP
BL              sub_48004C
CMP             R0, #0
NOP
BEQ             loc_1D1E74
LDRH            R0, [R5,#0x10]
SUB             R1, R0, #0x1000
SUBS            R1, R1, #1
LDREQ           R0, =0x10D4D8
ADDEQ           R5, R6, R0
MOV             R1, R5
MOV             R0, R6
BL              sub_52FB58
MOV             R3, #0
MOV             R2, R3
ADD             R1, R6, #0x68 ; 'h'
MOV             R0, #0x38 ; '8'
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R5
BLNE            sub_311814
STR             R0, [R5,#0x140]
LDR             R0, [R4]
ORR             R0, R0, #0x10
STR             R0, [R4]
MOV             R0, R6
BL              sub_1D0704
LDRD            R0, R1, [R11,#(off_654054 - 0x653FC0)]
NOP
B               loc_1D1EF0
MOV             R0, R6
BL              sub_1D3D64
CMP             R0, #0
NOP
BNE             locret_1D1E48
MOV             R0, R6
BL              sub_1D0C20
CMP             R0, #0
LDRNE           R1, =off_65410C
BNE             loc_1D2020
B               loc_1D1EF8
STRD            R0, R1, [R8,#0x5C]
POP             {R4-R12,PC}
LDR             R0, =sub_19D6B8
ADD             R0, R0, R6
MOV             R9, R0
BL              sub_3D476C
LDR             R0, =0x10646C
MOV             R5, #0
ADD             R0, R0, R6
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
ADDNE           R4, R0, #0x1AC
MOVEQ           R4, #0
CMP             R4, #0
BEQ             loc_1D1F60
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_5EC344
LDR             R4, [R4,#8]
CMP             R0, #0
ADDNE           R0, R5, #1
ANDNE           R5, R0, #0xFF
CMP             R4, R7
BNE             loc_1D1F30
CMP             R5, #0
BNE             loc_1D1F68
MOV             R0, R9
BL              sub_3D41B8
LDR             R0, =0x119888
MOV             R1, #1
ADD             R4, R6, R0
MOV             R0, R4
BL              sub_337610
LDR             R1, =off_654114
LDM             R1, {R0,R1}
STRD            R0, R1, [R8,#0x5C]
MOV             R0, R4
BL              sub_3375F4
CMP             R0, #0
NOP
BEQ             locret_1D1E48
LDR             R0, =0x120F4C
ADD             R0, R0, R6
BL              sub_5CEA34
CMP             R0, #0
NOP
BEQ             locret_1D1E48
LDR             R0, =word_19D6A0
LDRSH           R0, [R0,R6]
CMP             R0, #0
BGT             locret_1D1E48
MOV             R1, #0
MOV             R0, R4
BL              sub_337610
MOV             R0, R6
NOP
BL              sub_1D1C80
CMP             R0, #0
NOP
BEQ             loc_1D2028
MOV             R1, R6
ADD             R0, R6, #8
BL              sub_1481B0
MOVS            R1, R0
NOP
BEQ             loc_1D2028
ADD             R0, R6, #0x1A0000
ADD             R0, R0, #0x80
STRB            R10, [R8,#0x84]
STR             R0, [R1,#0x14]
LDR             R0, =0x1064D8
ADD             R0, R0, R6
BL              sub_1DFCE0
LDR             R1, =off_65411C
LDM             R1, {R0,R1}
B               loc_1D1EF0
LDR             R1, =off_654104
LDM             R1, {R0,R1}
STRD            R0, R1, [R8,#0x5C]
MOV             R0, R6
POP             {R4-R12,LR}
B               sub_1D1754
