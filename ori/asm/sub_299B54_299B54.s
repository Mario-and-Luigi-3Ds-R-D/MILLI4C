PUSH            {R4-R8,LR}
MOV             R4, R0
VPUSH           {D8-D10}
SUB             SP, SP, #0x18
LDRB            R0, [R0,#6]
CMP             R0, #4
MOVEQ           R0, #0
BEQ             loc_29A314
LDRB            R0, [R4,#0x440]
ADD             R5, R4, #0x400
MOV             R6, #0
CMP             R0, #0
BEQ             loc_299BD0
VLDR            S1, [R5,#0x3C]
VLDR            S2, =30.0
VMLA.F32        S1, S0, S2
VLDR            S0, =0.71111
VSTR            S1, [R5,#0x3C]
VMUL.F32        S0, S1, S0
BL              sub_464380
VLDR            S1, =111.0
STRB            R6, [SP,#0x48+var_48]
MOV             R1, SP
VMUL.F32        S0, S0, S1
VCVT.U32.F32    S0, S0
VMOV            R0, S0
STRB            R0, [SP,#0x48+var_48+1]
STRB            R6, [SP,#0x48+var_48+2]
ADD             R0, R4, #0x48 ; 'H'
STRB            R6, [SP,#0x48+var_48+3]
BL              sub_14D748
LDRB            R0, [R4,#6]
VLDR            S17, =1.0
VLDR            S16, =0.0
VLDR            S0, =-16.0
VLDR            S1, =16.0
VLDR            S2, =2.0
SUB             R0, R0, #2
CMP             R0, #8; switch 8 cases
MOV             R8, #4
MOV             R7, #2
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_299BF8; jumptable 00299BF8 default case, case 2
DCD loc_299E50; jump table for switch statement
LDRB            R0, [R4,#1]; jumptable 00299BF8 case 1
CMP             R0, #0
BEQ             loc_299C38
CMP             R0, #1
BNE             def_299BF8; jumptable 00299BF8 default case, case 2
B               loc_299C8C
ADD             R0, R4, #0x3E4
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_299BF8; jumptable 00299BF8 default case, case 2
LDR             R0, [R4,#0x24C]
MOV             R1, SP
VLDR            S0, [R0,#0x10]
LDR             R0, [R4,#0x2C]
VLDR            S1, [R0,#0x50]
MOV             R0, #0xFFFFFF00
VSUB.F32        S1, S17, S1
REV             R0, R0
STR             R0, [SP,#0x48+var_48]
ADD             R0, R4, #0x374
VMUL.F32        S0, S1, S0
BL              sub_4E665C
LDRB            R0, [R4,#1]
ADD             R0, R0, #1
STRB            R0, [R4,#1]
B               def_299BF8; jumptable 00299BF8 default case, case 2
ADD             R0, R4, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             def_299BF8; jumptable 00299BF8 default case, case 2
LDRB            R0, [R4,#4]
CMP             R0, #0
BNE             loc_29A308
MOV             R0, #8
STRB            R0, [R4,#6]
STRB            R6, [R4,#0x13A]
LDRB            R0, [R5,#0x41]
CMP             R0, #0
BEQ             loc_299CE0
LDR             R0, [R4,#0x2C]
LDR             R2, =dword_6D1F40
LDRD            R0, R1, [R0,#0x34]
BL              sub_47EADC
VMOV            S0, R0
VCVT.F32.S32    S0, S0
B               loc_299D3C
LDR             R5, [R4,#0x2C]
LDR             R6, =off_6CDCE8
ADD             R5, R5, #0x24 ; '$'
LDR             R0, [R6]
VLDR            S17, [R5]
VLDR            S18, [R5,#8]
BL              sub_5CDB44
VSUB.F32        S1, S18, S17
LDR             R0, [R6]
VLDR            S18, [R5,#4]
VLDR            S19, [R5,#0xC]
VMLA.F32        S17, S1, S0
BL              sub_5CDB44
VSUB.F32        S1, S19, S18
LDR             R2, =dword_6D1F40
VMLA.F32        S18, S1, S0
VCVT.S32.F32    S0, S18
VMOV            R1, S0
VCVT.S32.F32    S0, S17
VMOV            R0, S0
BL              sub_47EADC
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VSTR            S0, [R4,#0x3E8]
VSTR            S16, [R4,#0x3E4]
B               def_299BF8; jumptable 00299BF8 default case, case 2
LDRB            R0, [R4,#4]; jumptable 00299BF8 case 6
CMP             R0, #0
BNE             loc_29A308
ADD             R0, R4, #0x3E4
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, R4
BLGE            sub_299900
NOP
NOP
B               def_299BF8; jumptable 00299BF8 default case, case 2
VLDR            S3, [R4,#0x6C]; jumptable 00299BF8 case 7
VLDR            S4, [R4,#0x74]
VADD.F32        S5, S3, S0
VADD.F32        S0, S4, S0
VSTR            S5, [R4,#0x30]
VSTR            S16, [R4,#0x34]
VSTR            S0, [R4,#0x38]
LDR             R0, [R4,#0x2C]
VADD.F32        S0, S3, S1
VADD.F32        S1, S4, S1
VLDR            S5, [R0,#0xDC]
ADD             R0, R4, #0x224
VMUL.F32        S2, S5, S2
VSTR            S0, [R4,#0x3C]
VSTR            S2, [R4,#0x40]
VSTR            S1, [R4,#0x44]
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_299BF8; jumptable 00299BF8 default case, case 2
LDR             R0, [R4,#0x444]
CMP             R0, #0
LDRNE           R0, [R0,#4]
CMPNE           R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
LDR             R0, [R4,#0x2C]
MOV             R2, #0
LDR             R1, [R0,#8]
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14E6E0
LDRB            R0, [R4]
LDRB            R1, [R4,#0x29]
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R0, R1
AND             R1, R0, #0xFF
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14C548
LDRB            R0, [R4,#2]
LDR             R6, =dword_6D1F40
STRB            R0, [R4,#0x13B]
ADD             R0, R4, #0x48 ; 'H'
BL              sub_5C5724
MOV             R5, R0
MOV             R0, R6
BL              sub_546DB0
MUL             R0, R0, R5
MOV             R1, R0,LSR#16
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14F01C
STRB            R7, [R4,#6]
NOP
B               def_299BF8; jumptable 00299BF8 default case, case 2
VLDR            S3, [R4,#0x6C]; jumptable 00299BF8 case 0
VLDR            S4, [R4,#0x74]
VADD.F32        S5, S3, S0
VADD.F32        S0, S4, S0
VADD.F32        S3, S3, S1
VSTR            S5, [R4,#0x30]
VSTR            S16, [R4,#0x34]
VSTR            S0, [R4,#0x38]
LDR             R0, [R4,#0x2C]
VADD.F32        S0, S4, S1
VLDR            S5, [R0,#0xDC]
VSTR            S3, [R4,#0x3C]
VMUL.F32        S1, S5, S2
VSTR            S1, [R4,#0x40]
VSTR            S0, [R4,#0x44]
B               def_299BF8; jumptable 00299BF8 default case, case 2
DCFS 30.0
DCFS 0.71111
DCFS 111.0
DCFS 1.0
DCFS 0.0
DCFS -16.0
DCFS 16.0
DCFS 2.0
DCD dword_6D1F40
DCD off_6CDCE8
ADD             R0, R4, #0x224; jumptable 00299BF8 case 3
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_299BF8; jumptable 00299BF8 default case, case 2
LDR             R0, [R4,#0x2C]
LDR             R1, =0x19DEE8
VLDR            S2, =0.0039062
LDR             R5, [R0]
LDR             R0, =off_6CE970
VLDR            S1, [R5]
LDR             R0, [R0]
ADD             R1, R1, R0; loc_19DEE8
VLDR            S0, [R1]
VCVT.F32.S32    S0, S0
VMUL.F32        S17, S0, S2
VCMP.F32        S1, S17
VMRS            APSR_nzcv, FPSCR
BEQ             loc_299F20
LDR             R3, =0xFFE683CC
VMOV.F32        S0, S16
LDR             R1, =0x301F9
MOV             R2, #0
SUB             R0, R0, R3
BL              sub_503414
VSTR            S17, [R5]
STRB            R7, [R4,#6]
LDR             R0, [R4,#0x2C]
MOV             R2, #0
LDR             R1, [R0,#8]
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14E6E0
ADD             R0, R4, #0x48 ; 'H'
NOP
BL              sub_14D83C
LDRB            R0, [R4]
LDRB            R1, [R4,#0x29]
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R0, R1
AND             R1, R0, #0xFF
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14C548
LDRB            R0, [R4,#2]
LDR             R6, =dword_6D1F40
STRB            R0, [R4,#0x13B]
ADD             R0, R4, #0x48 ; 'H'
BL              sub_5C5724
MOV             R5, R0
MOV             R0, R6
BL              sub_546DB0
MUL             R0, R0, R5
MOV             R1, R0,LSR#16
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14F01C
NOP
NOP
B               def_299BF8; jumptable 00299BF8 default case, case 2
LDRB            R0, [R4,#1]; jumptable 00299BF8 case 4
CMP             R0, #0
BEQ             loc_299FC8
CMP             R0, #1
BEQ             loc_29A160
CMP             R0, #2
BEQ             loc_29A178
CMP             R0, #3
BNE             def_299BF8; jumptable 00299BF8 default case, case 2
B               loc_29A1CC
ADD             R0, R4, #0x3E4
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_299BF8; jumptable 00299BF8 default case, case 2
LDR             R0, [R4,#0x2C]
MOV             R2, #0
ADD             R5, R0, #0x24 ; '$'
LDR             R1, [R0,#4]
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14E6E0
LDRB            R0, [R4,#0x28]
MOV             R8, #1
CMP             R0, #0
BEQ             loc_29A018
CMP             R0, #1
BEQ             loc_29A038
CMP             R0, #2
BNE             loc_29A070
B               loc_29A058
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xF
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14C548
STRB            R6, [R4,#0x13B]
NOP
B               loc_29A070
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x11
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14C548
STRB            R8, [R4,#0x13B]
NOP
B               loc_29A070
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x11
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14C548
STRB            R6, [R4,#0x13B]
ADD             R0, R4, #0x224
BL              sub_5A26D0
LDRB            R0, [R4,#0x28]
CMP             R0, #0
BEQ             loc_29A124
VLDR            S2, [R4,#0x1C]
VLDR            S5, [R4,#0x6C]
VLDR            S0, [R4,#0x24]
VLDR            S3, [R4,#0x74]
VSUB.F32        S2, S2, S5
VLDR            S1, [R4,#0x20]
VLDR            S4, [R4,#0x70]
VSUB.F32        S0, S0, S3
LDR             R0, =dword_6D1F40
VSUB.F32        S1, S1, S4
VSTR            S2, [SP,#0x48+var_48]
VMUL.F32        S3, S2, S2
VSTR            S1, [SP,#0x48+var_44]
VSTR            S0, [SP,#0x48+var_40]
VMLA.F32        S3, S1, S1
VMLA.F32        S3, S0, S0
VSQRT.F32       S4, S3
VDIV.F32        S3, S17, S4
VMUL.F32        S2, S2, S3
VMUL.F32        S1, S1, S3
VMUL.F32        S3, S0, S3
VSTR            S2, [SP,#0x48+var_48]
VSTR            S1, [SP,#0x48+var_44]
VSTR            S3, [SP,#0x48+var_40]
VLDR            S0, [R5,#0x40]
ADD             R5, R5, #0x44 ; 'D'
VMUL.F32        S2, S2, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S3, S0
VSTR            S2, [SP,#0x48+var_48]
VSTR            S1, [SP,#0x48+var_44]
VSTR            S0, [SP,#0x48+var_40]
VLDM            R5, {S0-S1}
BL              sub_47EAA4
MOV             R1, SP
ADD             R0, R4, #0x224
BL              sub_5A3064
STRB            R8, [R4,#1]
NOP
B               def_299BF8; jumptable 00299BF8 default case, case 2
LDR             R1, [R4,#0x1C]
LDR             R0, [R5,#0x4C]
ADD             R5, R5, #0x50 ; 'P'
STR             R1, [SP,#0x48+var_48]
VSTR            S16, [SP,#0x48+var_44]
STR             R0, [SP,#0x48+var_40]
LDR             R0, =dword_6D1F40
VLDM            R5, {S0-S1}
BL              sub_47EAA4
MOV             R1, SP
ADD             R0, R4, #0x224
BL              sub_5A29E4
STRB            R7, [R4,#1]
NOP
B               def_299BF8; jumptable 00299BF8 default case, case 2
ADD             R0, R4, #0x224
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_299BF8; jumptable 00299BF8 default case, case 2
B               loc_29A308
LDR             R2, [R4,#0x2C]
VLDR            S0, [R4,#0x74]
VLDR            S1, [R2,#0x7C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             def_299BF8; jumptable 00299BF8 default case, case 2
MOV             R0, #0xFFFFFF00
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x48+var_48]
VLDR            S0, [R2,#0x80]
ADD             R0, R4, #0x374
BL              sub_4E665C
MOV             R0, #3
NOP
B               loc_29A2EC
DCD off_6CE970
DCD 0x19DEE8
DCFS 0.0039062
DCD 0x301F9
DCD 0xFFE683CC
ADD             R0, R4, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_299BF8; jumptable 00299BF8 default case, case 2
B               loc_29A308
LDRB            R0, [R4,#1]; jumptable 00299BF8 case 5
CMP             R0, #0
BEQ             loc_29A1FC
CMP             R0, #1
BNE             def_299BF8; jumptable 00299BF8 default case, case 2
B               loc_29A2F4
ADD             R0, R4, #0x3E4
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_299BF8; jumptable 00299BF8 default case, case 2
LDR             R0, [R4,#0x2C]
VLDR            S1, =0.5
VLDR            S2, =-0.5
VLDR            S0, [R0,#0xC]
VLDR            S20, [R0,#0x18]
ADD             R0, R0, #0x1C
VMUL.F32        S1, S0, S1
VMUL.F32        S0, S0, S2
VLDM            R0, {S18-S19}
LDR             R0, =dword_6D1F40
BL              sub_47EAA4
VADD.F32        S0, S20, S0
VLDR            S2, [R4,#0x6C]
VLDR            S1, [R4,#0x74]
LDR             R0, [R4,#0x2C]
ADD             R2, SP, #0x48+var_3C
VSUB.F32        S1, S19, S1
ADD             R5, R0, #0x24 ; '$'
MOV             R1, #0
VSUB.F32        S0, S0, S2
VSTR            S0, [SP,#0x48+var_3C]
VSTR            S1, [SP,#0x48+var_34]
VSTR            S16, [SP,#0x48+var_38]
VLDR            S0, [R0,#0xE0]
VLDR            S1, [R4,#0x3E8]
ADD             R0, R4, #0x224
VSUB.F32        S19, S0, S1
VMOV.F32        S0, S19
BL              sub_5A2B20
VSTMEA          SP, {S16-S17}
VMOV.F32        S1, S19
VSTR            S16, [SP,#0x48+var_40]
VLDR            S0, [R5,#0x88]
MOV             R2, SP
MOV             R1, #1
VADD.F32        S2, S18, S0
VMOV.F32        S0, S18
ADD             R0, R4, #0x224
BL              sub_5A28C4
LDR             R0, [R4,#0x2C]
MOV             R2, #0
LDR             R1, [R0,#4]
ADD             R0, R4, #0x48 ; 'H'
BL              sub_14E6E0
VLDR            S0, [SP,#0x48+var_34]
MOV             R3, #0x100
MOV             R2, #0
VCMPE.F32       S0, S16
ADD             R0, R4, #0x48 ; 'H'
VMRS            APSR_nzcv, FPSCR
MOVCC           R1, #0x1C
MOVCS           R1, #0x1E
BL              sub_14C548
LDRB            R0, [R4,#1]
ADD             R0, R0, #1
STRB            R0, [R4,#1]
B               def_299BF8; jumptable 00299BF8 default case, case 2
ADD             R0, R4, #0x224
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_299BF8; jumptable 00299BF8 default case, case 2
STRB            R8, [R4,#6]
STRB            R6, [R4,#3]
MOV             R0, #1; jumptable 00299BF8 default case, case 2
ADD             SP, SP, #0x18
VPOP            {D8-D10}
POP             {R4-R8,PC}
