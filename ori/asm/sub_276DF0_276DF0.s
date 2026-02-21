PUSH            {R4-R8,LR}
MOV             R6, R2
MOV             R8, R0
MOV             R7, R1
VPUSH           {D8}
MOV             R5, R3
LDM             R2, {R0-R4,R12}
VMOV.F32        S17, S0
SUB             SP, SP, #0x58
VMOV            S0, R0
ADD             LR, SP, #0x78+var_60
STM             LR, {R0-R4,R12}
ADD             R0, SP, #0x78+var_48
VSUB.F32        S0, S0, S17
VSTR            S0, [SP,#0x78+var_60]
VMOV            S0, R1
MOV             R1, R7
VSUB.F32        S0, S0, S17
VSTR            S0, [SP,#0x78+var_5C]
VMOV            S0, R2
ADD             R2, SP, #0x78+var_60
VSUB.F32        S0, S0, S17
VSTR            S0, [SP,#0x78+var_58]
VMOV            S0, R3
MOV             R3, R5
VADD.F32        S0, S0, S17
VSTR            S0, [SP,#0x78+var_54]
VMOV            S0, R4
VADD.F32        S0, S0, S17
VSTR            S0, [SP,#0x78+var_50]
VMOV            S0, R12
VADD.F32        S0, S0, S17
VSTR            S0, [SP,#0x78+var_4C]
STR             R0, [SP,#0x78+var_78]
MOV             R0, R8
BL              sub_275990
CMP             R0, #0
BEQ             loc_2770C0
LDR             R0, [R5]
CMP             R0, #0x3F800000
BGT             loc_2770C0
VLDR            S1, [R6]
VLDR            S0, [SP,#0x78+var_48]
MOV             R3, #0
MOV             R4, R3
VCMPE.F32       S0, S1
ADD             R1, SP, #0x78+var_70
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R6,#0xC]
MOVCC           R3, #1
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R6,#4]
VLDR            S0, [SP,#0x78+var_44]
MOVGT           R4, #1
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R6,#0x10]
ORRCC           R3, R3, #2
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R6,#8]
VLDR            S0, [SP,#0x78+var_40]
ORRGT           R4, R4, #2
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R6,#0x14]
ORRCC           R3, R3, #4
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDM            R7!, {S5}
VLDR            S0, [R8,#8]
VLDR            S2, [R8,#4]
VLDR            S1, [R8]
ORRGT           R4, R4, #4
VLDM            R7, {S3-S4}
VADD.F32        S1, S1, S5
ORR             R0, R3, R4
CMP             R0, #7
VADD.F32        S2, S2, S3
VADD.F32        S0, S0, S4
VSTR            S0, [SP,#0x78+var_68]
VSTM            R1, {S1-S2}
BEQ             loc_276F9C
SUB             R1, R0, #1
TST             R0, R1
MOVEQ           R0, #1
BEQ             loc_276F90
ADD             R2, SP, #0x78+var_30
MOV             R1, R4
MOV             R0, R6
BL              sub_277EBC
MOV             R4, R0
EOR             R1, R3, #7
ADD             R2, SP, #0x78+var_3C
MOV             R0, R6
BL              sub_277EBC
VMOV.F32        S0, S17
MOV             R2, R0
MOV             R3, R4
ADD             R1, SP, #0x78+var_70
MOV             R0, R8
STR             R5, [SP,#0x78+var_78]
BL              sub_275D04
ADD             SP, SP, #0x58 ; 'X'
VPOP            {D8}
POP             {R4-R8,PC}
VLDR            S16, =3.4028e38
EOR             R1, R4, #1
ADD             R2, SP, #0x78+var_30
MOV             R0, R6
BL              sub_277EBC
MOV             R3, R0
ADD             R2, SP, #0x78+var_3C
MOV             R1, R4
MOV             R0, R6
BL              sub_277EBC
VMOV.F32        S0, S17
MOV             R2, R0
ADD             R1, SP, #0x78+var_70
MOV             R0, R8
STR             R5, [SP,#0x78+var_78]
BL              sub_275D04
CMP             R0, #0
NOP
BEQ             loc_276FF8
VLDR            S0, [R5]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S16, S0
EOR             R1, R4, #2
ADD             R2, SP, #0x78+var_30
MOV             R0, R6
BL              sub_277EBC
MOV             R3, R0
ADD             R2, SP, #0x78+var_3C
MOV             R1, R4
MOV             R0, R6
BL              sub_277EBC
VMOV.F32        S0, S17
MOV             R2, R0
ADD             R1, SP, #0x78+var_70
MOV             R0, R8
STR             R5, [SP,#0x78+var_78]
BL              sub_275D04
CMP             R0, #0
NOP
BEQ             loc_277050
VLDR            S0, [R5]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S16, S0
EOR             R1, R4, #4
ADD             R2, SP, #0x78+var_30
MOV             R0, R6
BL              sub_277EBC
MOV             R3, R0
ADD             R2, SP, #0x78+var_3C
MOV             R1, R4
MOV             R0, R6
BL              sub_277EBC
VMOV.F32        S0, S17
MOV             R2, R0
ADD             R1, SP, #0x78+var_70
MOV             R0, R8
STR             R5, [SP,#0x78+var_78]
BL              sub_275D04
CMP             R0, #0
NOP
BEQ             loc_2770A8
VLDR            S0, [R5]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S16, S0
LDR             R1, =0x7F7FFFFF
VMOV            R0, S16
CMP             R0, R1
VSTRNE          S16, [R5]
MOVNE           R0, #1
BNE             loc_276F90
ADD             SP, SP, #0x58 ; 'X'
MOV             R0, #0
VPOP            {D8}
POP             {R4-R8,PC}
