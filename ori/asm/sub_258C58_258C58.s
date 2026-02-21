PUSH            {R4-R9,LR}
MOV             R4, R0
LDR             R6, =off_6CE098
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R0, [R6]
SUB             SP, SP, #0x14
BL              sub_5CB188
CMP             R0, #0
MOV             R7, #0
BEQ             loc_258C94
LDR             R0, [R4,#0xB5C]
LDRB            R1, [R0,#0x44]
CMP             R1, #0
STRBNE          R7, [R0,#0x44]
VMOV.F32        S0, S16
MOV             R0, R4
BL              sub_259350
LDR             R0, [R4,#0x80]
LDR             R8, =off_6CE970
CMP             R0, #0
BEQ             loc_258CC4
CMP             R0, #1
BEQ             loc_258F34
CMP             R0, #2
BEQ             loc_258D84
B               loc_258F34
LDR             R1, [R4,#0xA74]
LDR             R0, [R6]
VLDR            S0, [R1,#0x2C]
LDR             R1, =0x129F0
LDR             R2, [R0,#0x8C]
LDR             R1, [R1,R0]
ADD             R2, R2, #0x194
VLDM            R2, {S2-S3}
LDR             R1, [R1,#-0xC]
VLDR            S1, [R1,#0x90]
VADD.F32        S1, S1, S2
VADD.F32        S1, S1, S3
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_258F34
LDR             R2, [R0,#0x80]!
ADD             R0, R0, #4
STR             R0, [SP,#0x38+var_34]
STR             R2, [SP,#0x38+var_38]
LDR             R2, [R0,#4]
ADD             R1, SP, #0x38+var_34
MOV             R3, #0x100
STR             R2, [SP,#0x38+var_30]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R5, [SP,#0x38+var_38]
MOV             R0, #2
MOV             R2, #1
MOV             R1, #0xA
STRB            R0, [R5,#0xC]
ADD             R0, R5, #0x14
STR             R7, [R5,#0x10]
BL              sub_14C548
LDR             R0, [R5]
LDR             R12, [R8]
LDR             R2, =0x301DA
MOV             R3, #0
LDR             R1, [R0]
LDR             R0, =0xFFE683CC
SUB             R0, R12, R0
BL              sub_503720
MOV             R0, SP
NOP
BL              sub_62938C
LDR             R0, [R4,#0x80]
ADD             R0, R0, #1
STR             R0, [R4,#0x80]
B               loc_258F34
LDR             R1, [R4,#0xA74]
LDR             R0, [R6]
VLDR            S17, =4.0
MOV             R9, #6
VLDR            S0, [R1,#0x2C]
LDR             R1, =0x129F0
LDR             R2, [R0,#0x8C]
LDR             R1, [R1,R0]
VLDR            S2, [R2,#0x194]
VLDR            S3, [R2,#0x19C]
LDR             R1, [R1,#-0xC]
VLDR            S1, [R1,#0x90]
VADD.F32        S1, S1, S2
VADD.F32        S1, S1, S3
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_258E4C
MOV             R0, #5
STRB            R0, [R4]
LDR             R0, [R6]
ADD             R1, SP, #0x38+var_34
MOV             R3, #0x100
LDR             R2, [R0,#0x80]!
ADD             R0, R0, #4
STR             R0, [SP,#0x38+var_34]
STR             R2, [SP,#0x38+var_38]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x38+var_30]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R5, [SP,#0x38+var_38]
MOV             R2, #1
MOV             R1, #0x11
ADD             R0, R5, #0x14
STRB            R9, [R5,#0xC]
BL              sub_14C548
MOV             R0, #0xFFFFFF00
VMOV.F32        S0, S17
REV             R0, R0
ADD             R1, SP, #0x38+var_2C
STR             R0, [SP,#0x38+var_2C]
ADD             R0, R5, #0x400
ADD             R0, R0, #0x3DC
BL              sub_4E665C
MOV             R0, SP
NOP
BL              sub_62938C
NOP
NOP
B               loc_258F34
LDR             R1, [R8]
ADD             R1, R1, #0x100000
ADD             R1, R1, #0x9B000
LDR             R1, [R1,#(loc_19B0B4 - 0x19B000)]
TST             R1, #1
BEQ             loc_258F34
LDR             R2, [R0,#0x80]!
ADD             R0, R0, #4
STR             R0, [SP,#0x38+var_30]
STR             R2, [SP,#0x38+var_34]
LDR             R2, [R0,#4]
ADD             R1, SP, #0x38+var_30
MOV             R3, #0x100
STR             R2, [SP,#0x38+var_2C]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R5, [SP,#0x38+var_34]
MOV             R0, #4
MOV             R2, #1
MOV             R1, #0xE
STRB            R0, [R5,#0xC]
ADD             R0, R5, #0x14
STR             R7, [R5,#0x10]
BL              sub_14C548
LDR             R0, [R6]
MOV             R1, #0xFFFFFFFF
LDR             R0, [R0,#0x8C]
LDR             R2, [R0,#0x50C]
ADD             R0, R5, #0x14
BL              sub_5C55C8
VMOV            S0, R0
VLDR            S1, =0.0
MOV             R0, #0xFFFFFF00
VSTR            S1, [R5,#0x3B0]
REV             R0, R0
MOV             R1, SP
VCVT.F32.S32    S0, S0
VSTR            S0, [R5,#0x3B4]
VMOV.F32        S0, S17
STR             R0, [SP,#0x38+var_38]
ADD             R0, R5, #0x400
ADD             R0, R0, #0x3DC
BL              sub_4E665C
ADD             R0, SP, #0x38+var_34
NOP
BL              sub_62938C
LDR             R5, [R8]
LDR             R0, [R6]
BL              sub_254A78
ADD             R2, R0, #0x24 ; '$'
MOV             R3, #1
ADD             R1, R3, #0x20C
MOV             R0, R5
STR             R7, [SP,#0x38+var_38]
BL              sub_52AEA8
LDR             R1, [R4,#0xB50]
STR             R1, [R0,#0x164]
STRB            R9, [R4]
VMOV.F32        S0, S16
LDR             R0, [R4,#0xB5C]
BL              sub_258678
CMP             R0, #0
NOP
BEQ             loc_258FD8
LDR             R0, [R4,#0xB5C]
VLDR            S0, [R0,#8]
LDR             R0, [R0]
VLDR            S1, [R0,#0x1D0]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_259020
LDR             R0, [R6]
ADD             R1, SP, #0x38+var_34
LDR             R2, [R0,#0x80]!
ADD             R0, R0, #4
STR             R0, [SP,#0x38+var_34]
STR             R2, [SP,#0x38+var_38]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x38+var_30]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x38+var_38]
BL              sub_256768
MOV             R0, SP
NOP
BL              sub_62938C
MOV             R0, #7
STRB            R0, [R4]
LDR             R0, [R4,#0xA70]
CMP             R0, #0
BEQ             loc_258FC0
BL              sub_533330
STR             R7, [R4,#0xA70]
LDR             R0, [R4,#0xB50]
BL              sub_259C00
LDR             R0, [R4,#0xA74]
NOP
BL              sub_24F1C8
STRB            R7, [R4,#0xA95]
LDR             R0, [R4,#0xB5C]
VLDR            S2, [R0,#8]
LDR             R0, [R0]
VLDR            S3, [R0,#0x1D8]
VLDR            S0, [R0,#0x1D0]
LDR             R0, [R4,#0xA74]
VSUB.F32        S2, S2, S3
VMOV.F32        S1, S0
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S0, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_259034
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R9,LR}
B               sub_24D588
LDR             R0, [R4,#0xA74]
BL              sub_24F6A0
NOP
NOP
B               loc_258FD8
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R9,LR}
B               sub_24D5B8
