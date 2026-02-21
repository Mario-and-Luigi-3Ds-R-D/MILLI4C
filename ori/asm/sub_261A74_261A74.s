PUSH            {R4-R9,LR}
MOV             R5, R0
MOV             R9, #0
VPUSH           {D8-D9}
SUB             SP, SP, #0x2C
LDR             R0, [R0,#4]
ADD             R0, R0, #0x13000
STRB            R9, [R0,#0x214]
LDR             R0, [R5,#4]
ADD             R7, R0, #0x98
ADD             R4, R0, #0x12400
ADD             R6, R0, #0x18
ADD             R4, R4, #0x34C
MOV             R1, R7
ADD             R0, SP, #0x58+var_54
BL              sub_269EFC
LDR             R0, [SP,#0x58+var_54]
LDR             R1, [R4]
ADD             R8, SP, #0x58+var_54
CMP             R1, R0
BEQ             loc_261B2C
LDR             R0, [R4,#8]
ADD             R2, R4, #4
CMP             R0, R2
BNE             loc_261D9C
CMP             R1, #0
MOVNE           R0, R1
BEQ             loc_261AF0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R0, [SP,#0x58+var_54]
ADD             R1, R8, #4
STR             R0, [R4],#4
CMP             R1, R4
LDRNE           R0, [SP,#0x58+var_4C]
CMPNE           R0, R4
BEQ             loc_261B2C
MOV             R3, R0
LDM             R4, {R0,R2}
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R3, [R4,#4]
STR             R4, [R3]
STR             R4, [SP,#0x58+var_4C]
STR             R1, [R4]
LDR             R1, [SP,#0x58+var_4C]
ADD             R0, SP, #0x58+var_50
CMP             R1, R0
BNE             loc_261B54
LDR             R0, [SP,#0x58+var_54]
CMP             R0, #0
BEQ             loc_261B54
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x58+var_50]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             R0, R7, #0x12400
ADD             R0, R0, #0x2B4
ADD             R1, SP, #0x58+var_44
LDR             R2, [R0],#4
STR             R0, [SP,#0x58+var_40]
STR             R2, [SP,#0x58+var_44]
LDR             R3, [R0,#4]
ADD             R2, SP, #0x58+var_40
STR             R3, [SP,#0x58+var_3C]
STR             R2, [R3]
STR             R2, [R0,#4]
LDR             R0, [R6,#0x7C]
LDR             R3, [R6,#0x78]
LDR             R2, =0x2AAAAAAB
SUB             R3, R0, R3
SMULL           R3, R2, R2, R3
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
ADD             R2, R2, #1
CMP             R2, #0xA
BHI             loc_261BE8
CMP             R0, #0
BEQ             loc_261BDC
LDR             R2, [SP,#0x58+var_44]
ADD             R1, R1, #4
STR             R2, [R0],#4
STR             R1, [R0]
LDR             R1, [SP,#0x58+var_3C]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0x58+var_3C]
LDR             R0, [R6,#0x7C]
ADD             R0, R0, #0xC
STR             R0, [R6,#0x7C]
LDR             R0, [SP,#0x58+var_44]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDR             R1, [SP,#0x58+var_3C]
ADD             R0, SP, #0x58+var_40
CMP             R1, R0
BNE             loc_261C20
LDR             R0, [SP,#0x58+var_44]
CMP             R0, #0
BEQ             loc_261C20
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x58+var_40]
ADD             R7, R7, #0x12000
ADD             R7, R7, #0x6B0
MOV             R8, #1
STR             R1, [R0,#4]
STR             R0, [R1]
STRB            R8, [R7]
LDR             R0, [R5,#4]
MOV             R1, R8
LDR             R4, [R0,#8]
LDR             R0, [R5,#0x14]
LDR             R6, [R0,#4]
MOV             R0, R6
BL              sub_14C450
STRB            R8, [R6,#0xF1]
LDR             R0, [R6]
ADD             R1, R4, #0x1EC
LDR             R2, [R0,#0x20]
MOV             R0, R6
BLX             R2
LDR             R0, [R5,#4]
ADD             R0, R0, #0x98
BL              sub_5CC150
LDR             R2, [R6]
MOV             R1, R0
MOV             R0, R6
LDR             R3, [R2,#0x58]
MOV             R2, #0
BLX             R3
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #9
MOV             R0, R6
BL              sub_14C548
MOV             R1, #0
MOV             R0, R6
BL              sub_14C3E8
LDR             R7, =off_6CE970
VLDR            S4, [R4,#0x1EC]
VLDR            S5, [R4,#0x23C]
VLDR            S2, [R4,#0x1F0]
VLDR            S3, [R4,#0x240]
VLDR            S0, [R4,#0x1F4]
VLDR            S1, [R4,#0x244]
VADD.F32        S17, S4, S5
VADD.F32        S18, S2, S3
VADD.F32        S16, S0, S1
LDR             R0, [R7]
ADD             R6, R0, #0x10C000
ADD             R6, R6, #0x330
MOV             R0, R6
BL              sub_5A26D0
VSTR            S16, [R6,#(loc_10C354 - 0x10C330)]
ADD             R0, R6, #0x1C
VSTM            R0, {S17-S18}
VSTR            S16, [R6,#(loc_10C33C - 0x10C330)]
ADD             R6, R6, #4
VSTM            R6, {S17-S18}
LDR             R0, [R7]
ADD             R6, R0, #0x10C000
ADD             R6, R6, #0x3D8
MOV             R0, R6
BL              sub_5A26D0
ADD             R4, R4, #0x248
ADD             R0, R6, #0x1C
VLDM            R4, {S0-S2}
ADD             R6, R6, #4
MOV             R3, #0
ADD             R4, R5, #8
VSTM            R0, {S0-S2}
MOV             R2, R3
VSTM            R6, {S0-S2}
STRB            R9, [R5,#0x8A8]
LDR             R0, [R7]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #8
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_261D6C
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#4]
LDR             R1, [R4,#8]
MOV             R5, R0
ADD             R0, R4, #4
CMP             R1, R0
BNE             loc_261DB8
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_300FD4
STR             R5, [R4]
ADD             SP, SP, #0x2C ; ','
VPOP            {D8-D9}
POP             {R4-R9,PC}
LDR             R2, [R4,#4]
ADD             R1, R4, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R4,#4]
STR             R1, [R4,#8]
B               loc_261AF0
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_261D8C
