PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x584]
SUB             SP, SP, #0x38
ADD             R1, SP, #0x48+var_44
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x48+var_44]
STR             R2, [SP,#0x48+var_48]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x48+var_40]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x48+var_48]
ADD             R1, SP, #0x48+var_28
BL              sub_5CCFE8
LDR             R1, [SP,#0x48+var_40]
ADD             R0, SP, #0x48+var_44
CMP             R1, R0
BNE             loc_26F30C
LDR             R0, [SP,#0x48+var_48]
CMP             R0, #0
BEQ             loc_26F30C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x48+var_44]
ADD             R6, R4, #0x400
ADD             R6, R6, #0x2C8
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             R0, R4, #0x400
VLDR            S0, [SP,#0x48+var_28]
VLDR            S1, [R0,#0x198]
LDR             R0, =off_6CDF98
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_28]
LDR             R0, [R0]
LDR             R0, [R0,#0x124]
ADD             R1, R0, #0x400
VLDR            S2, [R0,#0xDC]
VLDR            S1, [R1,#0x2E8]
LDR             R0, =off_6CE970
VADD.F32        S1, S1, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_26F3DC
LDR             R0, [R0]
MOV             R5, R4
MOV             R3, #0
ADD             R1, R0, #0x68 ; 'h'
ADD             R4, SP, #0x48+var_3C
MOV             R2, R3
MOV             R0, #0x4B0
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R5
BLNE            sub_26F0F0
STR             R0, [SP,#0x48+var_3C]
ADD             R0, R4, #4
STR             R0, [SP,#0x48+var_34]
STR             R0, [SP,#0x48+var_38]
MOV             R1, R4
MOV             R2, #0
MOV             R0, R6
BL              sub_61F1E4
LDR             R1, [SP,#0x48+var_34]
ADD             R0, SP, #0x48+var_38
CMP             R1, R0
BNE             loc_26F3C8
LDR             R0, [SP,#0x48+var_3C]
CMP             R0, #0
BNE             loc_26F440
LDRD            R0, R1, [SP,#0x48+var_38]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x38 ; '8'
POP             {R4-R6,PC}
LDR             R0, [R0]
MOV             R3, #0
ADD             R5, SP, #0x48+var_3C
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x4B4
MOV             R2, R3
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_2733F8
STR             R0, [SP,#0x48+var_3C]
ADD             R0, R5, #4
STR             R0, [SP,#0x48+var_34]
STR             R0, [SP,#0x48+var_38]
MOV             R1, R5
MOV             R2, #0
MOV             R0, R6
BL              sub_61F1E4
LDR             R1, [SP,#0x48+var_34]
ADD             R0, SP, #0x48+var_38
CMP             R1, R0
BNE             loc_26F3C8
LDR             R0, [SP,#0x48+var_3C]
CMP             R0, #0
BEQ             loc_26F3C8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
B               loc_26F3C8
