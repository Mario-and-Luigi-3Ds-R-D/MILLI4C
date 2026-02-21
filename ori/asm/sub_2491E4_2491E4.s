PUSH            {R4-R9,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x1C
BL              sub_249914
MOV             R2, #0
ADD             R1, SP, #0x40+var_3C
ADD             R0, R4, #0xEC
BL              sub_5C4F84
LDR             R6, =off_6CDD80
LDR             R0, [R6]
LDR             R0, [R0,#8]
LDR             R1, [R0,#0x2A4]
VMOV            S1, R1
STR             R1, [SP,#0x40+var_40]
VLDR            S0, [SP,#0x40+var_3C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGE             loc_24927C
LDR             R1, [R0,#0x2A8]
VMOV            S1, R1
STR             R1, [SP,#0x40+var_40]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLS             loc_24927C
LDR             R1, [R0,#0x2AC]
VMOV            S1, R1
STR             R1, [SP,#0x40+var_40]
VLDR            S0, [R4,#0x78]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLS             loc_24927C
LDR             R0, [R0,#0x2B0]
VMOV            S1, R0
STR             R0, [SP,#0x40+var_40]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_249284
MOV             R0, R4
BL              sub_249408
LDR             R0, [R6]
LDR             R7, =off_6CE970
MOV             R8, #0
ADD             R5, R4, #0x400
LDRB            R0, [R0,#0xE9C]
CMP             R0, #5
BEQ             loc_249304
LDR             R9, =sub_10D4F0
LDR             R0, [R7]
VLDR            S1, [R4,#0x70]
VLDR            S0, [R4,#0x78]
VLDR            S16, =0.0
LDR             R1, [R0,R9]
VLDR            S3, [R1,#0x24]
VLDR            S2, [R1,#0x2C]
LDRB            R1, [R4,#0x554]
VSUB.F32        S1, S1, S3
VSUB.F32        S0, S0, S2
CMP             R1, #0
VMUL.F32        S1, S1, S1
VMLA.F32        S1, S16, S16
VMLA.F32        S1, S0, S0
VSQRT.F32       S17, S1
BEQ             loc_249390
BL              sub_5EE83C
CMP             R0, #0
NOP
BEQ             loc_249390
LDRB            R0, [R5,#0xE0]
CMP             R0, #0
BEQ             loc_249334
B               loc_249390
LDR             R0, [R7]
BL              sub_5EE83C
CMP             R0, #0
LDRBNE          R0, [R5,#0xE0]
CMPNE           R0, #0
BEQ             loc_249328
LDR             R0, [R6]
BL              sub_388744
STRB            R8, [R4,#0x4E0]
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R9,PC}
VLDR            S0, [R5,#0x134]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_249390
LDR             R0, [R6]
LDR             R1, [R0,#8]
LDR             R2, [R1,#0x1CC]
VMOV            S0, R2
STR             R2, [SP,#0x40+var_30]
VCMPE.F32       S17, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_249390
LDR             R1, [R1,#0x1D0]
VLDR            S1, =256.0
VMOV            S0, R1
STR             R1, [SP,#0x40+var_30]
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTH            R1, R1
BL              sub_388920
MOV             R0, #1
STRB            R0, [R4,#0x4E0]
LDR             R0, [R7]
BL              sub_5EE83C
CMP             R0, #0
NOP
BEQ             loc_249328
LDR             R0, [R6]
LDR             R1, [R0,#8]
LDR             R1, [R1,#0x15C]
VMOV            S0, R1
STR             R1, [SP,#0x40+var_30]
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BHI             loc_249328
LDR             R1, [R7]
VLDR            S0, [R4,#0x78]
LDR             R1, [R1,R9]
VLDR            S1, [R1,#0x2C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_249328
BL              sub_388744
STRB            R8, [R4,#0x4E0]
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R9,PC}
