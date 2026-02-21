PUSH            {R4-R7,LR}
MOV             R4, R0
ADD             R0, R0, #4
VPUSH           {D8}
VMOV.F32        S16, S0
SUB             SP, SP, #0x2C
BL              sub_5A2484
VMOV.F32        S0, S16
ADD             R0, R4, #0x5C ; '\'
BL              sub_5A176C
LDRB            R0, [R4]
LDR             R7, =off_6CE098
VLDR            S16, =0.0
CMP             R0, #1
MOV             R6, #5
BEQ             loc_25B190
CMP             R0, #2
BEQ             loc_25B394
CMP             R0, #4
BNE             loc_25B184
LDR             R0, [R4,#0x90]
ADD             R0, R0, #0x11C
BL              sub_5F19B8
CMP             R0, #0
MOVEQ           R0, #1
STRBEQ          R0, [R4]
ADD             SP, SP, #0x2C ; ','
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R1, [R7]
ADD             R2, SP, #0x48+var_38
ADD             R0, R1, #0x6C ; 'l'
LDR             R3, [R1,#0x68]
STR             R0, [SP,#0x48+var_38]
STR             R3, [SP,#0x48+var_3C]
LDR             R3, [R1,#0x70]
STR             R3, [SP,#0x48+var_34]
STR             R2, [R3]
STR             R2, [R1,#0x70]
LDR             R0, [SP,#0x48+var_3C]
LDR             R0, [R0,#0xA74]
VLDR            S0, [R0,#0x2C]
LDR             R0, =0x129EC
LDR             R0, [R0,R1]
LDR             R1, [R1,#0x8C]
LDR             R0, [R0]
VLDR            S1, [R1,#0x184]
LDR             R1, [SP,#0x48+var_34]
VLDR            S2, [R0,#0x90]
ADD             R0, SP, #0x48+var_38
VADD.F32        S1, S2, S1
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVCC           R5, #1
MOVCS           R5, #0
CMP             R1, R0
BNE             loc_25B21C
LDR             R0, [SP,#0x48+var_3C]
CMP             R0, #0
BEQ             loc_25B21C
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x48+var_38]
CMP             R5, #0
STR             R1, [R0,#4]
STR             R0, [R1]
BEQ             loc_25B30C
MOV             R0, #2
STRB            R0, [R4]
LDR             R0, [R7]
ADD             R1, SP, #0x48+var_44
LDR             R2, [R0,#0x68]!
ADD             R0, R0, #4
STR             R0, [SP,#0x48+var_44]
STR             R2, [SP,#0x48+var_48]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x48+var_40]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x48+var_48]
LDR             R0, [R0,#0xA74]
ADD             R1, R0, #0x24 ; '$'
LDR             R0, [R0,#0x2C]
LDM             R1, {R1,R2}
STR             R0, [SP,#0x48+var_28]
ADD             R0, SP, #0x48+var_30
STM             R0, {R1,R2}
ADD             R0, SP, #0x48+var_44
VSTR            S16, [SP,#0x48+var_2C]
LDR             R1, [SP,#0x48+var_40]
CMP             R1, R0
BNE             loc_25B2B0
LDR             R0, [SP,#0x48+var_48]
CMP             R0, #0
BEQ             loc_25B2B0
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x48+var_44]
STR             R1, [R0,#4]
STR             R0, [R1]
VLDR            S1, [R4,#8]
VLDR            S0, [SP,#0x48+var_30]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_30]
VLDR            S1, [R4,#0xC]
VLDR            S0, [SP,#0x48+var_2C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_2C]
VLDR            S1, [R4,#0x10]
VLDR            S0, [SP,#0x48+var_28]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_28]
LDR             R0, [R4,#0x90]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, SP, #0x48+var_30
BLX             R2
ADD             SP, SP, #0x2C ; ','
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R0, [R7]
ADD             R1, SP, #0x48+var_44
LDR             R2, [R0,#0x68]!
ADD             R0, R0, #4
STR             R0, [SP,#0x48+var_44]
STR             R2, [SP,#0x48+var_48]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x48+var_40]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x48+var_48]
LDR             R1, [SP,#0x48+var_40]
LDRB            R0, [R0]
CMP             R0, #0xC
MOVNE           R5, #0
MOVEQ           R5, #1
ADD             R0, SP, #0x48+var_44
CMP             R1, R0
BNE             loc_25B374
LDR             R0, [SP,#0x48+var_48]
CMP             R0, #0
BEQ             loc_25B374
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x48+var_44]
CMP             R5, #0
STR             R1, [R0,#4]
STR             R0, [R1]
STRBNE          R6, [R4]
ADD             SP, SP, #0x2C ; ','
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R0, [R7]
ADD             R1, SP, #0x48+var_30
LDR             R2, [R0,#0x68]!
ADD             R0, R0, #4
STR             R0, [SP,#0x48+var_30]
STR             R2, [SP,#0x48+var_34]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x48+var_2C]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R1, [SP,#0x48+var_34]
LDR             R0, [R7]
MOV             R2, #0
LDR             R1, [R1,#0xA74]
LDR             R3, [R0,#0x8C]
VLDR            S0, [R1,#0x2C]
LDR             R1, =0x129F0
VLDR            S2, [R3,#0x194]
VLDR            S3, [R3,#0x1AC]
LDR             R1, [R1,R0]
LDR             R1, [R1,#-0xC]
VLDR            S1, [R1,#0x90]
VADD.F32        S1, S1, S2
VADD.F32        S1, S1, S3
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_25B49C
LDR             R2, [R0,#0x68]!
ADD             R0, R0, #4
STR             R0, [SP,#0x48+var_3C]
STR             R2, [SP,#0x48+var_40]
LDR             R2, [R0,#4]
ADD             R1, SP, #0x48+var_3C
STR             R2, [SP,#0x48+var_38]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x48+var_40]
MOV             R2, #1
LDRB            R0, [R0]
CMP             R0, #0xC
MOVNE           R5, #0
BEQ             loc_25B49C
CMP             R2, #0
BEQ             loc_25B47C
LDR             R1, [SP,#0x48+var_38]
ADD             R0, SP, #0x48+var_3C
CMP             R1, R0
BNE             loc_25B470
LDR             R0, [SP,#0x48+var_40]
CMP             R0, #0
BEQ             loc_25B470
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x48+var_3C]
STR             R1, [R0,#4]
STR             R0, [R1]
CMP             R5, #0
STRBNE          R6, [R4]
BNE             loc_25B508
B               loc_25B4A4
DCFS 0.0
DCD off_6CE098
DCD 0x129EC
DCD 0x129F0
MOV             R5, #1
B               loc_25B43C
LDR             R0, [SP,#0x48+var_34]
ADD             R3, SP, #0x48+var_28
LDR             R0, [R0,#0xA74]
ADD             R1, R0, #0x24 ; '$'
LDR             R0, [R0,#0x2C]
LDM             R1, {R1,R2}
STR             R0, [SP,#0x48+var_20]
VMOV            S0, R1
STM             R3, {R1,R2}
VSTR            S16, [SP,#0x48+var_24]
VLDR            S1, [R4,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_28]
VLDR            S0, [R4,#0xC]
VADD.F32        S0, S16, S0
VSTR            S0, [SP,#0x48+var_24]
VMOV            S0, R0
VLDR            S1, [R4,#0x10]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_20]
LDR             R0, [R4,#0x90]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, SP, #0x48+var_28
BLX             R2
LDR             R1, [SP,#0x48+var_2C]
ADD             R0, SP, #0x48+var_30
CMP             R1, R0
BNE             loc_25B534
LDR             R0, [SP,#0x48+var_34]
CMP             R0, #0
BEQ             loc_25B534
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x48+var_30]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x2C ; ','
VPOP            {D8}
POP             {R4-R7,PC}
