PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R1, #3
MOV             R9, #0
LDR             R0, =off_6CE970
VPUSH           {D8-D10}
SUB             SP, SP, #0x60
LDR             R0, [R0]
LDR             R5, [R2,#4]
ADD             R2, SP, #0x98+var_6C
ADD             R6, R0, #0x120000
ADD             R6, R6, #0x12C0
STRB            R1, [R6,#(off_12132C+3 - 0x1212C0)]
STRB            R9, [R6,#(sub_121330+1 - 0x1212C0)]
LDR             R0, [R4,#0x9C]
MOV             R1, R9
STR             R0, [SP,#0x98+var_6C]
MOV             R0, R6
BL              sub_12C9C4
REV             R0, R9
ADD             R2, SP, #0x98+var_6C
STR             R0, [SP,#0x98+var_6C]
MOV             R1, #1
MOV             R0, R6
BL              sub_12C9C4
MOV             R0, #0x300
STR             R0, [SP,#0x98+var_98]
MOV             R3, #0
MOV             R2, #1
ADD             R1, R6, #0x20 ; ' '
MOV             R0, R4
BL              sub_5C4A88
LDR             R0, [R4,#0x100]
MOV             R3, #0x100
MOV             R2, #0
LDRH            R0, [R0,#0x10]
CMP             R0, #0x1000
MOVEQ           R1, #0x1E
MOVNE           R1, #0x1F
MOV             R0, R6
BL              sub_11DCDC
MOV             R1, R5
MOV             R0, R6
BL              sub_12CA08
ADD             R0, R4, #0x28 ; '('
VLDR            S1, =-21.0
VLDR            S2, [R4,#0x24]
VLDR            S3, =15.0
VLDR            S0, =0.0
VADD.F32        S2, S2, S1
VLDM            R0, {S4-S5}
VADD.F32        S1, S4, S3
VADD.F32        S3, S5, S0
VSTR            S2, [SP,#0x98+var_7C]
VLDR            S2, =-17.0
VSTR            S1, [SP,#0x98+var_78]
VSTR            S3, [SP,#0x98+var_74]
VLDR            S1, [R4,#0x24]
VLDR            S3, =-7.0
VLDM            R0, {S4-S5}
VADD.F32        S1, S1, S2
ADD             R0, SP, #0x98+var_44
VADD.F32        S4, S4, S3
VADD.F32        S5, S5, S0
VSTR            S1, [SP,#0x98+var_48]
VLDR            S1, =23.0
VSTM            R0, {S4-S5}
ADD             R0, SP, #0x98+var_5C
VLDR            S7, [R4,#0x24]
VLDR            S5, [R4,#0x2C]
VLDR            S6, [R4,#0x28]
VADD.F32        S1, S7, S1
VLDR            S4, =19.0
VADD.F32        S5, S5, S0
VADD.F32        S4, S6, S4
VSTR            S1, [SP,#0x98+var_60]
VLDR            S1, =-4.0
VSTM            R0, {S4-S5}
VLDR            S4, =24.0
VLDR            S7, [R4,#0x24]
VLDR            S6, [R4,#0x28]
VLDR            S5, [R4,#0x2C]
VADD.F32        S19, S7, S4
VLDR            S4, =27.0
VADD.F32        S21, S6, S1
VADD.F32        S17, S6, S1
VADD.F32        S16, S7, S4
VLDR            S4, [R4,#0x2C]
VADD.F32        S2, S7, S2
VADD.F32        S20, S5, S0
VADD.F32        S18, S5, S0
VADD.F32        S1, S6, S3
VADD.F32        S0, S4, S0
VSTR            S2, [SP,#0x98+var_54]
VSTR            S1, [SP,#0x98+var_50]
VSTR            S0, [SP,#0x98+var_4C]
LDR             R0, [R4,#0x100]
BL              sub_5EB690
CMP             R0, #0
LDR             R0, [R4,#0x100]
MOVNE           R10, #0x25 ; '%'
MOVEQ           R10, #0x20 ; ' '
BL              sub_5EB690
CMP             R0, #0
LDRB            R0, [R4,#0x1AE]
LDRNE           R3, [R4,#0x194]
MOVEQ           R3, #0
CMP             R0, #0
LDRB            R0, [R4,#0x1AD]
LDRNE           R6, [R4,#0x1A0]
MOVEQ           R6, #0xFFFFFFFF
CMP             R0, #0
ADD             R8, R4, #0x100
MOV             R7, #7
BEQ             loc_1D8D50
CMP             R0, #1
BEQ             loc_1D8DEC
CMP             R0, #2
BEQ             loc_1D8EDC
CMP             R0, #3
BNE             loc_1D90E0
B               loc_1D8FE4
ADD             R2, SP, #0x98+var_7C
MOV             R1, R10
MOV             R0, R5
BL              sub_47BAB4
CMP             R6, #0
NOP
BLT             loc_1D8D80
MOV             R3, R6
ADD             R2, SP, #0x98+var_60
MOV             R1, #0x26 ; '&'
MOV             R0, R5
BL              sub_47BAB4
LDR             R0, [R4,#0x1B0]
ADD             R6, SP, #0x98+var_60
ADD             R0, R0, #0x6C ; 'l'
LDR             R3, [R0,#0x28]
AND             R2, R3, #4
ORR             R2, R3, R2,LSL#3
STR             R2, [R0,#0x28]
LDM             R6, {R1-R3}
ADD             R0, R0, #0x1C
STM             R0, {R1-R3}
LDR             R6, [R4,#0x1B0]
LDR             R0, [R6,#4]
BICS            R1, R7, R0
BNE             loc_1D90E0
TST             R0, #0x80
BEQ             loc_1D90D4
MOV             R0, R6
BL              sub_5B7438
MOV             R0, R5
NOP
BL              sub_127FD4
MOV             R0, R5
NOP
BL              sub_128004
NOP
NOP
B               loc_1D90D4
ADD             R2, SP, #0x98+var_7C
MOV             R1, R10
MOV             R0, R5
BL              sub_47BAB4
CMP             R6, #0
NOP
BLT             loc_1D8E1C
MOV             R3, R6
ADD             R2, SP, #0x98+var_60
MOV             R1, #0x26 ; '&'
MOV             R0, R5
BL              sub_47BAB4
LDR             R0, [R4,#0x1B0]
ADD             R6, SP, #0x98+var_60
ADD             R0, R0, #0x6C ; 'l'
LDR             R2, [R0,#0x28]
AND             R3, R2, #4
ORR             R2, R2, R3,LSL#3
STR             R2, [R0,#0x28]
LDM             R6, {R1-R3}
ADD             R0, R0, #0x1C
STM             R0, {R1-R3}
LDR             R6, [R4,#0x1B0]
LDR             R0, [R6,#4]
BICS            R1, R7, R0
BNE             loc_1D8E88
TST             R0, #0x80
BEQ             loc_1D8E7C
MOV             R0, R6
BL              sub_5B7438
MOV             R0, R5
NOP
BL              sub_127FD4
MOV             R0, R5
NOP
BL              sub_128004
MOV             R1, R5
MOV             R0, R6
BL              sub_5B5828
MOV             R3, #0xFFFFFFFF
ADD             R2, SP, #0x98+var_54
MOV             R1, #0x22 ; '"'
MOV             R0, R5
BL              sub_47BAB4
LDR             R0, [R4,#0x1B0]
ADD             R0, R0, #0x38C
LDR             R3, [R0,#0x28]
AND             R2, R3, #4
ORR             R2, R3, R2,LSL#3
STR             R2, [R0,#0x28]
ADD             R0, R0, #0x1C
VSTM            R0, {S16-S18}
LDR             R0, [R4,#0x1B0]
ADD             R6, R0, #0x320
LDR             R0, [R0,#0x324]
BICS            R1, R7, R0
BNE             loc_1D90E0
TST             R0, #0x80
BNE             loc_1D8DC0
B               loc_1D90D4
MOV             R3, #0xFFFFFFFF
ADD             R2, SP, #0x98+var_7C
MOV             R1, #0x21 ; '!'
MOV             R0, R5
BL              sub_47BAB4
LDR             R0, [R4,#0x1B0]
ADD             R6, SP, #0x98+var_60
ADD             R0, R0, #0x1FC
LDR             R2, [R0,#0x28]
AND             R3, R2, #4
ORR             R2, R2, R3,LSL#3
STR             R2, [R0,#0x28]
LDM             R6, {R1-R3}
ADD             R0, R0, #0x1C
STM             R0, {R1-R3}
LDR             R0, [R4,#0x1B0]
ADD             R6, R0, #0x190
LDR             R0, [R0,#0x194]
BICS            R1, R7, R0
BNE             loc_1D8F60
TST             R0, #0x80
BEQ             loc_1D8F54
MOV             R0, R6
BL              sub_5B7438
MOV             R0, R5
NOP
BL              sub_127FD4
MOV             R0, R5
NOP
BL              sub_128004
MOV             R1, R5
MOV             R0, R6
BL              sub_5B5828
MOV             R3, #0xFFFFFFFF
ADD             R2, SP, #0x98+var_54
MOV             R1, #0x23 ; '#'
MOV             R0, R5
BL              sub_47BAB4
LDR             R0, [R4,#0x1B0]
ADD             R0, R0, #0x400
ADD             R0, R0, #0x11C
LDR             R2, [R0,#0x28]
AND             R3, R2, #4
ORR             R2, R2, R3,LSL#3
STR             R2, [R0,#0x28]
ADD             R0, R0, #0x1C
VSTM            R0, {S16-S18}
LDR             R0, [R4,#0x1B0]
ADD             R6, R0, #0x4B0
LDR             R0, [R0,#0x4B4]
BICS            R1, R7, R0
BNE             loc_1D90E0
TST             R0, #0x80
BNE             loc_1D8DC0
B               loc_1D90D4
DCD off_6CE970
DCFS -21.0
DCFS 15.0
DCFS 0.0
DCFS -17.0
DCFS -7.0
DCFS 23.0
DCFS 19.0
DCFS 24.0
DCFS -4.0
DCFS 27.0
ADD             R2, SP, #0x98+var_7C
MOV             R1, R10
MOV             R0, R5
BL              sub_47BAB4
CMP             R6, #0
NOP
BLT             loc_1D9014
MOV             R3, R6
ADD             R2, SP, #0x98+var_60
MOV             R1, #0x26 ; '&'
MOV             R0, R5
BL              sub_47BAB4
LDR             R0, [R4,#0x1B0]
ADD             R6, SP, #0x98+var_60
ADD             R0, R0, #0x6C ; 'l'
LDR             R2, [R0,#0x28]
AND             R3, R2, #4
ORR             R2, R2, R3,LSL#3
STR             R2, [R0,#0x28]
LDM             R6, {R1-R3}
ADD             R0, R0, #0x1C
STM             R0, {R1-R3}
LDR             R6, [R4,#0x1B0]
LDR             R0, [R6,#4]
BICS            R1, R7, R0
BNE             loc_1D9080
TST             R0, #0x80
BEQ             loc_1D9074
MOV             R0, R6
BL              sub_5B7438
MOV             R0, R5
NOP
BL              sub_127FD4
MOV             R0, R5
NOP
BL              sub_128004
MOV             R1, R5
MOV             R0, R6
BL              sub_5B5828
MOV             R3, #0xFFFFFFFF
ADD             R2, SP, #0x98+var_48
MOV             R1, #0x21 ; '!'
MOV             R0, R5
BL              sub_47BAB4
LDR             R0, [R4,#0x1B0]
ADD             R0, R0, #0x1FC
LDR             R2, [R0,#0x28]
AND             R3, R2, #4
ORR             R2, R2, R3,LSL#3
STR             R2, [R0,#0x28]
VSTR            S19, [R0,#0x1C]
VSTR            S21, [R0,#0x20]
VSTR            S20, [R0,#0x24]
LDR             R0, [R4,#0x1B0]
ADD             R6, R0, #0x190
LDR             R0, [R0,#0x194]
BICS            R1, R7, R0
BNE             loc_1D90E0
TST             R0, #0x80
BNE             loc_1D8DC0
MOV             R1, R5
MOV             R0, R6
BL              sub_5B5828
LDRB            R0, [R8,#0xAE]
CMP             R0, #0
BEQ             loc_1D90FC
LDR             R0, =0x1AA
LDRH            R0, [R0,R4]
TST             R0, #1
STRBEQ          R9, [R4,#0x1AE]
ADD             SP, SP, #0x60 ; '`'
VPOP            {D8-D10}
POP             {R4-R10,PC}
