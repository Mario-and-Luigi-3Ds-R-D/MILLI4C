PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R8, #6
MOV             R9, #0
LDR             R10, =off_6CE970
LDR             R7, =0xFFE683CC
ADD             R5, R4, #0x400
VPUSH           {D8-D9}
SUB             SP, SP, #0x10
LDRB            R1, [R0]
LDR             R0, [R10]
VLDR            S17, =0.0
VLDR            S18, =1.0
VLDR            S16, =2.0
CMP             R1, #6; switch 6 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_285160; jumptable 00285160 default case
DCD loc_2851AC; jump table for switch statement
ADD             R1, R4, #0xBC; jumptable 00285160 case 1
ADD             R0, R4, #8
BL              sub_28B08C
ADD             R0, R4, #0x274
NOP
BL              sub_5F19B8
CMP             R0, #0
STRBEQ          R9, [R4]
ADD             SP, SP, #0x10; jumptable 00285160 default case
VPOP            {D8-D9}
POP             {R4-R10,PC}
ADD             R5, R5, #0x34 ; '4'; jumptable 00285160 case 0
VLDM            R5, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_285160; jumptable 00285160 default case
LDR             R2, =0x30218
MOV             R3, #0
ADD             R1, R4, #0x98
SUB             R0, R0, R7
BL              sub_503720
LDR             R0, [R4,#4]
MOV             R1, SP
LDR             R0, [R0,#0x3C]
VLDR            S0, [R0,#0x3DC]
MOV             R0, #0xFFFFFF00
REV             R0, R0
STR             R0, [SP,#0x40+var_40]
ADD             R0, R4, #0x3C4
BL              sub_4E665C
MOV             R0, #5
STRB            R0, [R4]
ADD             SP, SP, #0x10
VPOP            {D8-D9}
POP             {R4-R10,PC}
ADD             R0, R4, #0x274; jumptable 00285160 case 2
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_285160; jumptable 00285160 default case
MOV             R0, #3
STRB            R0, [R4]
LDR             R0, [R4,#4]
MOV             R1, #0
LDR             R0, [R0,#0x3C]
VLDR            S0, [R0,#0x39C]
ADD             SP, SP, #0x10
ADD             R0, R4, #0x274
VPOP            {D8-D9}
POP             {R4-R10,LR}
B               sub_5A2708
ADD             R0, R4, #0x274; jumptable 00285160 case 3
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_285160; jumptable 00285160 default case
MOV             R0, #4
STRB            R0, [R4]
ADD             R0, R4, #0x4C0
BL              sub_5A18EC
VSTR            S17, [R5,#0xCC]
VSTR            S17, [R5,#0xC4]
LDR             R0, [R4,#4]
VMOV.F32        S0, S18
LDR             R0, [R0,#0x3C]
VLDR            S1, [R0,#0x3A0]
ADD             R0, R4, #0x4C0
BL              sub_5A1BAC
VLDR            S1, [R4,#0xBC]
VLDR            S4, =-3.0
ADD             R3, R4, #0x400
VMUL.F32        S7, S1, S16
VMUL.F32        S6, S1, S4
ADD             R3, R3, #0xF4
VLDR            S5, =3.0
VLDR            S3, [R3]
LDR             R1, [R4,#4]
ADD             R0, R4, #0x490
ADD             R6, R0, #0x18
ADD             R2, R1, #0x24 ; '$'
ADD             R1, R1, #0x30 ; '0'
VMLS.F32        S7, S3, S16
VMLA.F32        S6, S3, S5
VLDR            S2, [R2]
VLDR            S0, [R1]
VADD.F32        S3, S7, S2
VMLS.F32        S6, S2, S16
VADD.F32        S3, S3, S0
VSUB.F32        S0, S6, S0
VSTR            S3, [R0]
VSTR            S0, [R0,#4]
VSTR            S2, [R0,#8]
VSTR            S1, [R0,#0xC]
VLDR            S2, [R4,#0xC0]
VLDR            S0, [R3,#4]
VLDR            S1, [R2,#4]
VMUL.F32        S7, S2, S16
VMUL.F32        S6, S2, S4
VLDR            S3, [R1,#4]
VMLS.F32        S7, S0, S16
VMLA.F32        S6, S0, S5
VADD.F32        S0, S7, S1
VMLS.F32        S6, S1, S16
VADD.F32        S0, S0, S3
VSUB.F32        S3, S6, S3
VSTR            S0, [R0,#0x10]
VSTR            S3, [R0,#0x14]
VSTM            R6, {S1-S2}
VLDR            S0, [R4,#0xC4]
VLDR            S2, [R3,#8]
VLDR            S1, [R2,#8]
VMUL.F32        S6, S0, S16
VMUL.F32        S4, S0, S4
VLDR            S3, [R1,#8]
VSTR            S1, [R0,#0x28]
VSTR            S0, [R0,#0x2C]
ADD             R0, R0, #0x20 ; ' '
VMLS.F32        S6, S2, S16
VMLA.F32        S4, S2, S5
VADD.F32        S2, S6, S1
VMLS.F32        S4, S1, S16
VADD.F32        S2, S2, S3
VSUB.F32        S3, S4, S3
VSTM            R0, {S2-S3}
ADD             SP, SP, #0x10
VPOP            {D8-D9}
POP             {R4-R10,PC}
ADD             R0, R0, #0x190000; jumptable 00285160 case 4
ADD             R0, R0, #0xDE00
VLDR            S1, =0.0039062
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R4, #0x4C0
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_5A176C
VLDR            S1, [R5,#0xC4]
ADD             R0, R4, #0x490
VLDR            S3, =0.5
VMUL.F32        S2, S1, S1
VLDR            S0, [R0,#4]
VLDR            S4, [R0,#0xC]
VLDR            S7, [R0]
VLDR            S6, [R0,#8]
ADD             R1, R4, #0x400
ADD             R1, R1, #0xA4
VMUL.F32        S5, S0, S2
VMUL.F32        S0, S2, S1
VMLA.F32        S5, S1, S6
VMLA.F32        S4, S0, S7
VADD.F32        S4, S4, S5
VMUL.F32        S4, S4, S3
VSTR            S4, [SP,#0x40+var_40]
VLDR            S5, [R0,#0x1C]
VLDR            S8, [R0,#0x10]
VLDM            R1, {S6-S7}
VMLA.F32        S5, S0, S8
MOV             R1, SP
VMUL.F32        S6, S6, S2
VMLA.F32        S6, S1, S7
VADD.F32        S5, S5, S6
VMUL.F32        S5, S5, S3
VSTR            S5, [SP,#0x40+var_3C]
VLDR            S6, [R0,#0x2C]
VLDR            S7, [R0,#0x28]
ADD             R0, R0, #0x20 ; ' '
VLDM            R0, {S8-S9}
ADD             R0, R4, #0x98
VMLA.F32        S6, S0, S8
VMUL.F32        S2, S9, S2
VMLA.F32        S2, S1, S7
VMUL.F32        S1, S4, S16
VADD.F32        S0, S6, S2
VMUL.F32        S2, S5, S16
VMUL.F32        S0, S0, S3
VSTR            S0, [SP,#0x40+var_38]
VMUL.F32        S0, S0, S16
VSTR            S0, [SP,#0x40+var_38]
VSTMEA          SP, {S1-S2}
BL              sub_14E984
ADD             R0, R4, #0x4C0
NOP
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             def_285160; jumptable 00285160 default case
LDRB            R0, [R4,#1]
LDR             R1, =0x5DB
MOV             R2, #0
CMP             R0, #4
LDR             R0, [R10]
MOVEQ           R5, #1
MOVNE           R5, #0
BL              sub_52F9B4
CMP             R5, #0
NOP
BEQ             loc_2854F4
LDR             R1, [R4,#4]
LDRD            R2, R3, [R1,#0x18]
LDR             R1, [R1,#0x20]
STR             R1, [R0,#0x13C]
ADD             R0, R0, #0x134
STM             R0, {R2,R3}
LDR             R0, =off_6CDCE8
LDR             R0, [R0]
BL              sub_2877C8
NOP
NOP
B               loc_285530
DCD off_6CE970
DCD 0xFFE683CC
DCFS 0.0
DCFS 1.0
DCFS 2.0
DCD 0x30218
DCFS -3.0
DCFS 3.0
DCFS 0.0039062
DCFS 0.5
DCD 0x5DB
DCD off_6CDCE8
ADD             R1, R4, #0xBC
ADD             R0, R0, #0x134
LDM             R1, {R1-R3}
VMOV.F32        S0, S17
STM             R0, {R1-R3}
MOV             R2, #0
LDR             R0, [R10]
LDR             R5, [R4,#0x48C]
LDRB            R6, [R4,#1]
LDR             R1, =0x30225
SUB             R0, R0, R7
BL              sub_503414
LDR             R0, [R5,#0x94]
MOV             R1, R6
BL              sub_284244
STRB            R9, [R4,#0x18A]
STRB            R8, [R4]
ADD             SP, SP, #0x10
VPOP            {D8-D9}
POP             {R4-R10,PC}
ADD             R0, R4, #0x3EC; jumptable 00285160 case 5
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
STRBGE          R8, [R4]
ADD             SP, SP, #0x10
VPOP            {D8-D9}
POP             {R4-R10,PC}
