PUSH            {R4-R10,LR}
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x38
LDRB            R0, [R0,#0x41A]
CMP             R0, #4
MOVEQ           R0, #0
BEQ             loc_1F7AB8
LDR             R7, =off_6CDD80
SUB             R1, R0, #2
VLDR            S17, =1.0
VLDR            S16, =0.0
LDR             R0, [R7]
ADD             R6, R4, #0x400
CMP             R1, #6; switch 6 cases
MOV             R8, #0
MOV             R10, #4
MOV             R9, #2
ADD             R5, R4, #0x400
ADD             R6, R6, #0x1B
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1F74A0; jumptable 001F74A0 default case, case 2
DCD loc_1F754C; jump table for switch statement
LDRB            R1, [R4,#0x41B]; jumptable 001F74A0 case 1
CMP             R1, #0
BEQ             loc_1F74D8
CMP             R1, #1
BNE             def_1F74A0; jumptable 001F74A0 default case, case 2
B               loc_1F7534
ADD             R1, R4, #0x39C
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_1F74A0; jumptable 001F74A0 default case, case 2
LDR             R0, [R0,#8]
LDR             R1, [R4,#0x204]
LDR             R0, [R0,#0x28C]
VLDR            S0, [R1,#0x10]
ADD             R1, SP, #0x68+var_60
VMOV            S1, R0
STR             R0, [SP,#0x68+var_64]
MOV             R0, #0xFFFFFF00
REV             R0, R0
VSUB.F32        S1, S17, S1
STR             R0, [SP,#0x68+var_60]
ADD             R0, R4, #0x32C
VMUL.F32        S0, S1, S0
BL              sub_4E665C
LDRB            R0, [R4,#0x41B]
ADD             R0, R0, #1
STRB            R0, [R6]
B               def_1F74A0; jumptable 001F74A0 default case, case 2
ADD             R0, R4, #0x354
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_1F74A0; jumptable 001F74A0 default case, case 2
B               loc_1F7AAC
VLDR            S0, [R4,#0x24]; jumptable 001F74A0 case 0
VLDR            S1, =-16.0
VLDR            S2, [R4,#0x2C]
ADD             R0, R4, #0x400
VADD.F32        S0, S0, S1
VADD.F32        S1, S2, S1
ADD             R0, R0, #0x1C
VLDR            S2, =2.0
VSTR            S0, [R0]
VSTR            S16, [R0,#4]
VSTR            S1, [R0,#8]
LDR             R1, [R7]
VLDR            S1, =16.0
VLDR            S0, [R4,#0x24]
ADD             R0, R4, #0x400
LDR             R1, [R1,#8]
VADD.F32        S0, S0, S1
ADD             R0, R0, #0x28 ; '('
LDR             R1, [R1,#0xA0]
VMOV            S4, R1
STR             R1, [SP,#0x68+var_60]
VLDR            S3, [R4,#0x2C]
VSTR            S0, [R0]
ADD             R0, R4, #0x400
VADD.F32        S1, S3, S1
VMUL.F32        S0, S4, S2
ADD             R0, R0, #0x2C ; ','
VSTM            R0, {S0-S1}
B               def_1F74A0; jumptable 001F74A0 default case, case 2
ADD             R0, R4, #0x1DC; jumptable 001F74A0 case 3
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_1F74A0; jumptable 001F74A0 default case, case 2
LDR             R0, [R7]
MOV             R1, R4
ADD             R0, R0, #0xC00
ADD             R0, R0, #0x2D4
BL              sub_543BE8
STRB            R9, [R4,#0x41A]
LDR             R0, [R7]
MOV             R2, #0
LDR             R1, [R0,#0xF3C]
MOV             R0, R4
BL              sub_14E6E0
MOV             R0, R4
NOP
BL              sub_14D83C
LDRB            R0, [R4,#0x418]
LDRB            R1, [R4,#0x414]
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R0, R1
AND             R1, R0, #0xFF
MOV             R0, R4
BL              sub_14C548
LDRB            R0, [R5,#0x19]
STRB            R0, [R4,#0xF3]
MOV             R0, R4
BL              sub_5C5724
MOV             R5, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VMOV            S0, R0
VLDR            S1, =0.000015259
VCVT.F32.U32    S2, S0
VMOV            S0, R5
VCVT.F32.S32    S0, S0
VMUL.F32        S1, S2, S1
VMUL.F32        S0, S1, S0
VCVT.U32.F32    S0, S0
VMOV            R0, S0
UXTH            R1, R0
MOV             R0, R4
BL              sub_14F01C
NOP
NOP
B               def_1F74A0; jumptable 001F74A0 default case, case 2
LDRB            R1, [R4,#0x41B]; jumptable 001F74A0 case 4
CMP             R1, #0
BEQ             loc_1F76AC
CMP             R1, #1
BEQ             loc_1F78A8
CMP             R1, #2
BEQ             loc_1F78C0
CMP             R1, #3
BNE             def_1F74A0; jumptable 001F74A0 default case, case 2
B               loc_1F7910
ADD             R1, R4, #0x39C
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_1F74A0; jumptable 001F74A0 default case, case 2
LDR             R1, [R0,#0xF40]
MOV             R2, #0
MOV             R0, R4
BL              sub_14E6E0
LDR             R0, [R4,#0x410]
MOV             R6, #1
CMP             R0, #0
BEQ             loc_1F76F4
CMP             R0, #1
BEQ             loc_1F7714
CMP             R0, #2
BNE             loc_1F774C
B               loc_1F7734
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xF
MOV             R0, R4
BL              sub_14C548
STRB            R8, [R4,#0xF3]
NOP
B               loc_1F774C
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x11
MOV             R0, R4
BL              sub_14C548
STRB            R6, [R4,#0xF3]
NOP
B               loc_1F774C
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x11
MOV             R0, R4
BL              sub_14C548
STRB            R8, [R4,#0xF3]
ADD             R0, R4, #0x1DC
BL              sub_5A26D0
LDR             R0, [R4,#0x410]
CMP             R0, #0
BEQ             loc_1F784C
ADD             R0, R4, #0x400
ADD             R0, R0, #4
VLDR            S5, [R4,#0x24]
VLDR            S2, [R0]
VLDR            S1, [R4,#0x2C]
VLDR            S3, [R0,#8]
VSUB.F32        S2, S2, S5
VLDR            S4, [R4,#0x28]
VLDR            S0, [R0,#4]
VSUB.F32        S1, S3, S1
ADD             R0, SP, #0x68+var_60
VSUB.F32        S0, S0, S4
VSTR            S2, [SP,#0x68+var_64]
VMUL.F32        S3, S2, S2
VSTM            R0, {S0-S1}
VMLA.F32        S3, S0, S0
VMLA.F32        S3, S1, S1
VSQRT.F32       S4, S3
VDIV.F32        S3, S17, S4
VMUL.F32        S4, S2, S3
VMUL.F32        S2, S0, S3
VMUL.F32        S1, S1, S3
VSTR            S4, [SP,#0x68+var_64]
VSTR            S2, [SP,#0x68+var_60]
VSTR            S1, [SP,#0x68+var_5C]
LDR             R0, [R7]
LDR             R1, [R0,#8]
LDR             R1, [R1,#0x23C]
VMOV            S0, R1
STR             R1, [SP,#0x68+var_58]
VMUL.F32        S3, S4, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S1, S0
VSTR            S3, [SP,#0x68+var_64]
VSTR            S2, [SP,#0x68+var_60]
VSTR            S0, [SP,#0x68+var_5C]
LDR             R0, [R0,#8]
LDR             R1, [R0,#0x244]
STR             R1, [SP,#0x68+var_58]
LDR             R0, [R0,#0x240]
VMOV            S1, R1
STR             R0, [SP,#0x68+var_68]
LDR             R0, =dword_6D1F40
VLDR            S0, [SP,#0x68+var_68]
BL              sub_47EAA4
ADD             R1, SP, #0x68+var_64
ADD             R0, R4, #0x1DC
BL              sub_5A3064
STRB            R6, [R4,#0x41B]
NOP
B               def_1F74A0; jumptable 001F74A0 default case, case 2
DCD off_6CDD80
DCFS 1.0
DCFS 0.0
DCFS -16.0
DCFS 2.0
DCFS 16.0
DCD dword_6D1F40
DCFS 0.000015259
LDR             R0, [R7]
LDR             R1, [R5,#4]
LDR             R2, [R0,#8]
LDR             R2, [R2,#0x248]
STR             R1, [SP,#0x68+var_60]
STR             R2, [SP,#0x68+var_68]
VSTR            S16, [SP,#0x68+var_5C]
STR             R2, [SP,#0x68+var_58]
LDR             R0, [R0,#8]
LDR             R1, [R0,#0x250]
STR             R1, [SP,#0x68+var_64]
LDR             R0, [R0,#0x24C]
VMOV            S1, R1
STR             R0, [SP,#0x68+var_68]
LDR             R0, =dword_6D1F40
VLDR            S0, [SP,#0x68+var_68]
BL              sub_47EAA4
ADD             R1, SP, #0x68+var_60
ADD             R0, R4, #0x1DC
BL              sub_5A29E4
STRB            R9, [R4,#0x41B]
NOP
B               def_1F74A0; jumptable 001F74A0 default case, case 2
ADD             R0, R4, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_1F74A0; jumptable 001F74A0 default case, case 2
B               loc_1F7AAC
LDR             R0, [R0,#8]
LDR             R1, [R0,#0x254]
VMOV            S1, R1
STR             R1, [SP,#0x68+var_68]
VLDR            S0, [R4,#0x2C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             def_1F74A0; jumptable 001F74A0 default case, case 2
LDR             R0, [R0,#0x258]
ADD             R1, SP, #0x68+var_64
STR             R0, [SP,#0x68+var_68]
MOV             R0, #0xFFFFFF00
REV             R0, R0
STR             R0, [SP,#0x68+var_64]
VLDR            S0, [SP,#0x68+var_68]
ADD             R0, R4, #0x32C
BL              sub_4E665C
MOV             R0, #3
STRB            R0, [R4,#0x41B]
B               def_1F74A0; jumptable 001F74A0 default case, case 2
ADD             R0, R4, #0x354
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_1F74A0; jumptable 001F74A0 default case, case 2
B               loc_1F7AAC
LDRB            R1, [R4,#0x41B]; jumptable 001F74A0 case 5
CMP             R1, #0
BEQ             loc_1F7940
CMP             R1, #1
BNE             def_1F74A0; jumptable 001F74A0 default case, case 2
B               loc_1F7A98
ADD             R1, R4, #0x39C
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_1F74A0; jumptable 001F74A0 default case, case 2
LDR             R0, [R0,#0xEF8]
ADD             R1, SP, #0x68+var_58
BL              sub_5F1924
LDR             R0, [R7]
VLDR            S1, =0.5
VLDR            S2, =-0.5
LDR             R0, [R0,#0xEF8]
ADD             R0, R0, #0x400
ADD             R0, R0, #0x1A4
VLDR            S0, [R0]
LDR             R0, =dword_6D1F40
VMUL.F32        S1, S0, S1
VMUL.F32        S0, S0, S2
BL              sub_47EAA4
VLDR            S1, [SP,#0x68+var_58]
LDR             R0, =dword_6D1F40
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x68+var_58]
BL              sub_546DB0
MOV             R0, R0,LSL#3
MOV             R1, R0,LSR#16
LDR             R0, [R7]
VMOV            S0, R1
LDR             R2, [R0,#8]
VCVT.F32.U32    S0, S0
LDR             R1, [R2,#0x11C]
ADD             R2, SP, #0x68+var_4C
VMOV            S1, R1
STR             R1, [SP,#0x68+var_64]
MOV             R1, #0
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0x68+var_54]
VLDR            S3, [R4,#0x24]
VLDR            S0, [SP,#0x68+var_58]
VLDR            S2, [R4,#0x2C]
VLDR            S1, [SP,#0x68+var_50]
VSUB.F32        S0, S0, S3
VSUB.F32        S1, S1, S2
VSTR            S0, [SP,#0x68+var_4C]
VSTR            S1, [SP,#0x68+var_44]
VSTR            S16, [SP,#0x68+var_48]
LDR             R5, [R0,#8]
LDR             R0, [R5,#0x278]
VMOV            S0, R0
STR             R0, [SP,#0x68+var_68]
VLDR            S1, [R4,#0x3A0]
ADD             R0, R4, #0x1DC
VSUB.F32        S18, S0, S1
VMOV.F32        S0, S18
BL              sub_5A2B20
ADD             R1, SP, #0x68+var_40
ADD             R2, SP, #0x68+var_40
VSTM            R1, {S16-S17}
MOV             R1, #1
VSTR            S16, [SP,#0x68+var_38]
LDR             R0, [R5,#0x27C]
VMOV            S1, R0
STR             R0, [SP,#0x68+var_64]
VLDR            S0, [SP,#0x68+var_54]
ADD             R0, R4, #0x1DC
VADD.F32        S2, S1, S0
VMOV.F32        S1, S18
BL              sub_5A28C4
LDR             R0, [R7]
MOV             R2, #0
LDR             R1, [R0,#0xF40]
MOV             R0, R4
BL              sub_14E6E0
VLDR            S0, [SP,#0x68+var_44]
MOV             R3, #0x100
MOV             R2, #0
VCMPE.F32       S0, S16
MOV             R0, R4
VMRS            APSR_nzcv, FPSCR
MOVCC           R1, #0x1C
MOVCS           R1, #0x1E
BL              sub_14C548
LDRB            R0, [R4,#0x41B]
ADD             R0, R0, #1
STRB            R0, [R6]
B               def_1F74A0; jumptable 001F74A0 default case, case 2
ADD             R0, R4, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_1F74A0; jumptable 001F74A0 default case, case 2
STRB            R10, [R4,#0x41A]
STRB            R8, [R4,#0x434]
MOV             R0, #1; jumptable 001F74A0 default case, case 2
ADD             SP, SP, #0x38 ; '8'
VPOP            {D8-D9}
POP             {R4-R10,PC}
