PUSH            {R4-R11,LR}
MOV             R4, R0
ADD             R7, R0, #0x400
ADD             R9, R4, #0x400
ADD             R7, R7, #0x288
LDR             R5, =off_6CE970
LDR             R6, =0xFFE683CC
MOV             R11, #2
VPUSH           {D8-D10}
VMOV.F32        S17, S0
SUB             SP, SP, #0x64
MOV             R10, #0
LDRB            R1, [R0]
LDR             R0, [R0,#0x688]
VLDR            S18, =0.0
CMP             R1, #9; switch 9 cases
ADD             R8, R4, #0x400
VLDR            S16, [R0,#0xC]
ADD             R9, R9, #4
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_2891E4; jumptable 002891E4 default case, cases 0,2,4
DCD def_2891E4; jump table for switch statement
ADD             R0, R4, #0x3AC; jumptable 002891E4 case 6
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_2891E4; jumptable 002891E4 default case, cases 0,2,4
LDR             R0, [R4,#0x680]
CMP             R0, #0
BEQ             loc_289238
BL              sub_533330
STR             R10, [R4,#0x680]
LDR             R0, [R4,#0x688]
MOV             R3, #1
ADD             R1, R0, #4
LDR             R0, [R0,#0xC]
LDM             R1, {R1,R2}
STR             R0, [SP,#0xA0+var_94]
ADD             R0, SP, #0xA0+var_9C
VMOV            S0, R1
STM             R0, {R1,R2}
MOV             R1, #0x1AC
LDR             R0, [R7]
ADD             R0, R0, #0x80
VLDR            S1, [R0]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xA0+var_9C]
VMOV            S0, R2
VLDR            S1, [R0,#4]
ADD             R2, SP, #0xA0+var_9C
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xA0+var_98]
VLDR            S1, [R0,#8]
VLDR            S0, [SP,#0xA0+var_94]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xA0+var_94]
LDR             R0, [R5]
STR             R10, [SP,#0xA0+var_A0]
BL              sub_52AEA8
LDR             R0, [R5]
VMOV.F32        S0, S18
LDR             R1, =0x30211
MOV             R2, #0
SUB             R0, R0, R6
BL              sub_503414
MOV             R0, R4
NOP
BL              sub_2880C4
STRB            R11, [R4]
NOP
B               def_2891E4; jumptable 002891E4 default case, cases 0,2,4
VLDR            S1, [R4,#8]; jumptable 002891E4 case 3
VLDR            S0, [R0,#0x3C]
LDR             R2, =0x3FC90FDB
VMLA.F32        S1, S0, S17
VSTR            S1, [R4,#8]
VLDR            S0, [R0,#0x40]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VLDR            S2, =0.017453
VMOVLE.F32      S0, S1
VMUL.F32        S3, S17, S2
VSTR            S0, [R4,#8]
VLDR            S1, [R4,#4]
VMLA.F32        S1, S0, S3
VSTR            S1, [R4,#4]
VLDR            S0, [R0,#0x120]
VMUL.F32        S0, S0, S2
VMOV            R1, S0
VMOV            S0, R1
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVLE          R1, S1
CMP             R1, R2
STR             R1, [R4,#4]
BLE             loc_289370
ADD             R1, R4, #0x364
VLDM            R1, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
LDRBLS          R1, [R4,#0x33F]
CMPLS           R1, #0xFF
BNE             loc_289370
MOV             R2, #0xFFFFFF00
ADD             R1, SP, #0xA0+var_98
REV             R2, R2
STR             R2, [SP,#0xA0+var_98]
VLDR            S0, [R0,#0x124]
ADD             R0, R4, #0x33C
BL              sub_4E665C
VLDR            S0, [R4,#4]
VLDR            S1, =40.744
LDR             R0, =0x47800000
MOV             R6, #0
VMUL.F32        S0, S0, S1
MOV             R7, R6
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
VABS.F32        S0, S0
VMOV.F32        S19, S18
VMOV.F32        S20, S18
MOVCC           R12, #1
MOVCS           R12, #0
VMOV            R1, S0
VLDR            S1, =65536.0
CMP             R1, R0
BLT             loc_2893C4
VSUB.F32        S0, S0, S1
VMOV            R3, S0
CMP             R3, R0
BGE             loc_2893B4
VMOV            R1, S19
CMP             R1, R0
BLT             loc_2893E0
VSUB.F32        S19, S19, S1
VMOV            R1, S19
CMP             R1, R0
BGE             loc_2893D0
VMOV            R1, S18
CMP             R1, R0
BLT             loc_2893FC
VSUB.F32        S18, S18, S1
VMOV            R1, S18
CMP             R1, R0
BGE             loc_2893EC
VCVT.U32.F32    S1, S0
CMP             R12, #0
VMOV            R0, S1
VCVT.U32.F32    S1, S19
UXTH            R1, R0
VMOV            R0, S1
VCVT.U32.F32    S1, S18
UXTH            R0, R0
VMOV            R2, S1
VMOV            S1, R1
AND             R1, R1, #0xFF
UXTH            R2, R2
AND             R3, R2, #0xFF
VCVT.F32.U32    S2, S1
VMOV            S1, R0
AND             R0, R0, #0xFF
VCVT.F32.U32    S3, S1
VMOV            S1, R2
LDR             R2, =flt_697140
VSUB.F32        S0, S0, S2
ADD             R0, R2, R0,LSL#4
ADD             R1, R2, R1,LSL#4
VCVT.F32.U32    S4, S1
ADD             R2, R2, R3,LSL#4
VLDR            S7, [R0,#4]
VSUB.F32        S1, S19, S3
VLDR            S3, [R0]
ADD             R0, R0, #8
VLDR            S5, [R2]
VLDR            S8, [R1,#8]
VLDR            S9, [R2,#4]
ADD             R2, R2, #8
VSUB.F32        S2, S18, S4
VLDR            S4, [R1]
VLDR            S6, [R1,#4]
VLDR            S10, [R1,#0xC]
VMLA.F32        S4, S0, S8
VLDM            R0, {S11-S12}
VMLA.F32        S6, S0, S10
VLDM            R2, {S13-S14}
VMLA.F32        S3, S1, S11
VMLA.F32        S7, S1, S12
VMLA.F32        S5, S2, S13
VMLA.F32        S9, S2, S14
VNEGNE.F32      S4, S4
CMP             R6, #0
VNEGNE.F32      S3, S3
CMP             R7, #0
VMUL.F32        S10, S4, S7
VNEGNE.F32      S5, S5
VMUL.F32        S0, S6, S9
VMUL.F32        S2, S4, S9
VMUL.F32        S9, S9, S7
VNEG.F32        S11, S3
VMUL.F32        S1, S4, S5
VMUL.F32        S8, S6, S5
VMUL.F32        S5, S5, S7
VMUL.F32        S6, S6, S7
VSTR            S11, [R9,#0x20]
VSTR            S9, [R9]
VMOV.F32        S4, S1
VSTR            S5, [R9,#0x10]
VSTR            S10, [R9,#0x24]
VSTR            S6, [R9,#0x28]
VMLA.F32        S4, S0, S3
VMLA.F32        S0, S1, S3
VMOV.F32        S1, S8
VNMLS.F32       S1, S2, S3
VNMLS.F32       S2, S8, S3
VSTR            S1, [R9,#4]
VSTR            S2, [R9,#0x18]
VSTR            S4, [R9,#8]
VSTR            S0, [R9,#0x14]
STR             R10, [R9,#0xC]
STR             R10, [R9,#0x1C]
STR             R10, [R9,#0x2C]
LDR             R1, [R9]
LDR             R2, [R9,#0x10]
LDR             R3, [R9,#0x20]
ADD             R6, R4, #0x400
ADD             R6, R6, #0x64 ; 'd'
ADD             R0, R4, #0x400
STM             R6, {R1-R3}
ADD             R1, R4, #0x470
VLDR            S0, [R9,#4]
VLDR            S1, [R9,#0x14]
VLDR            S2, [R9,#0x24]
ADD             R0, R0, #0x7C ; '|'
VSTM            R1, {S0-S2}
ADD             R2, SP, #0xA0+var_9C
VLDR            S0, [R9,#8]
VLDR            S1, [R9,#0x18]
VLDR            S2, [R9,#0x28]
MOV             R1, R9
VSTM            R0, {S0-S2}
MOV             R0, R2
VLDR            S0, [R8,#0x1D0]
VSTR            S20, [SP,#0xA0+var_9C]
VSTR            S0, [SP,#0xA0+var_98]
VSTR            S20, [SP,#0xA0+var_94]
BL              sub_1169FC
NOP
NOP
B               loc_2895C4
DCD off_6CE970
DCD 0xFFE683CC
DCFS 0.0
DCD 0x30211
DCFS 0.017453
DCD 0x3FC90FDB
DCFS 40.744
DCD 0x47800000
DCFS 65536.0
DCD flt_697140
LDR             R0, [R4,#0x688]
ADD             R1, R0, #0x108
LDR             R0, [R0,#0x110]
LDM             R1, {R1,R2}
STR             R0, [R8,#0x194]
ADD             R0, R8, #0x18C
STM             R0, {R1,R2}
MOV             R1, #0
LDR             R0, [R4,#0x560]
CMP             R0, #0
BLS             loc_289630
ADD             R3, SP, #0xA0+var_98
LDR             R2, [R4,#0x564]
LDR             R12, [R4,#0x530]
VLDM            R3, {S0-S1}
SUB             R0, R2, #1
LDR             R3, [R4,#0x560]
MLA             R0, R0, R3, R1
ADD             R1, R1, #1
ADD             R2, R0, R0,LSL#1
ADD             R0, R2, R0,LSL#3
ADD             R0, R12, R0,LSL#2
ADD             R0, R0, #4
VSTM            R0, {S0-S1}
LDR             R0, [R4,#0x560]
CMP             R0, R1
BHI             loc_2895F0
ADD             R0, R4, #0x530
BL              sub_28E174
LDRB            R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_289650
CMP             R0, #1
BNE             def_2891E4; jumptable 002891E4 default case, cases 0,2,4
B               loc_2896B0
ADD             R0, R4, #0x400
ADD             R0, R0, #0x29C
LDM             R0, {R0,R2}
CMP             R2, R0
BEQ             loc_289684
LDR             R1, [R0]
LDRB            R1, [R1,#0x410]
CMP             R1, #3
CMPNE           R1, #4
BNE             def_2891E4; jumptable 002891E4 default case, cases 0,2,4
ADD             R0, R0, #0xC
CMP             R2, R0
BNE             loc_289664
LDR             R0, =sub_10D4F0
LDR             R2, [R5]
LDR             R1, [R4,#0x688]
LDR             R0, [R2,R0]
VLDR            S0, [R1,#0x48]
ADD             R0, R0, #0x39C
VSTR            S20, [R0]
VSTR            S0, [R0,#4]
MOV             R0, #1
STRB            R0, [R4,#0xC]
B               def_2891E4; jumptable 002891E4 default case, cases 0,2,4
ADD             R0, R4, #0x400
ADD             R0, R0, #0x29C
LDM             R0, {R0,R1}
CMP             R0, R1
MOVEQ           R0, #4
STRBEQ          R0, [R4]
B               def_2891E4; jumptable 002891E4 default case, cases 0,2,4
ADD             R0, R4, #0x3AC; jumptable 002891E4 case 8
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_2891E4; jumptable 002891E4 default case, cases 0,2,4
MOV             R11, #5
STRB            R11, [R4]
LDR             R0, [R5]
VMOV.F32        S0, S18
LDR             R1, =0x3020A
MOV             R2, #0
SUB             R0, R0, R6
BL              sub_503414
LDR             R0, [R5]
VMOV.F32        S0, S18
LDR             R1, =0x3020B
MOV             R2, #0
SUB             R0, R0, R6
BL              sub_503414
STRB            R10, [R4,#0x5D4]
LDR             R0, [R4,#0x6A0]
LDR             R5, [R4,#0x69C]
CMP             R0, R5
BEQ             loc_2897CC
LDR             R6, [R5]
STRB            R11, [R6,#0x410]
STRB            R10, [R6,#0x411]
LDR             R0, [R6,#0x448]
LDR             R1, [R6,#0x10]
LDR             R2, [R6,#0x444]
LDR             R0, [R0,#0x5CC]
VLDR            S0, [R2,#0xB8]
SUB             R0, R0, R1
SUB             R0, R0, #1
VMOV            S1, R0
VLDR            S2, [R2,#0xBC]
VSTR            S18, [R6,#0x3B8]
ADD             R0, R6, #0x1C
VCVT.F32.U32    S1, S1
VMUL.F32        S0, S1, S0
VADD.F32        S0, S2, S0
VSTR            S0, [R6,#0x3BC]
BL              sub_5C55B8
CMP             R0, #0x17
NOP
BCC             loc_289798
ADD             R0, R6, #0x1C
BL              sub_5C55B8
CMP             R0, #0x1A
NOP
BLS             loc_2897BC
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MOV             R0, R0,LSL#2
MOV             R3, #0x100
MOV             R0, R0,LSR#16
ADD             R1, R0, #0x17
MOV             R2, #0
ADD             R0, R6, #0x1C
BL              sub_14C430
LDR             R0, [R4,#0x6A0]
ADD             R5, R5, #0xC
CMP             R0, R5
BNE             loc_28972C
LDR             R0, [R4,#0x688]
ADD             R5, R4, #0x400
ADD             R5, R5, #0x17C
LDR             R0, [R0,#0xA8]
STR             R0, [R4,#0x580]
LDR             R0, [R7]
LDR             R0, [R0,#0xA4]
STR             R0, [R4,#0x57C]
LDR             R0, [R7]
LDR             R0, [R0,#0xA8]
STR             R0, [R4,#0x580]
LDR             R0, [R7]
ADD             R1, R0, #0x98
LDR             R0, [R0,#0xA0]
LDM             R1, {R1,R2}
STR             R0, [R4,#0x5A0]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x198
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R5,#0x18]
ADD             R5, R5, #0x10
STM             R5, {R1,R2}
ADD             R5, R4, #0x400
VSTR            S18, [R4,#4]
LDR             R0, [R7]
ADD             R5, R5, #0x1D8
LDR             R0, [R0,#0x1C]
STR             R0, [R4,#8]
LDR             R1, [R4,#0x564]
LDR             R3, [R4,#0x560]
MOV             R0, #0
SUB             R1, R1, #1
LDR             R2, [R4,#0x530]
MLA             R0, R1, R3, R0
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
ADD             R0, R2, R0,LSL#2
VLDR            S19, [R0,#4]
VSTR            S19, [R8,#0x1D0]
VLDR            S20, [R0,#8]
MOV             R0, R5
BL              sub_5A26D0
ADD             R0, R5, #0x1C
VLDR            S0, =1.0
VMOV.F32        S2, S18
VSTM            R0, {S18-S20}
ADD             R0, R5, #4
ADD             R2, SP, #0xA0+var_88
VSTM            R0, {S18-S20}
MOV             R1, #1
VSTR            S18, [SP,#0xA0+var_88]
VSTR            S0, [SP,#0xA0+var_84]
VSTR            S18, [SP,#0xA0+var_80]
LDR             R0, [R7]
VLDR            S0, [R0,#0xB4]
VLDR            S1, [R0,#0xAC]
MOV             R0, R5
VSUB.F32        S0, S0, S19
BL              sub_5A28C4
LDR             R0, [R7]
ADD             R2, SP, #0xA0+var_60
MOV             R1, #0
LDR             R0, [R0,#0xB0]
VSTR            S18, [SP,#0xA0+var_60]
VSTR            S18, [SP,#0xA0+var_5C]
STR             R0, [SP,#0xA0+var_58]
LDR             R0, [R7]
VLDR            S0, [R0,#0xAC]
MOV             R0, R5
BL              sub_5A2B20
STRB            R10, [R4,#0xC]
STRB            R11, [R4]
LDR             R0, [R7]
VLDR            S0, [R0,#0xDC]
VSTR            S18, [R4,#0x3AC]
VSTR            S0, [R4,#0x3B0]
B               def_2891E4; jumptable 002891E4 default case, cases 0,2,4
VMOV.F32        S0, S17; jumptable 002891E4 case 5
MOV             R0, R4
BL              sub_2890A0
NOP
NOP
B               def_2891E4; jumptable 002891E4 default case, cases 0,2,4
ADD             R0, R4, #0x1EC; jumptable 002891E4 case 1
BL              sub_5F19B8
CMP             R0, #0
STRBEQ          R11, [R4]
B               def_2891E4; jumptable 002891E4 default case, cases 0,2,4
ADD             R0, R4, #0x3AC; jumptable 002891E4 case 7
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_2891E4; jumptable 002891E4 default case, cases 0,2,4
LDR             R0, [R5]
VMOV.F32        S0, S18
LDR             R1, =0x3020C
MOV             R2, #0
SUB             R0, R0, R6
BL              sub_503414
LDR             R0, [R5]
VMOV.F32        S0, S18
LDR             R1, =0x3020D
MOV             R2, #0
SUB             R0, R0, R6
BL              sub_503414
MOV             R0, #1
MOV             R1, #3
STRB            R0, [R4,#0x5D4]
STRB            R1, [R4]
STRB            R10, [R4,#0xC]
VSTR            S18, [R4,#4]
LDR             R0, [R4,#0x688]
LDR             R0, [R0,#0x1C]
STR             R0, [R4,#8]
LDR             R0, [R4,#0x564]
LDR             R2, [R4,#0x560]
LDR             R1, [R4,#0x530]
SUB             R0, R0, #1
MLA             R0, R0, R2, R10
ADD             R2, R0, R0,LSL#1
ADD             R0, R2, R0,LSL#3
ADD             R0, R1, R0,LSL#2
MOV             R1, #1
LDR             R0, [R0,#4]
STR             R0, [R8,#0x1D0]
LDR             R0, =off_6CDCE8
LDR             R0, [R0]
BL              sub_292ED4
ADD             R0, R4, #0x400; jumptable 002891E4 default case, cases 0,2,4
ADD             R0, R0, #0x1BC
ADD             R3, SP, #0xA0+var_70
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
VSTR            S16, [SP,#0xA0+var_68]
LDR             R0, [R4,#0x6A0]
LDR             R5, [R4,#0x69C]
CMP             R0, R5
BEQ             loc_289A20
VMOV.F32        S0, S17
LDR             R0, [R5]
ADD             R1, SP, #0xA0+var_70
BL              sub_28A1DC
LDR             R0, [R4,#0x6A0]
ADD             R5, R5, #0xC
CMP             R0, R5
BNE             loc_289A00
ADD             R0, R4, #0x400
ADD             R0, R0, #0x29C
LDM             R0, {R0,R6}
CMP             R0, R6
BEQ             loc_289A48
LDR             R1, [R0]
LDRB            R1, [R1,#0x410]
CMP             R1, #4
ADDNE           R0, R0, #0xC
BNE             loc_289A2C
CMP             R0, R6
BEQ             loc_289AF8
ADD             R5, R0, #0xC
CMP             R5, R6
MOV             R7, R0
BEQ             loc_289AF4
LDR             R1, [R5]
LDRB            R0, [R1,#0x410]
CMP             R0, #4
BEQ             loc_289AE8
LDR             R0, [R7]
CMP             R0, R1
BEQ             loc_289AE4
LDR             R2, [R7,#8]
ADD             R3, R7, #4
CMP             R2, R3
BNE             loc_289BE0
CMP             R0, #0
BEQ             loc_289AA8
ADD             R0, R0, #0x1C
BL              sub_14F3EC
SUB             R0, R0, #0x1C
NOP
BL              sub_300FD4
LDR             R3, [R5]
ADD             R1, R5, #4
ADD             R0, R7, #4
CMP             R1, R0
STR             R3, [R7]
LDRNE           R2, [R1,#4]
CMPNE           R2, R0
BEQ             loc_289AE4
LDM             R0, {R3,R12}
STR             R12, [R3,#4]
STR             R3, [R12]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [R1,#4]
STR             R1, [R0]
ADD             R7, R7, #0xC
ADD             R5, R5, #0xC
CMP             R5, R6
BNE             loc_289A60
MOV             R0, R7
LDR             R6, [R4,#0x6A0]
CMP             R0, R6
BEQ             loc_289B78
LDR             R1, =0x2AAAAAAB
SUB             R0, R6, R0
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R7, R6, R0,LSL#2
CMP             R7, R6
BEQ             loc_289B74
SUB             R6, R6, #0xC
ADD             R0, R6, #4
LDR             R1, [R6,#8]
MOV             R5, R6
CMP             R1, R0
BNE             loc_289B60
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_289B60
ADD             R0, R0, #0x1C
BL              sub_14F3EC
SUB             R0, R0, #0x1C
NOP
BL              sub_300FD4
LDRD            R0, R1, [R5,#4]
CMP             R7, R6
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_289B28
STR             R7, [R4,#0x6A0]
ADD             R2, R4, #0x400
ADD             R0, R4, #0x400
ADD             R2, R2, #0x94
MOV             R1, R9
ADD             R0, R0, #0x58 ; 'X'
BL              sub_1169FC
VLDR            S1, [R8,#0x58]
VLDR            S2, [R8,#0x1BC]
VLDR            S0, [R8,#0x60]
MOV             R0, #1
VADD.F32        S1, S1, S2
VADD.F32        S0, S0, S16
VSTR            S1, [R8,#0x58]
VSTR            S0, [R8,#0x60]
ADD             SP, SP, #0x64 ; 'd'
VPOP            {D8-D10}
POP             {R4-R11,PC}
DCD sub_10D4F0
DCD 0x3020A
DCD 0x3020B
DCD dword_6D1F40
DCFS 1.0
DCD 0x3020C
DCD 0x3020D
DCD off_6CDCE8
DCD 0x2AAAAAAB
LDR             R1, [R3]
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R3, [R3]
STR             R3, [R3,#4]
B               loc_289AA8
