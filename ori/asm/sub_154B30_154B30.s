PUSH            {R4-R11,LR}
MOV             R4, R0
LDR             R10, =off_6CE970
VPUSH           {D8-D11}
SUB             SP, SP, #0x3C
LDR             R0, [R10]
BL              sub_52FC34
STR             R0, [SP,#0x80+var_78]
LDR             R0, [R4,#8]
MOV             R1, #1
LDR             R6, [R0,#0x18]
MOV             R0, R4
BL              sub_153EF8
LDRB            R0, [R4,#0x38]
VLDR            S22, =0.0
MOV             R7, #2
CMP             R0, #0
BNE             loc_154D00
LDR             R0, [R10]
MOV             R5, #0
VLDR            S16, [R6,#0x39C]
BL              sub_5EE4D4
CMP             R0, #0
LDR             R0, [R4,#0x14]
VLDR            S4, [R6,#0x3A0]
ADDNE           R0, R0, #0x10
LDRH            R1, [R0,#6]
LDRH            R2, [R0]
LDRH            R3, [R0,#2]
VMOV            S0, R1
SUB             R2, R2, #1
LDRH            R0, [R0,#4]
VMOV            S1, R2
SUB             R3, R3, #1
VMOV            S2, R0
VCVT.F32.U32    S6, S0
VMOV            S0, R1
VMOV            S3, R3
VCVT.F32.S32    S5, S1
LDR             R0, [R10]
VCVT.F32.U32    S2, S2
MOV             R1, #0
VCVT.F32.U32    S1, S0
VCVT.F32.S32    S0, S3
VSUB.F32        S17, S4, S6
VSUB.F32        S18, S17, S5
VADD.F32        S19, S2, S17
VADD.F32        S21, S1, S17
VSUB.F32        S20, S17, S0
BL              sub_5EE540
VCVT.S32.F32    S0, S0
VMOV            R0, S0
CMP             R0, #1
BEQ             loc_154C1C
CMP             R0, #2
BEQ             loc_1551DC
CMP             R0, #3
BNE             loc_154C74
B               loc_154C58
LDR             R0, [R10]
MOV             R1, #1
BL              sub_5EE540
VSUB.F32        S0, S17, S0
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BHI             loc_1551DC
VSTR            S22, [R6,#0x98]
LDR             R0, [R10]
ADD             SP, SP, #0x3C ; '<'
VLDR            S0, =2.0
MOV             R1, #0
VPOP            {D8-D11}
POP             {R4-R11,LR}
B               sub_52A480
VLDR            S0, =1.0
MOV             R1, #0
VSTR            S0, [R6,#0x98]
LDR             R0, [R10]
VLDR            S0, =4.0
BL              sub_52A480
MOV             R5, #1
LDR             R0, [R10]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
ANDS            R1, R0, #3
MOVNE           R1, #1
ORRS            R2, R1, R5
MOV             R1, #0xFFFFFFFF
BEQ             loc_154CEC
LDR             R2, [R4,#8]
LDR             R2, [R2,#0x470]
ANDS            R0, R0, R2
MOVNE           R0, #1
ORRS            R0, R0, R5
BEQ             loc_154CE4
VCMPE.F32       S18, S16
VMRS            APSR_nzcv, FPSCR
VCMPELS.F32     S16, S19
VMRSLS          APSR_nzcv, FPSCR
STRBLS          R7, [R4,#0x38]
BLS             loc_154D00
VCMPE.F32       S20, S16
VMRS            APSR_nzcv, FPSCR
VCMPELS.F32     S16, S21
VMRSLS          APSR_nzcv, FPSCR
MOVLS           R0, #1
STRBLS          R0, [R4,#0x38]
BLS             loc_154D00
STRB            R1, [R4,#0x38]
B               loc_154D00
ADD             R0, R6, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_154CE4
LDR             R0, [R10]
BL              sub_5EE83C
CMP             R0, #0
LDRBNE          R0, [R4,#0x38]
CMPNE           R0, #0
BEQ             loc_154D3C
LDR             R0, [R10]
BL              sub_5EEDB4
CMP             R0, #0x100
NOP
BEQ             loc_154D3C
LDR             R0, [R10]
MOV             R2, #1
MOV             R1, #0x100
BL              sub_530184
LDR             R0, [R6,#0x204]
LDR             R9, =off_63FDB0
ADD             R0, R0, #0xC
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_154F68
MOV             R0, R6
BL              sub_5C55B8
CMP             R0, #9
NOP
BEQ             loc_154F68
LDR             R0, [SP,#0x80+var_78]
LDRB            R0, [R0,#0x1D9]
TST             R0, #1
BNE             loc_154D88
AND             R0, R0, #4
MOVS            R0, R0,LSR#2
BEQ             loc_154E34
LDR             R1, =unk_6E1FD0
ADD             R3, SP, #0x80+var_70
MOV             R5, #0
ADD             R0, R1, #0x1E8
LDR             R1, [R1,#(dword_6E21C0 - 0x6E1FD0)]
LDM             R0, {R0,R2}
MOV             R6, R5
STR             R1, [SP,#0x80+var_68]
STM             R3, {R0,R2}
MOV             R3, R5
LDR             R0, [R4,#8]
ADD             R2, SP, #0x80+var_70
LDR             R0, [R0,#0x18]
LDR             R1, [R0]
LDR             R12, [R1,#0x30]
ADD             R1, SP, #0x80+var_64
BLX             R12
LDR             R0, [R10]
LDR             R3, [R4,#8]
MOV             R1, R5
ADD             R2, SP, #0x80+var_64
STRD            R6, R7, [SP,#0x80+var_80]
BL              sub_52C114
LDR             R1, [R4,#8]
LDR             R2, [SP,#0x80+var_78]
MOV             R3, #0
ADD             R0, SP, #0x80+var_74
BL              sub_4E4E28
LDR             R5, [R10]
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_154E2C
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
BNE             loc_154E2C
MOV             R1, #0x20 ; ' '
MOV             R0, R4
BL              sub_154934
LDRD            R0, R1, [R9,#(off_63FE28 - 0x63FDB0)]
B               loc_1551D8
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #9
MOV             R0, R6
BL              sub_14C548
LDR             R5, [R10]
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_154E74
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
LDREQ           R5, [R10]
BEQ             loc_154EC4
VMOV.F32        S0, S22
LDR             R1, [R4,#8]
LDR             R0, [SP,#0x80+var_78]
MOV             R2, #0
BL              sub_500FA4
MOV             R1, R0
LDR             R2, [SP,#0x80+var_78]
MOV             R0, R4
BL              sub_154AEC
NOP
NOP
B               loc_154F68
DCD off_6CE970
DCFS 0.0
DCFS 2.0
DCFS 1.0
DCFS 4.0
DCD off_63FDB0
DCD unk_6E1FD0
DCD byte_19CF30
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_154F68
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
BNE             loc_154F68
ADD             R0, SP, #0x80+var_74
BL              sub_385944
LDR             R0, =unk_6E1FD0
VMOV.F32        S0, S22
ADD             R2, SP, #0x80+var_74
LDR             R1, [R0,#(dword_6E225C - 0x6E1FD0)]
STR             R1, [SP,#0x80+var_74]
LDR             R1, [R0,#(dword_6E2260 - 0x6E1FD0)]
STR             R1, [SP,#0x80+var_70]
LDR             R1, [R0,#(dword_6E2264 - 0x6E1FD0)]
STR             R1, [SP,#0x80+var_6C]
LDR             R1, [R0,#(dword_6E2268 - 0x6E1FD0)]
STR             R1, [SP,#0x80+var_68]
LDR             R1, [R0,#(dword_6E226C - 0x6E1FD0)]
STR             R1, [SP,#0x80+var_64]
LDR             R1, [R0,#(dword_6E2270 - 0x6E1FD0)]
STR             R1, [SP,#0x80+var_60]
LDR             R1, [R0,#(dword_6E2274 - 0x6E1FD0)]
STR             R1, [SP,#0x80+var_5C]
LDR             R1, [R0,#(dword_6E2278 - 0x6E1FD0)]
STR             R1, [SP,#0x80+var_58]
LDR             R1, [R0,#(dword_6E227C - 0x6E1FD0)]
STR             R1, [SP,#0x80+var_54]
LDR             R0, [R0,#(dword_6E2280 - 0x6E1FD0)]
STR             R0, [SP,#0x80+var_50]
LDR             R1, [R4,#8]
LDR             R0, [SP,#0x80+var_78]
BL              sub_500FA4
MOV             R1, R0
LDR             R2, [SP,#0x80+var_78]
MOV             R0, R4
BL              sub_154AEC
LDRB            R0, [R4,#0x38]
CMP             R0, #0
BEQ             loc_1551DC
MOV             R0, R6
BL              sub_5C55B8
CMP             R0, #9
NOP
BNE             loc_1551DC
LDRB            R0, [R4,#0x39]
CMP             R0, #0
BNE             loc_155020
MOV             R0, R4
BL              sub_1579F0
LDR             R5, [R10]
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_155020
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
BNE             loc_155020
LDRSB           R0, [R4,#0x38]
CMP             R0, #1
BEQ             loc_154FD8
CMP             R0, #2
BNE             loc_155020
MOV             R5, #0
MOV             R11, R5
B               loc_155010
LDR             R8, [R10]
BL              sub_4635D8
MOV             R3, R0
MOV             R2, R7
MOV             R1, #0x67 ; 'g'
MOV             R0, R8
STR             R11, [SP,#0x80+var_80]
BL              sub_52C7A8
ADD             R5, R5, #1
CMP             R5, #0x20 ; ' '
BCS             loc_155020
ADD             R0, R4, R5,LSL#2
LDR             R7, [R0,#0x40]
CMP             R7, #0
BNE             loc_154FE4
LDR             R5, [R10]
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_155048
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
LDREQ           R5, [R10]
BEQ             loc_155098
MOV             R0, R6
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_1551DC
ADD             R0, R6, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_1551DC
LDRSB           R0, [R4,#0x38]
CMN             R0, #1
BEQ             loc_155188
CMP             R0, #2
MOV             R0, R4
BEQ             loc_155178
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8-D11}
POP             {R4-R11,LR}
B               sub_15542C
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_1551DC
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
BNE             loc_1551DC
LDRSB           R0, [R4,#0x38]
CMN             R0, #1
BEQ             loc_1551E8
CMP             R0, #1
BEQ             loc_155228
CMP             R0, #2
BNE             loc_1551DC
ADD             R0, SP, #0x80+var_74
BL              sub_385944
LDR             R5, =unk_6E1FD0
VMOV.F32        S0, S22
ADD             R2, SP, #0x80+var_74
LDR             R0, [R5,#(dword_6E2284 - 0x6E1FD0)]
STR             R0, [SP,#0x80+var_74]
LDR             R0, [R5,#(dword_6E2288 - 0x6E1FD0)]
STR             R0, [SP,#0x80+var_70]
LDR             R0, [R5,#(dword_6E228C - 0x6E1FD0)]
STR             R0, [SP,#0x80+var_6C]
LDR             R0, [R5,#(dword_6E2290 - 0x6E1FD0)]
STR             R0, [SP,#0x80+var_68]
LDR             R0, [R5,#(dword_6E2294 - 0x6E1FD0)]
STR             R0, [SP,#0x80+var_64]
LDR             R0, [R5,#(dword_6E2298 - 0x6E1FD0)]
STR             R0, [SP,#0x80+var_60]
LDR             R0, [R5,#(dword_6E229C - 0x6E1FD0)]
STR             R0, [SP,#0x80+var_5C]
LDR             R0, [R5,#(dword_6E22A0 - 0x6E1FD0)]
STR             R0, [SP,#0x80+var_58]
LDR             R0, [R5,#(dword_6E22A4 - 0x6E1FD0)]
STR             R0, [SP,#0x80+var_54]
LDR             R0, [R5,#(dword_6E22A8 - 0x6E1FD0)]
STR             R0, [SP,#0x80+var_50]
LDR             R1, [R4,#8]
LDR             R0, [SP,#0x80+var_78]
BL              sub_500FA4
MOV             R1, R0
LDR             R2, [SP,#0x80+var_78]
MOV             R0, R4
BL              sub_154AEC
VLDR            S0, [R5,#(flt_6E22AC - 0x6E1FD0)]
ADD             R5, R5, #0x2BC
MOV             R0, R4
VLDM            R5, {S1-S3}
BL              sub_155CDC
LDRD            R0, R1, [R9,#(off_63FE30 - 0x63FDB0)]
NOP
B               loc_1551D8
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8-D11}
POP             {R4-R11,LR}
B               sub_155284
LDR             R0, [R4,#8]
LDR             R5, [R0,#0x18]
LDR             R0, [R4,#0x14]
LDR             R1, [R0,#0x40]
STR             R1, [SP,#0x80+var_80]
LDR             R1, [R0,#0x3C]
STR             R1, [SP,#0x80+var_7C]
LDR             R0, [R0,#0x38]
VMOV            S1, R1
VMOV            S0, R0
STR             R0, [SP,#0x80+var_78]
VLDR            S2, [SP,#0x80+var_80]
MOV             R0, R4
BL              sub_1570A4
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xB
MOV             R0, R5
BL              sub_14C548
LDRD            R0, R1, [R9,#(off_63FE38 - 0x63FDB0)]
STRD            R0, R1, [R4,#0xC]
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8-D11}
POP             {R4-R11,PC}
MOV             R0, R6
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_1551DC
ADD             R0, R6, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_1551DC
MOV             R1, #0x20 ; ' '
MOV             R0, R4
BL              sub_154934
NOP
NOP
B               loc_155188
MOV             R0, R6
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_1551DC
ADD             R0, R6, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_1551DC
LDR             R0, =unk_6E20D0
LDRH            R1, [R0,#(word_6E212E - 0x6E20D0)]
MOV             R0, R4
BL              sub_154934
MOV             R0, R4
NOP
BL              sub_156908
ADD             SP, SP, #0x3C ; '<'
MOV             R0, R4
VPOP            {D8-D11}
POP             {R4-R11,LR}
B               sub_15542C
