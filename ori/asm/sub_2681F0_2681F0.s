PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
VLDR            S1, =0.0039062
VPUSH           {D8-D9}
SUB             SP, SP, #0x18
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R4, #0x10
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S1
VMOV.F32        S0, S16
BL              sub_5A176C
LDRB            R0, [R4,#0xC]
CMP             R0, #0x16; switch 22 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_268238; jumptable 00268238 default case, cases 3,6,8,14,16,20
DCD loc_268298; jump table for switch statement
LDR             R0, [R4,#8]; jumptable 00268238 case 0
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_268238; jumptable 00268238 default case, cases 3,6,8,14,16,20
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #3
BL              sub_14C548
LDR             R5, [R4]
LDR             R1, [R4,#8]
LDR             R0, [R5,#4]
CMP             R0, #0
BNE             loc_268310
LDR             R12, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R2, =0x30185
MOV             R3, #0
LDR             R12, [R12]
SUB             R0, R12, R0
BL              sub_503720
MOV             R6, R0
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
STRNE           R5, [R6,#0x64]
ADD             R0, R4, #0x10
BL              sub_5A18EC
VLDR            S0, =0.0
VSTR            S0, [R4,#0x1C]
VSTR            S0, [R4,#0x14]
LDR             R0, [R4,#4]
VLDR            S0, =1.0
LDR             R0, [R0,#8]
VLDR            S1, [R0,#0x148]
ADD             R0, R4, #0x10
BL              sub_5A12F8
MOV             R0, #1
NOP
B               loc_268864
LDR             R0, [R4,#4]; jumptable 00268238 case 1
VLDR            S2, =0.0
LDR             R1, [R0,#8]
LDR             R0, [R0,#0xC]
VLDR            S1, [R1,#0x3E0]
VLDR            S0, [R0,#0x28]
LDR             R0, [R4,#8]
VLDR            S3, [R1,#0x3E4]
VADD.F32        S1, S0, S1
VLDR            S0, [R4,#0x14]
VLDR            S4, [R0,#0x24]
VSUB.F32        S1, S1, S4
VMLA.F32        S4, S0, S1
VSTR            S4, [SP,#0x38+var_38]
VLDR            S1, [R0,#0x28]
VSUB.F32        S2, S2, S1
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0x38+var_34]
VLDR            S1, [R0,#0x2C]
VSUB.F32        S2, S3, S1
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0x38+var_30]
LDR             R0, [R4,#8]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, SP
BLX             R2
ADD             R0, R4, #0x10
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             def_268238; jumptable 00268238 default case, cases 3,6,8,14,16,20
MOV             R0, #2
B               loc_268864
LDRB            R0, [R4,#0x7C]; jumptable 00268238 case 2
CMP             R0, #0
BEQ             loc_2683FC
LDR             R0, [R4,#8]
MOV             R1, #0x15
LDR             R0, [R0,#0x24]
STR             R0, [R4,#0x80]
STRB            R1, [R4,#0xC]
ADD             SP, SP, #0x18; jumptable 00268238 default case, cases 3,6,8,14,16,20
VPOP            {D8-D9}
POP             {R4-R6,PC}
LDR             R0, [R4,#4]
LDR             R1, [R0,#8]
LDR             R0, [R0,#0xC]
VLDR            S2, [R1,#0x3E0]
VLDR            S0, [R0,#0x28]
VLDR            S1, [R1,#0x3E4]
VADD.F32        S0, S0, S2
VLDR            S2, =0.0
VSTR            S0, [SP,#0x38+var_38]
VSTR            S2, [SP,#0x38+var_34]
VSTR            S1, [SP,#0x38+var_30]
LDR             R0, [R4,#8]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, SP
BLX             R2
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R6,PC}
LDR             R0, [R4,#4]; jumptable 00268238 case 21
LDR             R1, [R0,#8]
LDR             R0, [R0,#0xC]
VLDR            S1, [R1,#0x3E0]
VLDR            S0, [R0,#0x28]
LDR             R0, [R1,#0x3E4]
VADD.F32        S1, S0, S1
VLDR            S0, =0.0
VSTR            S1, [SP,#0x38+var_2C]
VSTR            S0, [SP,#0x38+var_28]
STR             R0, [SP,#0x38+var_24]
LDR             R0, [R4,#8]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, SP, #0x38+var_2C
BLX             R2
LDR             R0, [R4,#8]
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0x2C]
MOV             R1, SP
BLX             R3
LDR             R0, [R4,#4]
VLDR            S1, [SP,#0x38+var_38]
LDR             R0, [R0,#8]
VLDR            S0, [R0,#0xD8]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             def_268238; jumptable 00268238 default case, cases 3,6,8,14,16,20
LDR             R0, [R4]
LDR             R0, [R0,#4]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
LDR             R12, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R1, [R4,#8]
LDR             R2, =0x30191
LDR             R12, [R12]
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
LDR             R0, [R4,#8]
LDR             R1, [R4,#4]
LDR             R2, [R0]
LDR             R1, [R1,#4]
LDR             R3, [R2,#0x58]
MOV             R2, #0
BLX             R3
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #6
BL              sub_14C548
MOV             R0, #0x13
NOP
B               loc_268864
DCFS 0.0039062
DCD off_6CE970
DCD 0x30185
DCD 0xFFE683CC
DCFS 0.0
DCFS 1.0
DCD 0x30191
LDR             R0, [R4,#8]; jumptable 00268238 case 19
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_268238; jumptable 00268238 default case, cases 3,6,8,14,16,20
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #7
BL              sub_14C548
MOV             R0, #0x14
NOP
B               loc_268864
LDR             R0, [R4,#4]; jumptable 00268238 case 4
LDR             R1, [R0,#8]
LDR             R0, [R0,#0xC]
VLDR            S1, [R1,#0x3E0]
VLDR            S0, [R0,#0x28]
LDR             R0, [R1,#0x3E4]
VADD.F32        S1, S0, S1
VLDR            S0, =0.0
VSTR            S1, [SP,#0x38+var_38]
VSTR            S0, [SP,#0x38+var_34]
STR             R0, [SP,#0x38+var_30]
LDR             R0, [R4,#8]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, SP
BLX             R2
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xC]
BL              sub_5CBE24
LDR             R0, [R4,#4]
LDR             R0, [R0,#8]
VLDR            S1, [R0,#0x3E8]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             def_268238; jumptable 00268238 default case, cases 3,6,8,14,16,20
VLDR            S0, [R0,#0x3EC]
LDR             R0, [R4,#8]
ADD             R1, R4, #0x44 ; 'D'
ADD             R0, R0, #0x1DC
BL              sub_5A1FC8
MOV             R0, #5
NOP
B               loc_268864
LDR             R0, [R4,#8]; jumptable 00268238 case 5
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_268238; jumptable 00268238 default case, cases 3,6,8,14,16,20
LDR             R0, [R4]
LDR             R0, [R0,#4]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #9
BL              sub_14C548
MOV             R0, #6
NOP
B               loc_268864
LDR             R0, [R4,#8]; jumptable 00268238 case 7
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_268238; jumptable 00268238 default case, cases 3,6,8,14,16,20
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #9
BL              sub_14C548
MOV             R0, #8
NOP
B               loc_268864
LDR             R0, [R4,#8]; jumptable 00268238 case 10
ADD             R0, R0, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_268238; jumptable 00268238 default case, cases 3,6,8,14,16,20
LDRB            R0, [R4,#0x7C]
CMP             R0, #0
BNE             loc_2688B4
ADD             SP, SP, #0x18
MOV             R0, R4
VPOP            {D8-D9}
MOV             R1, #0
POP             {R4-R6,LR}
B               sub_268110
LDR             R0, [R4,#4]; jumptable 00268238 case 9
VLDR            S3, [R4,#0x14]
LDR             R1, [R0,#8]
LDR             R0, [R0,#0xC]
VLDR            S2, [R1,#0x3E0]
VLDR            S0, [R0,#0x28]
LDR             R0, [R4,#8]
VLDR            S1, [R1,#0x3E4]
VADD.F32        S0, S0, S2
VLDR            S2, =0.0
VLDR            S4, [R0,#0x24]
VSUB.F32        S0, S0, S4
VMLA.F32        S4, S3, S0
VSTR            S4, [SP,#0x38+var_38]
VLDR            S0, [R0,#0x28]
VSUB.F32        S2, S2, S0
VMLA.F32        S0, S3, S2
VSTR            S0, [SP,#0x38+var_34]
VLDR            S0, [R0,#0x2C]
VSUB.F32        S1, S1, S0
VMLA.F32        S0, S3, S1
VSTR            S0, [SP,#0x38+var_30]
LDR             R0, [R4,#8]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, SP
BLX             R2
ADD             R0, R4, #0x10
BL              sub_5F1964
CMP             R0, #0
NOP
BEQ             loc_2683C8
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R6,PC}
LDR             R0, [R4,#8]; jumptable 00268238 case 11
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_268238; jumptable 00268238 default case, cases 3,6,8,14,16,20
LDRB            R0, [R4,#0x84]
CMP             R0, #0
BEQ             loc_268774
LDRB            R0, [R4,#0x7C]
CMP             R0, #0
BEQ             loc_26878C
ADD             SP, SP, #0x18
MOV             R0, R4
VPOP            {D8-D9}
MOV             R1, #1
POP             {R4-R6,LR}
B               sub_268110
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #9
BL              sub_14C430
MOV             R0, #0x16
NOP
B               loc_268864
LDR             R0, [R4,#8]; jumptable 00268238 case 12
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_268238; jumptable 00268238 default case, cases 3,6,8,14,16,20
LDR             R0, [R4]
LDR             R0, [R0,#4]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #4
BL              sub_14C548
LDR             R12, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R1, [R4,#8]
LDR             R2, =0x30168
LDR             R12, [R12]
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
MOV             R0, #0xD
NOP
B               loc_268864
LDR             R0, [R4,#8]; jumptable 00268238 case 13
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_268238; jumptable 00268238 default case, cases 3,6,8,14,16,20
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #5
BL              sub_14C548
LDR             R12, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R1, [R4,#8]
LDR             R2, =0x30169
LDR             R12, [R12]
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
MOV             R0, #0xE
STRB            R0, [R4,#0xC]
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R6,PC}
LDR             R0, [R4,#8]; jumptable 00268238 case 15
ADD             R0, R0, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #0x10
BGE             loc_268864
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R6,PC}
LDR             R0, [R4,#8]; jumptable 00268238 case 17
ADD             R0, R0, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_268238; jumptable 00268238 default case, cases 3,6,8,14,16,20
ADD             SP, SP, #0x18
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4-R6,LR}
B               sub_267F64
LDR             R0, [R4,#8]; jumptable 00268238 case 18
ADD             R0, R0, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_268A70
LDR             R0, =dword_6D1F40
ADD             R5, R4, #0x54 ; 'T'
BL              sub_546DB0
VMOV            S0, R0
VLDR            S17, =0.000015259
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VMUL.F32        S18, S0, S17
BL              sub_546DB0
VMOV            S1, R0
VLDR            S2, [R5,#0x18]
VLDR            S0, [R5,#0xC]
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S1, S1
VMLS.F32        S18, S1, S17
VMLA.F32        S0, S18, S2
VSTR            S0, [R5,#0xC]
BL              sub_546DB0
VMOV            S0, R0
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VMUL.F32        S18, S0, S17
BL              sub_546DB0
VMOV            S1, R0
VLDR            S2, [R5,#0x18]
VLDR            S0, [R5,#0x14]
VLDR            S3, =1.0
ADD             R6, R4, #0x60 ; '`'
VCVT.F32.U32    S1, S1
VMLS.F32        S18, S1, S17
VMLA.F32        S0, S18, S2
VSTR            S0, [R5,#0x14]
VLDR            S4, [R5,#0xC]
VLDR            S1, [R5,#0x10]
VMUL.F32        S2, S4, S4
VMLA.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VSQRT.F32       S5, S2
VDIV.F32        S2, S3, S5
VMUL.F32        S4, S4, S2
VMUL.F32        S1, S1, S2
VMUL.F32        S0, S0, S2
VSTR            S4, [R4,#0x60]
VSTR            S1, [R4,#0x64]
VSTR            S0, [R4,#0x68]
VLDR            S0, [R5,#0x1C]
VLDR            S1, [R5,#0xC]
VMUL.F32        S1, S1, S0
VSTR            S1, [R6]
VLDR            S1, [R5,#0x10]
VMUL.F32        S1, S1, S0
VSTR            S1, [R6,#4]
VLDR            S1, [R5,#0x14]
VMUL.F32        S0, S1, S0
VSTR            S0, [R6,#8]
VLDR            S0, [R5,#0x20]
VLDR            S2, [R5]
VLDR            S1, [R5,#4]
VLDR            S7, [R5,#8]
VMUL.F32        S2, S2, S0
VLDR            S6, [R5,#0xC]
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S7, S0
VLDR            S4, [R5,#0x14]
VLDR            S5, [R5,#0x10]
VADD.F32        S2, S6, S2
VADD.F32        S1, S5, S1
VADD.F32        S0, S4, S0
VMUL.F32        S4, S2, S2
VMLA.F32        S4, S1, S1
VMLA.F32        S4, S0, S0
VSQRT.F32       S5, S4
VDIV.F32        S4, S3, S5
VMUL.F32        S2, S2, S4
VMUL.F32        S1, S1, S4
VMUL.F32        S3, S0, S4
VLDR            S0, [R4,#0x78]
VMUL.F32        S2, S2, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S3, S3, S0
VSTR            S2, [SP,#0x38+var_38]
VSTR            S1, [SP,#0x38+var_34]
VSTR            S3, [SP,#0x38+var_30]
VMUL.F32        S0, S2, S16
LDR             R0, [R4,#8]
VMUL.F32        S2, S3, S16
VMUL.F32        S1, S1, S16
ADD             R1, R0, #0x24 ; '$'
VLDM            R1, {S3-S5}
VADD.F32        S0, S3, S0
VADD.F32        S2, S5, S2
VADD.F32        S1, S4, S1
VSTMEA          SP, {S0-S2}
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, SP
BLX             R2
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R6,PC}
LDR             R0, [R4,#0x50]
CMP             R0, #0
BEQ             loc_268A88
BL              sub_533330
MOV             R0, #0
STR             R0, [R4,#0x50]
MOV             R0, #0x14
STRB            R0, [R4,#0xC]
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R6,PC}
