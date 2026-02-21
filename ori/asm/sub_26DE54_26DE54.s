PUSH            {R4-R8,LR}
MOV             R4, R0
SUB             SP, SP, #0x30
LDR             R0, [R1]
MOV             R5, R1
ADD             R1, SP, #0x48+var_38
BL              sub_5CCFE8
LDR             R0, [R5]
VLDR            S0, [SP,#0x48+var_38]
LDR             R8, =off_6CE970
ADD             R0, R0, #0x400
ADD             R0, R0, #0x84
ADD             R6, R4, #0x400
VLDR            S1, [R0]
MOV             R7, #1
MOV             R1, #0
VADD.F32        S2, S0, S1
ADD             R6, R6, #0x1A8
VSTR            S2, [SP,#0x48+var_38]
VLDR            S1, [R0,#4]
VLDR            S0, [SP,#0x48+var_34]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_34]
VLDR            S1, [R0,#8]
VLDR            S0, [SP,#0x48+var_30]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x198
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_30]
VLDR            S0, [R4,#0xC8]
VLDR            S1, [R0]
LDR             R0, =off_6CDF98
VADD.F32        S1, S1, S0
VLDR            S0, =0.0
LDR             R0, [R0]
LDR             R0, [R0,#0x124]
ADD             R0, R0, #0x400
VSUB.F32        S1, S1, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VLDR            S2, [R0,#0x84]
VNEGCC.F32      S1, S1
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_26DF3C
LDR             R0, [R8]
LDR             R3, =0xFFE683CC
LDR             R1, =0x300DF
MOV             R2, #0
SUB             R0, R0, R3
BL              sub_503414
STRB            R7, [R6]
STR             R7, [R6,#4]
LDR             R0, [R4,#0xC4]
MOV             R1, R7
CMP             R0, #0
BEQ             loc_26DF5C
B               loc_26DF50
STRB            R1, [R6]
STR             R7, [R6,#4]
LDR             R0, [R4,#0xC4]
CMP             R0, #0
BEQ             loc_26DF5C
LDR             R2, [R0]
LDR             R2, [R2,#8]
BLX             R2
LDR             R0, [R5],#4
STR             R5, [SP,#0x48+var_44]
MOV             R1, SP
STR             R0, [SP,#0x48+var_48]
LDR             R2, [R5,#4]
ADD             R0, SP, #0x48+var_44
STR             R2, [SP,#0x48+var_40]
STR             R0, [R2]
STR             R0, [R5,#4]
MOV             R0, R4
BL              sub_26D51C
LDR             R1, [SP,#0x48+var_40]
ADD             R0, SP, #0x48+var_44
CMP             R1, R0
BNE             loc_26DFB0
LDR             R0, [SP,#0x48+var_48]
CMP             R0, #0
BEQ             loc_26DFB0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x48+var_44]
LDR             R2, =off_63EF64
ADD             R3, R4, #0x400
ADD             R3, R3, #0x1B8
STR             R1, [R0,#4]
STR             R0, [R1]
STRB            R7, [R4,#0x65D]
LDM             R2, {R1,R2}
ADD             R5, SP, #0x48+var_2C
STM             R3, {R1,R2}
MOV             R3, #0
STRB            R7, [R4,#0x65F]
STRB            R7, [R4,#0x688]
LDR             R0, [R8]
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x400
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_26D144
STR             R0, [SP,#0x48+var_2C]
ADD             R0, R5, #4
STR             R0, [SP,#0x48+var_24]
STR             R0, [SP,#0x48+var_28]
ADD             R0, R4, #0x400
MOV             R1, R5
MOV             R2, #0
ADD             R0, R0, #0x2C8
BL              sub_61F1E4
LDR             R1, [SP,#0x48+var_24]
ADD             R0, SP, #0x48+var_28
CMP             R1, R0
BNE             loc_26E050
LDR             R0, [SP,#0x48+var_2C]
CMP             R0, #0
BEQ             loc_26E050
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x48+var_28]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x30 ; '0'
POP             {R4-R8,PC}
