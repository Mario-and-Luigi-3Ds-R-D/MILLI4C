PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6CDA80
VPUSH           {D8}
SUB             SP, SP, #0x30
LDR             R0, [R6]
BL              sub_225F88
LDR             R1, [R6]
LDR             R0, =0x126FC
LDR             R0, [R0,R1]
LDRB            R0, [R0,#0x45C]
CMP             R0, #0
BEQ             loc_22CAAC
ADD             R1, R1, #0x10000
CMP             R0, #1
ADD             R1, R1, #0x2700
CMPNE           R0, #2
LDR             R0, [R1]
BEQ             loc_22CBA8
MOV             R1, #1
BL              sub_228AE4
LDR             R0, [R6]
MOV             R1, #1
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F8
LDR             R0, [R0]
BL              sub_22A0C8
B               loc_22CBC4
LDR             R0, =0x126F4
LDR             R5, [R0,R1]
ADD             R1, R1, #0x12400
ADD             R1, R1, #0x2EC
LDR             R0, [R1]
MOV             R1, SP
BL              sub_5C4F78
ADD             R0, R5, #0x400
ADD             R0, R0, #0x7C ; '|'
VLDR            S2, [SP,#0x48+var_48]
VLDR            S5, [R0]
VLDR            S0, [R0,#4]
VLDR            S1, [SP,#0x48+var_44]
VLDR            S4, [R0,#8]
VLDR            S3, [SP,#0x48+var_40]
VADD.F32        S5, S2, S5
VADD.F32        S0, S1, S0
VADD.F32        S4, S3, S4
ADD             R5, R5, #0x400
ADD             R5, R5, #0x88
ADD             R1, R4, #8
ADD             R0, SP, #0x48+var_38
VSTR            S5, [SP,#0x48+var_2C]
VSTR            S0, [SP,#0x48+var_28]
VSTR            S4, [SP,#0x48+var_24]
VLDM            R5!, {S6}
VLDM            R5, {S4-S5}
VADD.F32        S2, S2, S6
VADD.F32        S4, S1, S4
VADD.F32        S1, S3, S5
VSTR            S2, [SP,#0x48+var_38]
VSTR            S4, [SP,#0x48+var_34]
VSTR            S1, [SP,#0x48+var_30]
VLDR            S1, [R4,#0x24]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGE           R5, #1
MOVLT           R5, #0
BL              sub_223DD0
CMP             R0, #0
NOP
BNE             loc_22CB6C
ADD             R1, R4, #0x20 ; ' '
ADD             R0, SP, #0x48+var_38
BL              sub_223DD0
CMP             R0, #0
NOP
BEQ             loc_22CB70
MOV             R0, #1
LDR             R2, [R6]
AND             R1, R5, R0
EOR             R4, R1, #1
ADD             R2, R2, #0x10000
ADD             R2, R2, #0x2700
EOR             R1, R0, #1
LDR             R0, [R2]
BL              sub_228AE4
LDR             R0, [R6]
MOV             R1, R4
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F8
LDR             R0, [R0]
B               loc_22CAA4
NOP
BL              sub_228B20
LDR             R0, [R6]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F8
LDR             R0, [R0]
BL              sub_22A16C
LDR             R4, [R6]
LDR             R0, =0x126F8
LDR             R0, [R0,R4]
LDRB            R0, [R0]
CMP             R0, #2
BNE             loc_22CCB8
LDR             R0, =0x126EC
LDR             R0, [R0,R4]
BL              sub_2255B8
LDR             R0, =0x126F0
LDR             R0, [R0,R4]
BL              sub_2255B8
LDR             R0, =0x126FC
LDR             R0, [R0,R4]
BL              sub_22B4E0
LDR             R0, =0x126E8
LDR             R0, [R0,R4]
BL              sub_227F98
LDR             R0, =0x126F8
LDR             R0, [R0,R4]
BL              sub_22A224
MOV             R0, #0xFFFFFF00
VLDR            S16, =4.0
REV             R0, R0
ADD             R1, SP, #0x48+var_44
VMOV.F32        S0, S16
STR             R0, [SP,#0x48+var_44]
ADD             R0, R4, #0x13400
ADD             R0, R0, #0x48 ; 'H'
BL              sub_4E665C
MOV             R0, #0xFFFFFF00
LDR             R4, [R6]
REV             R0, R0
VMOV.F32        S0, S16
STR             R0, [SP,#0x48+var_3C]
ADD             R0, R4, #0x13400
ADD             R1, SP, #0x48+var_3C
ADD             R0, R0, #0x48 ; 'H'
BL              sub_4E665C
LDR             R0, [R4,#0x20]
LDR             R5, [R4,#0x1C]
MOV             R6, #0
CMP             R0, #0
BEQ             loc_22CC80
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
STR             R5, [R4,#0x20]
LDR             R0, [R5]
MOV             R1, R6
LDR             R2, [R0,#8]
MOV             R0, R5
BLX             R2
LDR             R0, [R4,#0x18]
CMP             R0, #0
BEQ             loc_22CCB8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #0
STR             R0, [R4,#0x18]
ADD             SP, SP, #0x30 ; '0'
VPOP            {D8}
POP             {R4-R6,PC}
