PUSH            {R3-R11,LR}
MOV             R6, R0
MOV             R11, #1
LDR             R8, =dword_6E2378
MOV             R10, #0
LDRB            R0, [R8,#(byte_6E238B - 0x6E2378)]
CMP             R0, #1
CMPNE           R0, #2
CMPNE           R0, #3
BNE             loc_1D21D8
MOV             R3, #1
MOV             R2, #4
MOV             R1, R3
MOV             R0, R6
BL              sub_52A660
LDRB            R4, [R8,#(byte_6E238C - 0x6E2378)]
BL              sub_47FFCC
CMP             R0, #0
BEQ             loc_1D20D8
BL              sub_50F1A4
B               loc_1D20E0
NOP
BL              sub_50F2B8
LDRD            R0, R1, [R0]
SUB             R1, R1, R0
CMP             R4, R1,ASR#1
ADDCC           R0, R0, R4,LSL#1
LDRH            R0, [R0]
CMP             R0, #0
BEQ             loc_1D21D8
BL              sub_50F020
MOVS            R1, R0
NOP
BEQ             loc_1D21D8
LDR             R0, =0x10645C
MOV             R5, R10
ADD             R0, R0, R6
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R0, #0
ADDNE           R0, R0, #0x1AC
CMP             R0, #0
BEQ             loc_1D2178
CMP             R0, #0
MOVEQ           R2, #0
SUBNE           R2, R0, #0x1AC
MOV             R3, #2
LDRB            R12, [R2,#0x495]
MOV             R2, #1
CMP             R12, #0
MOVNE           R2, R3
LDRB            R3, [R1,#5]
TST             R2, R3
BNE             loc_1D216C
MOVS            R2, R0
SUBNE           R2, R0, #0x1AC
STRB            R11, [R2,#0x14]
LDR             R0, [R0,#8]
CMP             R0, R5
BNE             loc_1D2134
LDR             R0, =0x10646C
ADD             R0, R0, R6
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
BEQ             loc_1D21D8
CMP             R4, #0
LDR             R1, =byte_6CE7C8
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_5EC180
CMP             R0, #0
NOP
BEQ             loc_1D21CC
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
STRB            R11, [R0,#0x14]
LDR             R4, [R4,#8]
CMP             R4, R5
BNE             loc_1D219C
LDR             R0, =off_10648C
MOV             R7, #0
ADD             R9, R6, R0
LDR             R0, [R9]
CMP             R0, #0
BEQ             loc_1D22B0
LDR             R1, [R0]
LDR             R1, [R1,#0x18]
BLX             R1
MOVS            R4, R0
BEQ             loc_1D22B0
LDR             R0, [R9]
CMP             R0, R4
BNE             loc_1D22B0
LDRH            R0, [R4,#0x10]
BL              sub_47FF54
CMP             R0, #0
NOP
BEQ             loc_1D223C
LDRH            R1, [R4,#0x10]
MOV             R0, R6
BL              sub_52F508
MOV             R7, #0x21C
LDRSB           R7, [R0,R7]
B               loc_1D22B0
LDRH            R0, [R4,#0x10]
BL              sub_47FF28
CMP             R0, #0
NOP
BEQ             loc_1D22B0
LDRH            R1, [R4,#0x10]
MOV             R0, R6
BL              sub_52F368
MOV             R4, R0
NOP
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_1D22B0
STR             R10, [SP,#0x28+var_28]
LDRB            R1, [R4,#0x495]
MOV             R3, #1
MOV             R2, #0x3B ; ';'
MOV             R0, R6
BL              sub_5EEC7C
CMP             R0, #0
NOP
BEQ             loc_1D22B0
LDRB            R1, [R4,#0x4A5]
ADD             R0, R4, #0x400
ADD             R0, R0, #0xA5
CMP             R1, #0
MOVEQ           R7, #1
STRBEQ          R11, [R0]
MOV             R0, R6
BL              sub_52A62C
MOV             R2, R0
LDR             R0, =0x10647C
MOV             R1, R7
ADD             R0, R0, R6
MOV             R4, R0
BL              sub_58E34C
MOV             R0, R6
NOP
BL              sub_52A62C
CMP             R0, #0
NOP
BEQ             loc_1D22F4
MOV             R1, #0
MOV             R0, R6
BL              sub_52A6CC
MOV             R0, R6
BL              sub_5EE508
CMP             R0, #0
NOP
BEQ             loc_1D233C
LDR             R0, =off_106494
LDRH            R0, [R0,R6]
CMP             R0, #0
BEQ             loc_1D233C
MOV             R1, #5
MOV             R0, R6
STRB            R10, [R8,#(byte_6E2389 - 0x6E2378)]
BL              sub_529254
LDR             R1, =unk_653FC0
ADD             R2, R6, #0x1A0000
LDRD            R0, R1, [R1,#(off_65405C - 0x653FC0)]
STRD            R0, R1, [R2,#0x5C]
B               loc_1D236C
MOV             R0, R6
BL              sub_5EE6F4
CMP             R0, #0
NOP
BEQ             loc_1D2374
LDR             R0, =word_19CF40
LDRB            R1, [R8,#(byte_6E238D - 0x6E2378)]
LDRH            R0, [R0,R6]
CMP             R1, R0
BHI             loc_1D2374
MOV             R0, R6
BL              sub_1D3B68
MOV             R0, #0
POP             {R3-R11,PC}
MOV             R0, R4
POP             {R3-R11,LR}
B               sub_58E520
