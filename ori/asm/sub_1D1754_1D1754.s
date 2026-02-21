PUSH            {R4-R9,LR}
MOV             R6, #0
MOV             R7, R0
SUB             SP, SP, #0xC
LDR             R0, =0x10645C
ADD             R0, R0, R7
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
MOVNE           R9, #0x64 ; 'd'
MOVNE           R8, R6
BEQ             loc_1D1834
CMP             R4, #0
MOVEQ           R5, #0
SUBNE           R5, R4, #0x1AC
MOV             R0, R5
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_1D1828
STR             R8, [SP,#0x28+var_28]
LDRB            R1, [R5,#0x495]
MOV             R3, #1
MOV             R2, #0x46 ; 'F'
MOV             R0, R7
BL              sub_5EEC7C
CMP             R0, #0
NOP
BEQ             loc_1D1828
MOV             R2, #1
MOV             R1, R2
ADD             R0, R5, #0x40 ; '@'
BL              sub_5C71F0
CMP             R0, #0
NOP
BNE             loc_1D1828
MOV             R2, #1
MOV             R0, SP
MOV             R1, R2
BL              sub_1CCBB4
STRB            R9, [SP,#0x28+var_28+1]
STRB            R8, [SP,#0x28+var_24]
STRB            R8, [SP,#0x28+var_28+2]
STRB            R8, [SP,#0x28+var_23]
MOV             R2, #0
MOV             R1, SP
ADD             R0, R5, #0x40 ; '@'
STRB            R8, [SP,#0x28+var_28+3]
STRB            R8, [SP,#0x28+var_22]
BL              sub_1CE4EC
LDR             R4, [R4,#8]
CMP             R4, R6
BNE             loc_1D1790
MOV             R0, R7
BL              sub_1D1C80
MOV             R8, R0
LDR             R0, =0x10646C
MOV             R5, #0
ADD             R0, R0, R7
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
BEQ             loc_1D1890
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_5EC344
LDR             R4, [R4,#8]
CMP             R0, #0
ADDNE           R0, R5, #1
ANDNE           R5, R0, #0xFF
CMP             R4, R6
BNE             loc_1D1868
LDR             R9, =dword_6E2378
CMP             R8, #0
ADD             R4, R7, #0x1A0000
BEQ             loc_1D18B4
CMP             R5, #0
BEQ             loc_1D18D4
LDR             R1, =off_654124
LDM             R1, {R0,R1}
B               loc_1D1940
MOV             R0, R7
BL              sub_5EE554
CMP             R0, #3
MOVNE           R0, #1
MOVEQ           R0, #2
STRBNE          R0, [R9,#(byte_6E2389 - 0x6E2378)]
BNE             loc_1D192C
B               loc_1D194C
ADD             R0, R7, #0x190000
ADD             R0, R0, #0xD600
LDRH            R1, [R0,#0xA6]
CMP             R1, #0
BNE             loc_1D1928
LDRH            R0, [R0,#0xA8]
CMP             R0, #0
BEQ             loc_1D1928
LDR             R0, =0x10D94C
LDR             R0, [R7,R0]
CMP             R0, #0
BNE             loc_1D1928
LDR             R0, =0x10E518
LDR             R0, [R7,R0]
CMP             R0, #0
BNE             loc_1D1928
LDR             R0, =dword_19CF60
LDR             R0, [R0,R7]
CMP             R0, #0
MOVEQ           R0, #4
BEQ             loc_1D194C
STRB            R6, [R9,#(byte_6E2389 - 0x6E2378)]
MOV             R1, #5
MOV             R0, R7
BL              sub_529254
LDR             R1, =unk_653FC0
LDRD            R0, R1, [R1,#(off_65405C - 0x653FC0)]
STRD            R0, R1, [R4,#0x5C]
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
STRB            R0, [R9,#(byte_6E2389 - 0x6E2378)]
B               loc_1D192C
