PUSH            {R4-R11,LR}
MOV             R4, R0
ADD             R8, R4, #0x400
LDR             R11, =off_6CDF98
VPUSH           {D8-D9}
SUB             SP, SP, #0x64
LDR             R0, [R11]
VLDR            S16, [R8,#8]
LDR             R9, [R0,#0x124]
ADD             R0, R0, #0x12800
VLDR            S0, [R0,#0x188]
LDR             R0, [R4,#4]
VNEG.F32        S17, S0
BL              sub_5CC564
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_272FA4
VCMPE.F32       S16, S17
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S17
VMOVCS.F32      S0, S16
LDR             R10, =off_6CE970
VLDR            S2, =0.0039062
VLDR            S17, =1.0
VLDR            S16, =0.0
VSTR            S0, [R8,#8]
LDR             R0, [R10]
ADD             R2, SP, #0x98+var_90
MOV             R1, #0
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VSTR            S0, [SP,#0x98+var_90]
VMOV.F32        S0, S17
VMOV            S1, R0
ADD             R0, R4, #0x400
VSTR            S16, [SP,#0x98+var_8C]
ADD             R0, R0, #0xC
VSTR            S16, [SP,#0x98+var_88]
MOV             R5, R0
VCVT.F32.S32    S1, S1
VMUL.F32        S18, S1, S2
BL              sub_5A2B20
VMOV.F32        S0, S18
MOV             R0, R5
BL              sub_5A2484
LDR             R0, [R4,#4]
ADD             R1, R4, #0x410
BL              sub_2715F4
LDR             R0, [R4,#4]
MOV             R1, SP
BL              sub_5CC478
MOV             R1, SP
ADD             R0, R4, #8
BL              sub_14E984
LDR             R0, [R11]
NOP
BL              sub_5CD764
CMP             R0, #0
NOP
BNE             loc_273344
LDR             R0, [R4,#4]
ADD             R0, R0, #0x580
LDM             R0, {R5,R7}
CMP             R5, R7
BEQ             loc_273220
ADD             R0, SP, #0x98+var_68
ADD             R6, SP, #0x98+var_88
STR             R0, [SP,#0x98+var_90]
LDR             R0, [R5]
ADD             R1, SP, #0x98+var_88
ADD             R3, SP, #0x98+var_8C
STR             R0, [SP,#0x98+var_8C]
ADD             R0, R5, #4
STR             R0, [SP,#0x98+var_88]
LDR             R2, [R5,#8]
ADD             R0, SP, #0x98+var_6C
STR             R2, [SP,#0x98+var_84]
STR             R1, [R2]
STR             R1, [R5,#8]
LDR             R1, [R11]
ADD             R2, SP, #0x98+var_44
BL              sub_5CCC2C
LDR             R0, [SP,#0x98+var_84]
CMP             R0, R6
BNE             loc_2730C0
LDR             R0, [SP,#0x98+var_8C]
CMP             R0, #0
BEQ             loc_2730C0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x98+var_88]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [SP,#0x98+var_6C]
CMP             R0, #0
BEQ             loc_273208
LDR             R0, [R4,#4]
BL              sub_5CC430
LDR             R5, =0xFFE683CC
LDR             R0, [R10]
LDR             R1, =0x300DC
MOV             R2, #0
SUB             R0, R0, R5
BL              sub_503414
LDR             R0, [R4,#4]
NOP
BL              sub_5CC430
LDR             R0, [R10]
LDR             R1, =0x300DE
MOV             R2, #0
SUB             R0, R0, R5
BL              sub_503414
VLDR            S2, [R9,#0x288]
VLDR            S1, =0.5
VLDR            S0, [SP,#0x98+var_40]
MOV             R1, #0
VMUL.F32        S1, S2, S1
MOV             R3, #1
ADD             R2, SP, #0x98+var_44
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S1
VSTR            S0, [SP,#0x98+var_40]
VLDR            S0, [R9,#0xD8]
VADD.F32        S0, S0, S17
VSTR            S0, [SP,#0x98+var_3C]
LDR             R0, [R10]
STR             R1, [SP,#0x98+var_98]
MOV             R1, #0x54 ; 'T'
BL              sub_52AEA8
LDR             R0, [R4,#4]
MOV             R1, #2
BL              sub_2703B0
LDR             R0, [SP,#0x98+var_6C]
ADD             R1, SP, #0x98+var_7C
LDR             R2, [R0,#4]!
ADD             R0, R0, #4
STR             R0, [SP,#0x98+var_7C]
STR             R2, [SP,#0x98+var_80]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x98+var_78]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x98+var_80]
BL              sub_27D998
LDR             R1, [SP,#0x98+var_78]
ADD             R0, SP, #0x98+var_7C
CMP             R1, R0
BNE             loc_2731C4
LDR             R0, [SP,#0x98+var_80]
CMP             R0, #0
BEQ             loc_2731C4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x98+var_7C]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [SP,#0x98+var_90]
LDR             R1, [SP,#0x98+var_64]
CMP             R1, R0
BNE             loc_2731F8
LDR             R0, [SP,#0x98+var_6C]
CMP             R0, #0
BEQ             loc_2731F8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x98+var_68]
STR             R1, [R0,#4]
STR             R0, [R1]
B               loc_273220
LDRD            R0, R1, [SP,#0x98+var_68]
ADD             R5, R5, #0xC
CMP             R5, R7
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_273064
LDR             R0, [R4,#4]
ADD             R1, SP, #0x98+var_5C
LDR             R0, [R0,#0x584]
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x98+var_5C]
STR             R2, [SP,#0x98+var_60]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x98+var_58]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x98+var_60]
ADD             R1, SP, #0x98+var_54
BL              sub_5CCFE8
LDR             R1, [SP,#0x98+var_58]
ADD             R0, SP, #0x98+var_5C
CMP             R1, R0
BNE             loc_273280
LDR             R0, [SP,#0x98+var_60]
CMP             R0, #0
BEQ             loc_273280
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x98+var_5C]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#4]
VLDR            S0, [SP,#0x98+var_54]
ADD             R0, R0, #0x400
ADD             R0, R0, #0x198
VLDR            S1, [R0]
ADD             R0, R9, #0x400
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x98+var_54]
VLDR            S1, [R0,#0x2E8]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_273308
VLDR            S2, [R9,#0xDC]
VADD.F32        S1, S1, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_273334
LDR             R0, [R4,#4]
BL              sub_26F204
ADD             SP, SP, #0x64 ; 'd'
VPOP            {D8-D9}
POP             {R4-R11,PC}
DCD off_6CDF98
DCD off_6CE970
DCFS 0.0039062
DCFS 1.0
DCFS 0.0
DCD 0x300DC
DCD 0xFFE683CC
DCD 0x300DE
DCFS 0.5
LDR             R0, [R10]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
TST             R0, #2
BEQ             loc_273334
LDR             R0, [R11]
BL              sub_5CD764
CMP             R0, #0
NOP
BEQ             loc_273360
LDR             R0, [R4,#4]
LDRB            R1, [R0,#0x67]
CMP             R1, #4
BEQ             loc_273374
LDR             R9, =0xFFE683CC
MOV             R5, #0
MOV             R7, #0x370
CMP             R5, #2
ADD             R0, R4, #0x400
BCC             loc_273388
BL              sub_2FE484
LDR             R0, [R4,#4]
BL              sub_273518
ADD             SP, SP, #0x64 ; 'd'
VPOP            {D8-D9}
POP             {R4-R11,PC}
MOV             R1, #0
BL              sub_26E07C
ADD             SP, SP, #0x64 ; 'd'
VPOP            {D8-D9}
POP             {R4-R11,PC}
ADD             R6, R0, R5,LSL#2
VLDR            S1, [R8,#8]
VLDR            S0, [R6]
ADD             R1, R7, R5,LSL#2
VADD.F32        S0, S0, S1
VSTR            S0, [R6]
LDR             R0, [R11]
LDR             R0, [R0,#0x124]
LDR             R0, [R0,R1]
VMOV            S1, R0
VCVT.F32.U32    S1, S1
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_2733DC
LDR             R0, [R10]
LDR             R2, =0x300D2
MOV             R3, #0
ADD             R1, R4, #8
SUB             R0, R0, R9
BL              sub_503720
VSTR            S16, [R6]
ADD             R5, R5, #1
CMP             R5, #2
BCC             loc_273350
ADD             SP, SP, #0x64 ; 'd'
VPOP            {D8-D9}
POP             {R4-R11,PC}
