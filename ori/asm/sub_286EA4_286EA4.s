LDR             R0, [R0,#0x4C]
NOP
PUSH            {R4-R10,LR}
MOV             R4, R0
LDR             R8, =0x2AAAAAAB
VPUSH           {D8-D10}
SUB             SP, SP, #0x38
LDRD            R0, R1, [R4,#0x1C]
SUB             R1, R1, R0
SMULL           R2, R1, R8, R1
MOV             R2, R1,ASR#1
SUB             R1, R2, R1,ASR#31
CMP             R1, #1
MOVHI           R0, #0
BHI             loc_287250
LDR             R0, [R0]
VLDR            S16, =0.0
VLDR            S19, =57.296
ADD             R5, R0, #0x400
ADD             R5, R5, #0x58 ; 'X'
ADD             R7, R0, #0x24 ; '$'
VLDR            S0, [R5,#8]
VLDR            S18, =-1.0
VLDR            S17, =1.0
VCMPE.F32       S0, S16
LDR             R0, [R4]
LDR             R1, =dword_6CDD20
MOV             R10, #0
ADD             R6, R0, #0xC
VMRS            APSR_nzcv, FPSCR
BLE             loc_286F80
LDR             R0, [R1]
TST             R0, #1
BNE             loc_286F50
MOV             R0, R1
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_286F50
LDR             R0, =unk_6E19DC
VSTM            R0!, {S16}
VSTM            R0, {S16-S17}
LDR             R0, =dword_6CDD20
NOP
LDR             R1, =unk_6E19DC
MOV             R0, R5
BL              sub_4CD5AC
VMUL.F32        S0, S0, S19
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R6,#0x7C]
VNEGCC.F32      S0, S0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGE             loc_286FF0
B               loc_287000
NOP
BCS             loc_287000
LDR             R0, [R1,#(dword_6CDD24 - 0x6CDD20)]
TST             R0, #1
BNE             loc_286FC4
LDR             R0, =dword_6CDD24
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_286FC4
VMOV.F32        S0, S16
LDR             R0, =flt_6E19E8
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_6E19EC - 0x6E19E8)]
VSTR            S18, [R0,#(flt_6E19F0 - 0x6E19E8)]
LDR             R0, =dword_6CDD24
NOP
LDR             R1, =flt_6E19E8
MOV             R0, R5
BL              sub_4CD5AC
VMUL.F32        S0, S0, S19
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R6,#0x7C]
VNEGCC.F32      S0, S0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_287000
VSTR            S17, [SP,#0x70+var_5C]
VSTR            S16, [SP,#0x70+var_58]
VSTR            S18, [SP,#0x70+var_54]
B               loc_287088
VLDR            S18, [R5]
VCMPE.F32       S18, S16
VMRS            APSR_nzcv, FPSCR
VLDR            S20, [R5,#8]
BLE             loc_287050
VLDR            S21, =64.0
VMOV.F32        S0, S21
BL              sub_464318
VMOV.F32        S19, S0
VMOV.F32        S0, S21
BL              sub_464380
VMUL.F32        S1, S18, S19
VMUL.F32        S2, S19, S20
VMLA.F32        S1, S0, S20
VMLS.F32        S2, S18, S0
VSTR            S1, [SP,#0x70+var_5C]
LDR             R0, [R5,#4]
STR             R0, [SP,#0x70+var_58]
VSTR            S2, [SP,#0x70+var_54]
B               loc_287088
VLDR            S21, =-64.0
VMOV.F32        S0, S21
BL              sub_464318
VMOV.F32        S19, S0
VMOV.F32        S0, S21
BL              sub_464380
VMUL.F32        S1, S18, S19
VMUL.F32        S2, S19, S20
VMLA.F32        S1, S0, S20
VMLS.F32        S2, S18, S0
VSTR            S1, [SP,#0x70+var_5C]
LDR             R0, [R5,#4]
STR             R0, [SP,#0x70+var_58]
VSTR            S2, [SP,#0x70+var_54]
VLDR            S3, [SP,#0x70+var_5C]
VLDR            S2, [SP,#0x70+var_58]
VLDR            S1, [SP,#0x70+var_54]
VMUL.F32        S0, S3, S3
LDR             R9, =off_6CE970
MOV             R3, #0
ADD             R5, SP, #0x70+var_68
MOV             R2, R3
VMLA.F32        S0, S2, S2
VMLA.F32        S0, S1, S1
VSQRT.F32       S4, S0
VDIV.F32        S0, S17, S4
VMUL.F32        S3, S3, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S1, S0
VSTR            S3, [SP,#0x70+var_5C]
VSTR            S2, [SP,#0x70+var_58]
VSTR            S0, [SP,#0x70+var_54]
LDR             R0, [R9]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x46C
BL              sub_10A358
CMP             R0, #0
LDRNE           R1, [R4]
BLNE            sub_284094
STR             R0, [SP,#0x70+var_68]
ADD             R0, R5, #4
LDR             R5, [SP,#0x70+var_68]
STR             R0, [SP,#0x70+var_60]
STR             R0, [SP,#0x70+var_64]
ADD             R6, SP, #0x70+var_5C
MOV             R1, #0
MOV             R0, R5
BL              sub_14C3E8
MOV             R1, R7
MOV             R0, R5
BL              sub_14E984
MOV             R1, R7
ADD             R0, R5, #0x3F8
BL              sub_28BF30
VSTR            S16, [SP,#0x70+var_4C]
ADD             R0, R5, #0x400
ADD             R3, SP, #0x70+var_48
MOV             R1, R6
ADD             R0, R0, #0x58 ; 'X'
ADD             R2, SP, #0x70+var_4C
MOV             R6, R0
VSTM            R3, {S16-S17}
BL              sub_4632FC
ADD             R0, R5, #0x400
VLDR            S1, [R6]
VLDR            S0, [R0,#0x50]
MOV             R0, #7
VMUL.F32        S1, S1, S0
VSTR            S1, [R6]
VLDR            S1, [R6,#4]
VMUL.F32        S1, S1, S0
VSTR            S1, [R6,#4]
VLDR            S1, [R6,#8]
VMUL.F32        S0, S1, S0
VSTR            S0, [R6,#8]
STRB            R0, [R5,#0x3F4]
LDR             R6, [R5,#0x468]
LDR             R9, [R9]
LDR             R7, [R6]
BL              sub_4635D8
MOV             R3, R0
LDR             R1, =0x1B1
MOV             R2, R7
MOV             R0, R9
STR             R10, [SP,#0x70+var_70]
BL              sub_52C7A8
STR             R0, [R6,#4]
STRH            R10, [R0,#0xA]
MOV             R0, R5
BL              sub_2835A8
LDR             R0, [R4,#0x20]
LDR             R2, [R4,#0x1C]
ADD             R1, SP, #0x70+var_68
SUB             R2, R0, R2
SMULL           R3, R2, R8, R2
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
ADD             R2, R2, #1
CMP             R2, #2
BHI             loc_287214
CMP             R0, #0
BEQ             loc_287208
LDR             R2, [SP,#0x70+var_68]
ADD             R1, R1, #4
STR             R2, [R0],#4
STR             R1, [R0]
LDR             R1, [SP,#0x70+var_60]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0x70+var_60]
LDR             R0, [R4,#0x20]
ADD             R0, R0, #0xC
STR             R0, [R4,#0x20]
LDR             R1, [SP,#0x70+var_60]
ADD             R0, SP, #0x70+var_64
CMP             R1, R0
BNE             loc_287240
LDR             R0, [SP,#0x70+var_68]
CMP             R0, #0
BEQ             loc_287240
BL              sub_2841C8
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x70+var_64]
STR             R1, [R0,#4]
STR             R0, [R1]
MOV             R0, #1
ADD             SP, SP, #0x38 ; '8'
VPOP            {D8-D10}
POP             {R4-R10,PC}
