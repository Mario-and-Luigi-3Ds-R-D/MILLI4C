PUSH            {R4-R11,LR}
MOV             R4, R0
LDR             R9, =off_6CE970
VPUSH           {D8-D11}
SUB             SP, SP, #0x34
LDR             R0, [R9]
BL              sub_52FC34
STR             R0, [SP,#0x78+var_74]
LDR             R0, [R4,#8]
LDR             R6, [R0,#0x18]
ADD             R1, R6, #0x1B0
LDRSB           R3, [R1,#5]
SUBS            R0, R3, #0
LDRSBLT         R2, [R1,#4]
BGE             loc_155FA4
ADD             R0, R0, R2
SXTB            R0, R0
CMP             R0, #0
BLT             loc_155F94
LDRSB           R2, [R1,#4]
CMP             R2, R0
BGT             loc_155FC0
SUB             R0, R0, R2
SXTB            R0, R0
CMP             R2, R0
BLE             loc_155FB0
LDR             R1, [R1]
ADD             R0, R0, R0,LSL#1
ADD             R2, R6, #0x1B0
ADD             R0, R1, R0,LSL#2
VLDR            S0, [R0,#4]
SUB             R0, R3, #1
SXTB            R0, R0
CMP             R0, #0
LDRSBLT         R1, [R2,#4]
BGE             loc_155FF8
ADD             R0, R0, R1
SXTB            R0, R0
CMP             R0, #0
BLT             loc_155FE8
LDRSB           R1, [R2,#4]
CMP             R1, R0
BGT             loc_156014
SUB             R0, R0, R1
SXTB            R0, R0
CMP             R1, R0
BLE             loc_156004
LDR             R1, [R2]
ADD             R0, R0, R0,LSL#1
VLDR            S22, =0.0
ADD             R0, R1, R0,LSL#2
LDR             R11, =unk_6E1FD0
VLDR            S1, [R0,#4]
VSUB.F32        S0, S0, S1
VCMPE.F32       S0, S22
VMRS            APSR_nzcv, FPSCR
BCS             loc_1560A0
MOV             R0, R6
BL              sub_5C55B8
CMP             R0, #0xD
NOP
BNE             loc_1560A0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xE
MOV             R0, R6
BL              sub_14C548
LDR             R0, [R9]
NOP
BL              sub_5EE83C
CMP             R0, #0
NOP
BEQ             loc_1560A0
VLDR            S0, [R11,#(flt_6E231C - 0x6E1FD0)]
VLDR            S1, =256.0
MOV             R2, #1
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R1, R0
LDR             R0, [R9]
BL              sub_530184
LDRB            R0, [R4,#0x38]
CMP             R0, #0
BNE             loc_156238
LDR             R0, [R9]
MOV             R5, #0
VLDR            S16, [R6,#0x39C]
BL              sub_5EE4D4
CMP             R0, #0
LDR             R0, [R4,#0x14]
VLDR            S4, [R6,#0x3A0]
ADDNE           R0, R0, #0x10
LDRH            R1, [R0,#0xE]
LDRH            R2, [R0,#8]
LDRH            R3, [R0,#0xA]
VMOV            S0, R1
SUB             R2, R2, #1
LDRH            R0, [R0,#0xC]
VMOV            S1, R2
SUB             R3, R3, #1
VMOV            S2, R0
VCVT.F32.U32    S6, S0
VMOV            S0, R1
VMOV            S3, R3
VCVT.F32.S32    S5, S1
LDR             R0, [R9]
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
CMP             R0, #5
BEQ             loc_156150
CMP             R0, #6
BEQ             loc_1565EC
CMP             R0, #7
BNE             loc_1561A8
B               loc_15618C
LDR             R0, [R9]
MOV             R1, #1
BL              sub_5EE540
VSUB.F32        S0, S17, S0
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BHI             loc_1565EC
VSTR            S22, [R6,#0x98]
LDR             R0, [R9]
ADD             SP, SP, #0x34 ; '4'
VLDR            S0, =6.0
MOV             R1, #0
VPOP            {D8-D11}
POP             {R4-R11,LR}
B               sub_52A480
VLDR            S0, =1.0
MOV             R1, #0
VSTR            S0, [R6,#0x98]
LDR             R0, [R9]
VLDR            S0, =8.0
BL              sub_52A480
MOV             R5, #1
LDR             R0, [R9]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
ANDS            R1, R0, #3
MOVNE           R1, #1
ORRS            R2, R1, R5
MOV             R1, #3
BEQ             loc_156224
LDR             R2, [R4,#8]
LDR             R2, [R2,#0x470]
ANDS            R0, R0, R2
MOVNE           R0, #1
ORRS            R0, R0, R5
BEQ             loc_15621C
VCMPE.F32       S18, S16
VMRS            APSR_nzcv, FPSCR
VCMPELS.F32     S16, S19
VMRSLS          APSR_nzcv, FPSCR
MOVLS           R0, #5
BLS             loc_156214
VCMPE.F32       S20, S16
VMRS            APSR_nzcv, FPSCR
VCMPELS.F32     S16, S21
VMRSLS          APSR_nzcv, FPSCR
MOVLS           R0, #4
BHI             loc_15621C
STRB            R0, [R4,#0x38]
B               loc_156238
STRB            R1, [R4,#0x38]
B               loc_156238
ADD             R0, R6, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_15621C
LDR             R0, [R9]
BL              sub_5EE83C
CMP             R0, #0
LDRBNE          R0, [R4,#0x38]
CMPNE           R0, #0
BEQ             loc_156274
LDR             R0, [R9]
BL              sub_5EEDB4
CMP             R0, #0x100
NOP
BEQ             loc_156274
LDR             R0, [R9]
MOV             R2, #1
MOV             R1, #0x100
BL              sub_530184
LDR             R0, [R6,#0x204]
ADD             R0, R0, #0xC
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_1563D0
MOV             R0, R6
BL              sub_5C55B8
CMP             R0, #9
NOP
BEQ             loc_1563D0
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #9
MOV             R0, R6
BL              sub_14C548
LDR             R5, [R9]
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_1562E0
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
LDREQ           R5, [R9]
BEQ             loc_156330
VMOV.F32        S0, S22
LDR             R1, [R4,#8]
LDR             R0, [SP,#0x78+var_74]
MOV             R2, #0
BL              sub_500FA4
MOV             R1, R0
LDR             R2, [SP,#0x78+var_74]
MOV             R0, R4
BL              sub_154AEC
NOP
NOP
B               loc_1563D0
DCD off_6CE970
DCFS 0.0
DCD unk_6E1FD0
DCFS 256.0
DCFS 6.0
DCFS 1.0
DCFS 8.0
DCD byte_19CF30
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_1563D0
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
BNE             loc_1563D0
ADD             R0, SP, #0x78+var_70
BL              sub_385944
LDR             R0, [R11,#(dword_6E22B0 - 0x6E1FD0)]
VMOV.F32        S0, S22
ADD             R2, SP, #0x78+var_70
STR             R0, [SP,#0x78+var_70]
LDR             R0, [R11,#(dword_6E22B4 - 0x6E1FD0)]
STR             R0, [SP,#0x78+var_6C]
LDR             R0, [R11,#(dword_6E22B8 - 0x6E1FD0)]
STR             R0, [SP,#0x78+var_68]
LDR             R0, [R11,#(dword_6E22BC - 0x6E1FD0)]
STR             R0, [SP,#0x78+var_64]
LDR             R0, [R11,#(dword_6E22C0 - 0x6E1FD0)]
STR             R0, [SP,#0x78+var_60]
LDR             R0, [R11,#(dword_6E22C4 - 0x6E1FD0)]
STR             R0, [SP,#0x78+var_5C]
LDR             R0, [R11,#(dword_6E22C8 - 0x6E1FD0)]
STR             R0, [SP,#0x78+var_58]
LDR             R0, [R11,#(dword_6E22CC - 0x6E1FD0)]
STR             R0, [SP,#0x78+var_54]
LDR             R0, [R11,#(dword_6E22D0 - 0x6E1FD0)]
STR             R0, [SP,#0x78+var_50]
LDR             R0, [R11,#(dword_6E22D4 - 0x6E1FD0)]
STR             R0, [SP,#0x78+var_4C]
LDR             R1, [R4,#8]
LDR             R0, [SP,#0x78+var_74]
BL              sub_500FA4
MOV             R1, R0
LDR             R2, [SP,#0x78+var_74]
MOV             R0, R4
BL              sub_154AEC
LDRB            R0, [R4,#0x38]
CMP             R0, #0
BEQ             loc_1565EC
MOV             R0, R6
BL              sub_5C55B8
CMP             R0, #9
NOP
BNE             loc_1565EC
LDRB            R0, [R4,#0x39]
CMP             R0, #0
BNE             loc_156488
MOV             R0, R4
BL              sub_1579F0
LDR             R5, [R9]
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_156488
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
BNE             loc_156488
LDRSB           R0, [R4,#0x38]
CMP             R0, #4
BEQ             loc_156440
CMP             R0, #5
BNE             loc_156488
MOV             R5, #0
MOV             R10, R5
B               loc_156478
LDR             R8, [R9]
BL              sub_4635D8
MOV             R3, R0
MOV             R2, R7
MOV             R1, #0x67 ; 'g'
MOV             R0, R8
STR             R10, [SP,#0x78+var_78]
BL              sub_52C7A8
ADD             R5, R5, #1
CMP             R5, #0x20 ; ' '
BCS             loc_156488
ADD             R0, R4, R5,LSL#2
LDR             R7, [R0,#0x40]
CMP             R7, #0
BNE             loc_15644C
LDR             R5, [R9]
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_1564B0
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
LDREQ           R5, [R9]
BEQ             loc_1564F8
MOV             R0, R6
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_1565EC
ADD             R0, R6, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_1565EC
LDRB            R0, [R4,#0x3C]
CMP             R0, #0
MOV             R0, R4
BEQ             loc_1565F8
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8-D11}
POP             {R4-R11,LR}
B               sub_155284
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_1565EC
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
BNE             loc_1565EC
LDRSB           R0, [R4,#0x38]
CMP             R0, #3
BEQ             loc_156608
CMP             R0, #4
BEQ             loc_156650
CMP             R0, #5
BNE             loc_1565EC
ADD             R0, SP, #0x78+var_70
BL              sub_385944
LDR             R0, [R11,#(dword_6E22D8 - 0x6E1FD0)]
VMOV.F32        S0, S22
ADD             R2, SP, #0x78+var_70
STR             R0, [SP,#0x78+var_70]
LDR             R0, [R11,#(dword_6E22DC - 0x6E1FD0)]
STR             R0, [SP,#0x78+var_6C]
LDR             R0, [R11,#(dword_6E22E0 - 0x6E1FD0)]
STR             R0, [SP,#0x78+var_68]
LDR             R0, [R11,#(dword_6E22E4 - 0x6E1FD0)]
STR             R0, [SP,#0x78+var_64]
LDR             R0, [R11,#(flt_6E22E8 - 0x6E1FD0)]
STR             R0, [SP,#0x78+var_60]
LDR             R0, [R11,#(dword_6E22EC - 0x6E1FD0)]
STR             R0, [SP,#0x78+var_5C]
LDR             R0, [R11,#(dword_6E22F0 - 0x6E1FD0)]
STR             R0, [SP,#0x78+var_58]
LDR             R0, [R11,#(dword_6E22F4 - 0x6E1FD0)]
STR             R0, [SP,#0x78+var_54]
LDR             R0, [R11,#(dword_6E22F8 - 0x6E1FD0)]
STR             R0, [SP,#0x78+var_50]
LDR             R0, [R11,#(dword_6E22FC - 0x6E1FD0)]
STR             R0, [SP,#0x78+var_4C]
LDR             R1, [R4,#8]
LDR             R0, [SP,#0x78+var_74]
BL              sub_500FA4
MOV             R1, R0
LDR             R2, [SP,#0x78+var_74]
MOV             R0, R4
BL              sub_154AEC
VLDR            S0, [R11,#(flt_6E2300 - 0x6E1FD0)]
ADD             R11, R11, #0x310
MOV             R0, R4
VLDM            R11, {S1-S3}
BL              sub_155CDC
LDRB            R1, [R4,#0x3C]
LDR             R0, =off_63FDB0
CMP             R1, #0
LDRNE           R1, [R0,#(off_63FE30 - 0x63FDB0)]; sub_157504
LDRNE           R0, [R0,#(off_63FE34 - 0x63FDB0)]
LDREQ           R1, [R0,#0xC8]
LDREQ           R0, [R0,#0xCC]
STR             R1, [R4,#0xC]!
STR             R0, [R4,#4]
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8-D11}
POP             {R4-R11,PC}
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8-D11}
POP             {R4-R11,LR}
B               sub_15542C
MOV             R0, R6
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_1565EC
ADD             R0, R6, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_1565EC
MOV             R1, #0x20 ; ' '
MOV             R0, R4
BL              sub_154934
ADD             SP, SP, #0x34 ; '4'
MOV             R0, R4
VPOP            {D8-D11}
POP             {R4-R11,LR}
B               sub_15542C
MOV             R0, R6
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_1565EC
ADD             R0, R6, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_1565EC
LDR             R0, =unk_6E20D0
LDRH            R1, [R0,#(word_6E212E - 0x6E20D0)]
MOV             R0, R4
BL              sub_154934
MOV             R0, R4
NOP
BL              sub_156908
ADD             SP, SP, #0x34 ; '4'
MOV             R0, R4
VPOP            {D8-D11}
POP             {R4-R11,LR}
B               sub_15542C
