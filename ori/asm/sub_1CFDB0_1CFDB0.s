PUSH            {R4-R9,LR}
SUB             SP, SP, #0x14
MOV             R5, R1
MOV             R6, R0
BL              sub_1D3958
CMP             R0, #0
BNE             loc_1D002C
MOV             R1, R5
MOV             R0, R6
BL              sub_52FB58
LDR             R0, =byte_19CF2F
MOV             R7, #0
STRB            R7, [R6,R0]
MOV             R0, R5
BL              sub_5EC230
CMP             R0, #0
BNE             loc_1CFFE4
ADD             R0, SP, #0x30+var_28
STR             R0, [SP,#0x30+var_30]
STR             R7, [SP,#0x30+var_28]
STR             R7, [SP,#0x30+var_24]
LDRB            R1, [R5,#0x495]
MOV             R3, #1
MOV             R2, #0x45 ; 'E'
MOV             R0, R6
BL              sub_5EEC7C
LDR             R9, =unk_653FC0
CMP             R0, #0
ADD             R8, R6, #0x1A0000
BEQ             loc_1CFF08
LDR             R1, =0x4B4
LDR             R0, [SP,#0x30+var_28]
LDRH            R1, [R1,R5]
CMP             R0, R1
BGT             loc_1CFF08
MOV             R3, #0
MOV             R2, R3
ADD             R1, R6, #0x68 ; 'h'
MOV             R0, #0x14
BL              sub_10A358
CMP             R0, #0
MOVEQ           R4, #0
BEQ             loc_1CFEF0
MOV             R1, #1
STRB            R1, [R0,#4]
LDR             R1, =off_6544B8
STRB            R7, [R0,#5]
STRH            R7, [R0,#6]
LDR             R6, =off_6CE970
ADD             R2, R0, #0xC
STR             R1, [R0]
STM             R2, {R5,R7}
MOV             R4, R0
LDR             R1, =unk_653FCC
LDR             R0, [R6]
MOV             R2, #2
BL              sub_529204
LDR             R0, [R6]
LDR             R1, =byte_19CF28
LDRB            R1, [R1,R0]; byte_19CF28
CMP             R1, #0
BEQ             loc_1CFEB4
BL              sub_52A608
STRB            R7, [R4,#8]
B               loc_1CFEF0
LDR             R0, [R4,#0xC]
MOV             R2, #1
MOV             R1, R2
ADD             R0, R0, #0x40 ; '@'
BL              sub_5C71F0
CMP             R0, #0
NOP
BEQ             loc_1CFEE8
LDR             R0, [R4,#0xC]
MOV             R2, #1
MOV             R1, R2
ADD             R0, R0, #0x40 ; '@'
BL              sub_1CE558
MOV             R0, #1
STRB            R0, [R4,#8]
STR             R4, [R5,#0x140]
LDRD            R0, R1, [R9,#(off_653FD4 - 0x653FC0)]
STRD            R0, R1, [R8,#0x5C]
ADD             SP, SP, #0x14
MOV             R0, #0
POP             {R4-R9,PC}
MOV             R2, #1
MOV             R1, #6
ADD             R0, R5, #0x40 ; '@'
BL              sub_5C71F0
CMP             R0, #0
NOP
BEQ             loc_1CFF34
MOV             R2, #1
MOV             R1, #6
ADD             R0, R5, #0x40 ; '@'
BL              sub_1CE558
LDR             R0, [R5]
LDR             R1, [R0,#0xC]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BEQ             loc_1CFFE4
MOV             R0, R5
BL              sub_5EBE00
CMP             R0, #0
NOP
BNE             loc_1CFFE4
LDR             R0, =0x10646C
ADD             R0, R0, R6
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
BEQ             loc_1CFFE4
CMP             R4, #0
LDR             R1, =byte_6CE7C8
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_5EC180
CMP             R0, #0
NOP
BEQ             loc_1CFFD8
STR             R7, [SP,#0x30+var_30]
LDRB            R1, [R5,#0x495]
MOV             R3, #1
MOV             R2, #0x3B ; ';'
MOV             R0, R6
BL              sub_5EEC7C
CMP             R0, #0
NOP
BEQ             loc_1D0004
LDRB            R0, [R5,#0x4A5]
CMP             R0, #0
BEQ             loc_1CFFF0
B               loc_1D0004
LDR             R4, [R4,#8]
CMP             R4, R7
BNE             loc_1CFF84
ADD             SP, SP, #0x14
MOV             R0, #1
POP             {R4-R9,PC}
LDR             R0, =loc_19CF44
ADD             R0, R0, R6
LDR             R1, [R0]
ORR             R1, R1, #0x100
STR             R1, [R0]
LDR             R0, =byte_19CF28
LDRB            R0, [R0,R6]
CMP             R0, #0
LDRDEQ          R0, R1, [R9,#(off_653FDC - 0x653FC0)]
BEQ             loc_1D0028
MOV             R0, R6
BL              sub_52A608
LDR             R1, =off_65413C
LDM             R1, {R0,R1}
STRD            R0, R1, [R8,#0x5C]
ADD             SP, SP, #0x14
MOV             R0, #0
POP             {R4-R9,PC}
