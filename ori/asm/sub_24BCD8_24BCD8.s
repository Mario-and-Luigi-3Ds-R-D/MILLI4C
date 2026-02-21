PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R0, #1
VPUSH           {D8}
SUB             SP, SP, #0x34
STRB            R0, [R4,#0x2C]
LDRB            R0, [R4,#0x424]
CMP             R0, #0
BEQ             loc_24BE84
LDR             R0, [R4,#0x20]
ADD             R5, R4, #0x20 ; ' '
CMP             R0, #0
BEQ             loc_24BD18
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [R5,#8]
ADD             R0, R5, #4
CMP             R1, R0
BNE             loc_24BE90
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_24BD40
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R7, =off_6CE098
MOV             R6, #0
STR             R6, [R5]
VLDR            S16, =0.0
LDR             R0, [R7]
ADD             R2, SP, #0x50+var_34
MOV             R1, R6
LDR             R5, [R0,#0x8C]
ADD             R0, R4, #0x20C
VLDR            S0, [R5,#0x234]
VSTR            S16, [SP,#0x50+var_34]
VSTR            S16, [SP,#0x50+var_30]
VNEG.F32        S0, S0
VSTR            S0, [SP,#0x50+var_2C]
VLDR            S0, [R5,#0x23C]
BL              sub_5A2B20
VLDR            S0, =1.0
VSTR            S16, [SP,#0x50+var_40]
VSTR            S0, [SP,#0x50+var_3C]
VSTR            S16, [SP,#0x50+var_38]
ADD             R2, SP, #0x50+var_40
VLDR            S2, [R5,#0x238]
VLDR            S1, [R5,#0x23C]
VLDR            S0, [R5,#0x240]
MOV             R1, #1
ADD             R0, R4, #0x20C
BL              sub_5A28C4
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
ADD             R0, R4, #0x30 ; '0'
BL              sub_14C548
LDR             R0, [R7]
ADD             R1, SP, #0x50+var_48
LDR             R5, =off_6CE970
LDR             R2, [R0,#0x68]!
ADD             R0, R0, #4
STR             R0, [SP,#0x50+var_48]
STR             R2, [SP,#0x50+var_4C]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x50+var_44]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x50+var_4C]
LDRB            R0, [R0,#0xAF5]
CMP             R0, #0
BEQ             loc_24BE2C
LDR             R0, [SP,#0x50+var_4C]
ADD             R1, R4, #4
LDR             R0, [R0,#0xA74]
ADD             R2, R0, #0x24 ; '$'
ADD             R0, SP, #0x50+var_28
BL              sub_251540
LDR             R0, [R5]
LDR             R1, =0x122
MOV             R3, #1
ADD             R2, SP, #0x50+var_28
STR             R6, [SP,#0x50+var_50]
BL              sub_52AEA8
LDR             R0, [R5]
LDR             R12, =0xFFE683CC
LDR             R2, =0x301E7
MOV             R3, #0
ADD             R1, R4, #0x30 ; '0'
SUB             R0, R0, R12
BL              sub_503720
STRB            R6, [R4,#0x424]
LDR             R1, [SP,#0x50+var_44]
ADD             R0, SP, #0x50+var_48
CMP             R1, R0
BNE             loc_24BE78
LDR             R0, [SP,#0x50+var_4C]
CMP             R0, #0
BEQ             loc_24BE78
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x50+var_48]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_24BD40
