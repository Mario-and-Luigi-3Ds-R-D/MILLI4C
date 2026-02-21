PUSH            {R4-R11,LR}
MOV             R6, R0
AND             R0, R1, #0xF000
MOV             R10, R1
CMP             R0, #0x1000
MOV             R9, R2
VPUSH           {D8}
SUB             SP, SP, #0x64
STRB            R2, [R6,#0x3F5]
MOV             R4, R3
MOV             R1, #0
STRB            R3, [R6,#0x3F6]
BEQ             loc_216330
CMP             R0, #0x2000
BEQ             loc_21638C
CMP             R9, #2
MOVEQ           R0, #1
MOVNE           R0, #0
STRB            R4, [SP,#0x90+var_7C]
MOV             R2, #0
VLDR            S16, =1.0
STRB            R0, [SP,#0x90+var_7C+1]
CMP             R10, #0
STRB            R2, [SP,#0x90+var_7A]
BEQ             loc_2163B4
CMP             R1, R9
BNE             loc_2163B4
LDR             R0, =off_6CE970
MOV             R1, R10
LDR             R0, [R0]
BL              sub_52F480
LDR             R1, [R0]
LDR             R2, [R1,#0x34]
ADD             R1, SP, #0x90+var_7C
BLX             R2
CMP             R0, #0
BEQ             loc_2163B4
B               loc_216810
LDR             R0, =off_6CE970
MOV             R1, R10
LDR             R0, [R0]
BL              sub_52F508
LDRB            R0, [R0,#0x1D9]
AND             R0, R0, #8
MOVS            R0, R0,LSR#3
MOVNE           R1, #2
MOVEQ           R1, #1
B               loc_216330
CMP             R9, #0
BEQ             loc_2163CC
CMP             R9, #1
CMPNE           R9, #2
BEQ             loc_2163F4
B               loc_216810
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528E64
MOV             R3, #0
ADD             R2, SP, #0x90+var_7C
MOV             R1, #1
BL              sub_5EC5E4
MOV             R10, R0
NOP
B               loc_216810
LDR             R4, =off_6CE970
LDR             R1, =0x19DF06
LDR             R11, =0x10646C
LDR             R0, [R4]
LDRB            R1, [R0,R1]; loc_19DF04
CMP             R1, #0
BEQ             loc_21642C
CMP             R1, #1
BEQ             loc_2164E8
CMP             R1, #2
BEQ             loc_2165A0
CMP             R1, #3
BNE             loc_216810
B               loc_2167FC
LDRH            R2, [SP,#0x90+var_7C]
LDR             R1, =sub_47E110
MOV             R7, #0
STRH            R2, [SP,#0x90+var_8C]
LDRB            R2, [SP,#0x90+var_7A]
ADD             R0, R0, R11; loc_10646C
ADD             R8, SP, #0x90+var_8C
STRB            R2, [SP,#0x90+var_8C+2]
ADD             R2, SP, #0x90+var_88
STM             R2, {R1,R7}
LDR             R0, [R0,#(loc_106470 - 0x10646C)]
CMP             R0, #0
BEQ             loc_21646C
SUBS            R0, R0, #0x1AC
ADDNE           R0, R0, #0x1AC
BNE             loc_216470
MOV             R0, #0
CMP             R0, #0
LDRNE           R5, [R0,#8]
MOVEQ           R5, #0
BEQ             loc_2164E0
CMP             R0, #0
MOVEQ           R4, #0
SUBNE           R4, R0, #0x1AC
MOV             R1, R8
LDR             R0, [R4]
LDR             R2, [R0,#0x34]
MOV             R0, R4
BLX             R2
CMP             R0, #0
BEQ             loc_2164CC
LDR             R1, [SP,#0x90+var_84]
CMP             R1, #0
BEQ             loc_2164C8
LDR             R2, [SP,#0x90+var_88]
MOV             R0, R4
BLX             R2
CMP             R0, #0
BEQ             loc_2164CC
STR             R4, [SP,#0x90+var_84]
MOVS            R0, R5
MOVEQ           R5, #0
LDRNE           R5, [R0,#8]
CMP             R0, R7
BNE             loc_216480
LDR             R0, [SP,#0x90+var_84]
B               loc_216808
LDRH            R2, [SP,#0x90+var_7C]
LDR             R1, =sub_47E128
MOV             R7, #0
STRH            R2, [SP,#0x90+var_8C]
LDRB            R2, [SP,#0x90+var_7A]
ADD             R0, R0, R11; loc_10646C
ADD             R8, SP, #0x90+var_8C
STRB            R2, [SP,#0x90+var_8C+2]
ADD             R2, SP, #0x90+var_88
STM             R2, {R1,R7}
LDR             R0, [R0,#(loc_106470 - 0x10646C)]
CMP             R0, #0
BEQ             loc_216528
SUBS            R0, R0, #0x1AC
ADDNE           R0, R0, #0x1AC
BNE             loc_21652C
MOV             R0, #0
CMP             R0, #0
LDRNE           R5, [R0,#8]
MOVEQ           R5, #0
BEQ             loc_2164E0
CMP             R0, #0
MOVEQ           R4, #0
SUBNE           R4, R0, #0x1AC
MOV             R1, R8
LDR             R0, [R4]
LDR             R2, [R0,#0x34]
MOV             R0, R4
BLX             R2
CMP             R0, #0
BEQ             loc_216588
LDR             R1, [SP,#0x90+var_84]
CMP             R1, #0
BEQ             loc_216584
LDR             R2, [SP,#0x90+var_88]
MOV             R0, R4
BLX             R2
CMP             R0, #0
BEQ             loc_216588
STR             R4, [SP,#0x90+var_84]
MOVS            R0, R5
MOVEQ           R5, #0
LDRNE           R5, [R0,#8]
CMP             R0, R7
BNE             loc_21653C
B               loc_2164E0
LDRH            R0, [SP,#0x90+var_7C]
STRH            R0, [SP,#0x90+var_44]
LDRB            R0, [SP,#0x90+var_7A]
STRB            R0, [SP,#0x90+var_42]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, SP, #0x90+var_38
LDR             R0, [R0,#8]
MOV             R8, #0
ADD             R7, SP, #0x90+var_44
STM             R3, {R0,R8}
ADD             R3, SP, #0x90+var_40
LDR             R0, =off_6CE970
STM             R3, {R1,R2}
LDR             R0, [R0]
ADD             R0, R0, R11; loc_10646C
LDR             R0, [R0,#(loc_106470 - 0x10646C)]
CMP             R0, #0
BEQ             loc_2165F8
SUBS            R0, R0, #0x1AC
ADDNE           R0, R0, #0x1AC
BNE             loc_2165FC
MOV             R0, #0
CMP             R0, #0
LDRNE           R5, [R0,#8]
MOVEQ           R5, #0
BEQ             loc_21669C
CMP             R0, #0
MOVEQ           R4, #0
SUBNE           R4, R0, #0x1AC
MOV             R1, R7
LDR             R0, [R4]
LDR             R2, [R0,#0x34]
MOV             R0, R4
BLX             R2
CMP             R0, #0
BEQ             loc_216688
LDR             R0, [R4]
MOV             R2, #1
ADD             R1, SP, #0x90+var_50
LDR             R3, [R0,#0x38]
MOV             R0, R4
BLX             R3
VLDR            S0, [SP,#0x90+var_40]
VLDR            S1, [SP,#0x90+var_50]
VADD.F32        S0, S0, S1
VSTR            S0, [R7,#4]
VLDR            S0, [SP,#0x90+var_3C]
VLDR            S1, [SP,#0x90+var_4C]
VADD.F32        S0, S0, S1
VSTR            S0, [R7,#8]
VLDR            S0, [SP,#0x90+var_38]
VLDR            S1, [SP,#0x90+var_48]
VADD.F32        S0, S0, S1
VSTR            S0, [R7,#0xC]
LDR             R0, [SP,#0x90+var_34]
ADD             R0, R0, #1
STR             R0, [SP,#0x90+var_34]
MOVS            R0, R5
MOVEQ           R5, #0
LDRNE           R5, [R0,#8]
CMP             R0, R8
BNE             loc_21660C
VLDR            S0, [SP,#0x90+var_34]
ADD             R1, SP, #0x90+var_40
ADD             R2, SP, #0x90+var_74
VCVT.F32.S32    S1, S0
ADD             R0, SP, #0x90+var_74
VDIV.F32        S0, S16, S1
VLDM            R1, {S1-S3}
MOV             R1, R0
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S3, S0
VSTR            S0, [SP,#0x90+var_6C]
VSTM            R2, {S1-S2}
BL              sub_480160
ADD             R3, SP, #0x90+var_74
VLDR            S0, =3.4028e38
LDM             R3, {R0-R2}
ADD             R3, SP, #0x90+var_68
STM             R3, {R0-R2}
VSTR            S0, [SP,#0x90+var_5C]
LDRH            R0, [SP,#0x90+var_7C]
STRH            R0, [SP,#0x90+var_54]
LDRB            R0, [SP,#0x90+var_7A]
STRB            R0, [SP,#0x90+var_52]
LDR             R0, =off_6CE970
B               loc_216720
DCFS 1.0
DCD off_6CE970
DCD 0x19DF06
DCD 0x10646C
DCD sub_47E110
DCD sub_47E128
DCFS 3.4028e38
LDR             R0, [R0]
ADD             R7, SP, #0x90+var_68
ADD             R0, R0, R11; loc_10646C
LDR             R0, [R0,#(loc_106470 - 0x10646C)]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R0, #0
ADDNE           R0, R0, #0x1AC
CMP             R0, #0
LDRNE           R5, [R0,#8]
MOVEQ           R5, #0
BEQ             loc_2167F4
CMP             R0, #0
MOVEQ           R4, #0
SUBNE           R4, R0, #0x1AC
ADD             R1, R7, #0x14
LDR             R0, [R4]
LDR             R2, [R0,#0x34]
MOV             R0, R4
BLX             R2
CMP             R0, #0
BEQ             loc_2167E0
LDR             R0, [R4]
MOV             R2, #1
ADD             R1, SP, #0x90+var_8C
LDR             R3, [R0,#0x38]
MOV             R0, R4
BLX             R3
VLDR            S0, [SP,#0x90+var_8C]
VLDR            S1, [SP,#0x90+var_68]
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x90+var_8C]
VLDR            S1, [SP,#0x90+var_88]
VLDR            S2, [SP,#0x90+var_64]
VMUL.F32        S0, S0, S0
VSUB.F32        S2, S1, S2
VSTR            S2, [SP,#0x90+var_88]
VLDR            S1, [SP,#0x90+var_84]
VLDR            S3, [SP,#0x90+var_60]
VMLA.F32        S0, S2, S2
VSUB.F32        S1, S1, S3
VSTR            S1, [SP,#0x90+var_84]
VMLA.F32        S0, S1, S1
VLDR            S1, [SP,#0x90+var_5C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VSTRGT          S0, [SP,#0x90+var_5C]
STRGT           R4, [SP,#0x90+var_58]
MOVS            R0, R5
MOVEQ           R5, #0
LDRNE           R5, [R0,#8]
CMP             R0, R8
BNE             loc_216750
LDR             R0, [SP,#0x90+var_58]
B               loc_216808
LDR             R1, =0x19DF08
LDRH            R1, [R1,R0]
BL              sub_52F508
CMP             R0, #0
LDRHNE          R10, [R0,#0x10]
ADD             R5, R6, #0x300
STRH            R10, [R5,#0xFA]
LDRB            R0, [R6,#0x3F4]
CMP             R0, #4
BEQ             loc_216964
LDR             R4, =off_6CE970
MOV             R1, R10
LDR             R0, [R4]
BL              sub_52F480
LDR             R1, [R0]
MOV             R2, #1
LDR             R3, [R1,#0x38]
ADD             R1, SP, #0x90+var_8C
BLX             R3
ADD             R1, SP, #0x90+var_8C
MOV             R0, R1
BL              sub_480160
LDRB            R0, [R6,#0xF0]
CMP             R0, #1
BEQ             loc_216898
LDR             R0, [R6]
MOV             R2, #0
ADD             R1, SP, #0x90+var_6C
LDR             R3, [R0,#0x28]
MOV             R0, R6
BLX             R3
MOV             R1, #1
MOV             R0, R6
BL              sub_14C450
LDR             R0, [R6]
ADD             R1, SP, #0x90+var_6C
LDR             R2, [R0,#0x20]
MOV             R0, R6
BLX             R2
ADD             R1, SP, #0x90+var_8C
ADD             R0, R6, #0x24 ; '$'
BL              sub_214A94
ADD             R2, SP, #0x90+var_8C
MOV             R1, #0
ADD             R0, R6, #0x1DC
BL              sub_5A2A74
LDR             R0, [R4]
NOP
BL              sub_528E64
LDRB            R0, [R0,#0x495]
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R0, #2
AND             R1, R0, #0xFF
MOV             R0, R6
BL              sub_14C430
MOV             R8, #1
MOV             R7, #0
STRB            R8, [R6,#0xF2]
STRB            R7, [R6,#0x3F7]
LDR             R10, =flt_6E34B0
LDR             R4, [R6,#0x400]
ADD             R0, R4, #0x20C00
LDR             R1, [R10,#(dword_6E35D8 - 0x6E34B0)]
ADD             R0, R0, #0x314
BL              sub_4E7C50
ADD             R4, R4, #0x20000
ADD             R4, R4, #0xF10
CMP             R9, #2
STRB            R8, [R4]
LDR             R0, [R6,#0x204]
VMOVNE.F32      S17, S16
VLDREQ          S17, [R10,#(flt_6E35A0 - 0x6E34B0)]
ADD             R2, SP, #0x90+var_78
VLDR            S0, [R0,#0x10]
MOV             R1, #0
VSTR            S17, [SP,#0x90+var_78]
VSTR            S17, [SP,#0x90+var_74]
VSTR            S16, [SP,#0x90+var_70]
ADD             R0, R6, #0x158
BL              sub_5A2074
VMOV.F32        S0, S17
LDRH            R1, [R5,#0xFA]
MOV             R2, R9
ADD             R3, SP, #0x90+var_7C
ADD             R0, R6, #0x410
STR             R7, [SP,#0x90+var_90]
BL              sub_2E7CB4
MOV             R0, #4
STRB            R0, [R6,#0x3F4]
ADD             SP, SP, #0x64 ; 'd'
VPOP            {D8}
POP             {R4-R11,PC}
