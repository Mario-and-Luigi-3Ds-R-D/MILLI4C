PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R0, R0, #0x20 ; ' '
VPUSH           {D8-D9}
VMOV.F32        S16, S0
SUB             SP, SP, #0x10
BL              sub_5A2484
VMOV.F32        S0, S16
ADD             R0, R4, #0x78 ; 'x'
BL              sub_5A176C
VMOV.F32        S0, S16
ADD             R0, R4, #0xE4
BL              sub_5A176C
LDR             R6, =off_6CDA80
LDRB            R2, [R4]
VLDR            S16, =1.0
MOV             R8, #0
LDR             R0, [R6]
CMP             R2, #9; switch 9 cases
MOV             R7, #4
ADD             R1, R0, #0x12400
ADD             R1, R1, #0x2F4
LDR             R5, [R1]
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_228318; jumptable 00228318 default case, cases 4,5
DCD loc_228344; jump table for switch statement
ADD             R0, R0, #0x12400; jumptable 00228318 case 0
ADD             R0, R0, #0x2FC
ADD             R1, R5, #0x400
LDR             R0, [R0]
VLDR            S0, [R5,#0x24]
VLDR            S1, [R1,#0xA8]
VLDR            S3, [R5,#0x1E8]
VLDR            S2, [R0,#0x28]
VSUB.F32        S1, S1, S0
LDR             R0, [R4,#4]
VSUB.F32        S2, S2, S0
VDIV.F32        S0, S2, S1
VLDR            S2, [R5,#0x1EC]
VLDR            S1, [R5,#0x1F0]
ADD             R5, R5, #0x1DC
VLDM            R5, {S16-S18}
ADD             R5, R0, #0x1C4
MOV             R0, R5
VSUB.F32        S3, S3, S16
VSUB.F32        S2, S2, S17
VSUB.F32        S1, S1, S18
VMLA.F32        S16, S0, S3
VMLA.F32        S17, S0, S2
VMLA.F32        S18, S0, S1
BL              sub_5A26D0
ADD             R1, R5, #0x1C
ADD             R5, R5, #4
VSTM            R1, {S16-S18}
LDR             R1, =0x126FC
VSTM            R5, {S16-S18}
LDR             R0, [R6]
LDR             R1, [R1,R0]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDRD            R2, R3, [R1,#0x24]
LDR             R1, [R1,#0x2C]
VMOV            S0, R3
STRD            R2, R3, [SP,#0x38+var_38]
STR             R1, [SP,#0x38+var_30]
VLDR            S1, [R4,#0x28]
VADD.F32        S3, S0, S1
VMOV            S0, R1
VSTR            S3, [SP,#0x38+var_34]
VLDR            S1, [R4,#0x2C]
VADD.F32        S2, S0, S1
VSTR            S2, [SP,#0x38+var_30]
LDR             R0, [R0]
VLDR            S4, [R0,#0x300]
VSTR            S4, [SP,#0x38+var_38]
LDR             R0, [R4,#4]
VLDR            S0, [R4,#0x7C]
VLDR            S1, [R0,#0x24]
VSUB.F32        S4, S4, S1
VMLA.F32        S1, S0, S4
VSTR            S1, [SP,#0x38+var_38]
VLDR            S1, [R0,#0x28]
VSUB.F32        S3, S3, S1
VMLA.F32        S1, S0, S3
VSTR            S1, [SP,#0x38+var_34]
VLDR            S1, [R0,#0x2C]
VSUB.F32        S2, S2, S1
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0x38+var_30]
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, SP
BLX             R2
ADD             SP, SP, #0x10; jumptable 00228318 default case, cases 4,5
VPOP            {D8-D9}
POP             {R4-R8,PC}
LDRB            R1, [R4,#1]; jumptable 00228318 case 1
CMP             R1, #0
BNE             def_228318; jumptable 00228318 default case, cases 4,5
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2FC
VLDR            S0, [R4,#0x120]
LDR             R0, [R0]
VLDR            S1, [R4,#0xAC]
LDR             R0, [R0,#0x4A0]
VLDR            S2, [R0,#0x30]
ADD             R0, R4, #0xE4
VSUB.F32        S0, S2, S0
VDIV.F32        S2, S0, S1
VSUB.F32        S16, S16, S2
BL              sub_5A18EC
VSTR            S16, [R4,#0xF0]
VSTR            S16, [R4,#0xE8]
LDR             R0, [R6]
LDR             R1, =0x126FC
LDR             R1, [R1,R0]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDRD            R2, R3, [R1,#0x24]
LDR             R1, [R1,#0x2C]
VMOV            S0, R3
STRD            R2, R3, [SP,#0x38+var_38]
STR             R1, [SP,#0x38+var_30]
VLDR            S1, [R4,#0x28]
VADD.F32        S2, S0, S1
VMOV            S0, R1
VSTR            S2, [SP,#0x38+var_34]
VLDR            S1, [R4,#0x2C]
VADD.F32        S4, S0, S1
VSTR            S4, [SP,#0x38+var_30]
LDR             R0, [R0]
VLDR            S1, [R0,#0x300]
VSTR            S1, [SP,#0x38+var_38]
LDR             R0, [R4,#4]
VLDR            S3, [R4,#0x7C]
VLDR            S0, [R0,#0x24]
VSUB.F32        S1, S1, S0
VMLA.F32        S0, S3, S1
VSTR            S0, [SP,#0x38+var_38]
VLDR            S1, [R0,#0x28]
VSUB.F32        S2, S2, S1
VMLA.F32        S1, S3, S2
VSTR            S1, [SP,#0x38+var_34]
VLDR            S2, [R0,#0x2C]
VSUB.F32        S4, S4, S2
VMLA.F32        S2, S3, S4
VSUB.F32        S4, S0, S0
VSTR            S2, [SP,#0x38+var_30]
VLDR            S6, [R5,#0x1F4]
VSUB.F32        S5, S2, S2
VLDR            S3, [R4,#0xE8]
VSUB.F32        S6, S6, S1
VMLA.F32        S0, S3, S4
VMLA.F32        S2, S3, S5
VMLA.F32        S1, S3, S6
VSTMEA          SP, {S0-S2}
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, SP
BLX             R2
ADD             SP, SP, #0x10
VPOP            {D8-D9}
POP             {R4-R8,PC}
ADD             R0, R0, #0x12400; jumptable 00228318 case 2
ADD             R0, R0, #0x2FC
LDR             R0, [R0]
LDRD            R2, R3, [R0,#0x24]
LDR             R0, [R0,#0x2C]
VMOV            S0, R3
STRD            R2, R3, [SP,#0x38+var_38]
STR             R0, [SP,#0x38+var_30]
VLDR            S1, [R4,#0x28]
VADD.F32        S2, S0, S1
VMOV            S0, R0
VSTR            S2, [SP,#0x38+var_34]
VLDR            S1, [R4,#0x2C]
VADD.F32        S4, S0, S1
VSTR            S4, [SP,#0x38+var_30]
LDR             R0, [R1]
VLDR            S1, [R0,#0x300]
VSTR            S1, [SP,#0x38+var_38]
LDR             R0, [R4,#4]
VLDR            S3, [R4,#0x7C]
VLDR            S0, [R0,#0x24]
VSUB.F32        S1, S1, S0
VMLA.F32        S0, S3, S1
VSTR            S0, [SP,#0x38+var_38]
VLDR            S1, [R0,#0x28]
VSUB.F32        S5, S0, S0
VSUB.F32        S2, S2, S1
VMLA.F32        S1, S3, S2
VSTR            S1, [SP,#0x38+var_34]
VLDR            S2, [R0,#0x2C]
VSUB.F32        S4, S4, S2
VMLA.F32        S2, S3, S4
VSTR            S2, [SP,#0x38+var_30]
VLDR            S6, [R5,#0x1F4]
VSUB.F32        S4, S2, S2
VLDR            S3, [R4,#0xE8]
VSUB.F32        S6, S6, S1
VMLA.F32        S0, S3, S5
VMLA.F32        S2, S3, S4
VMLA.F32        S1, S3, S6
VSTMEA          SP, {S0-S2}
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, SP
BLX             R2
ADD             R0, R4, #0xE4
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             def_228318; jumptable 00228318 default case, cases 4,5
LDR             R0, [R6]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F8
LDR             R0, [R0]
LDRB            R0, [R0]
CMP             R0, #2
BEQ             loc_228754
STRB            R8, [R4]
ADD             SP, SP, #0x10
VPOP            {D8-D9}
POP             {R4-R8,PC}
DCD off_6CDA80
DCFS 1.0
DCD 0x126FC
ADD             R0, R0, #0x12400; jumptable 00228318 case 3
ADD             R0, R0, #0x2FC
LDR             R0, [R0]
LDRD            R2, R3, [R0,#0x24]
LDR             R0, [R0,#0x2C]
VMOV            S0, R3
STRD            R2, R3, [SP,#0x38+var_38]
STR             R0, [SP,#0x38+var_30]
VLDR            S1, [R4,#0x28]
VADD.F32        S3, S0, S1
VMOV            S0, R0
VSTR            S3, [SP,#0x38+var_34]
VLDR            S1, [R4,#0x2C]
VADD.F32        S2, S0, S1
VSTR            S2, [SP,#0x38+var_30]
LDR             R0, [R1]
VLDR            S4, [R0,#0x300]
VSTR            S4, [SP,#0x38+var_38]
LDR             R0, [R4,#4]
VLDR            S0, [R4,#0x7C]
VLDR            S1, [R0,#0x24]
VSUB.F32        S4, S4, S1
VMLA.F32        S1, S0, S4
VSTR            S1, [SP,#0x38+var_38]
VLDR            S1, [R0,#0x28]
VSUB.F32        S3, S3, S1
VMLA.F32        S1, S0, S3
VSTR            S1, [SP,#0x38+var_34]
VLDR            S1, [R0,#0x2C]
VSUB.F32        S2, S2, S1
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0x38+var_30]
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, SP
BLX             R2
ADD             R0, R4, #0x78 ; 'x'
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             def_228318; jumptable 00228318 default case, cases 4,5
LDR             R0, [R6]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F8
LDR             R0, [R0]
LDRB            R0, [R0]
CMP             R0, #2
BEQ             loc_228754
B               loc_228658
LDR             R0, [R4,#4]; jumptable 00228318 case 6
ADD             R0, R0, #0x11C
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_228318; jumptable 00228318 default case, cases 4,5
STRB            R7, [R4]
ADD             SP, SP, #0x10
VPOP            {D8-D9}
POP             {R4-R8,PC}
LDR             R0, [R4,#4]; jumptable 00228318 case 7
ADD             R0, R0, #0x11C
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_228318; jumptable 00228318 default case, cases 4,5
LDR             R0, [R6]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F8
LDR             R0, [R0]
LDRB            R0, [R0]
CMP             R0, #2
BNE             def_228318; jumptable 00228318 default case, cases 4,5
B               loc_228754
ADD             R0, R0, #0x12400; jumptable 00228318 case 8
ADD             R0, R0, #0x2FC
LDR             R1, [R4,#4]
LDR             R0, [R0]
ADD             R2, R5, #0x400
VLDR            S0, [R1,#0x2C]
VLDR            S2, [R0,#0x2C]
VLDR            S1, [R2,#0x98]
VSUB.F32        S0, S0, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             def_228318; jumptable 00228318 default case, cases 4,5
VLDR            S0, [R5,#0x74]
VLDR            S17, =0.0
ADD             R0, R4, #0x78 ; 'x'
VCMP.F32        S0, S17
VMRS            APSR_nzcv, FPSCR
BNE             loc_2287F4
BL              sub_5A18EC
VSTR            S16, [R4,#0x84]
VSTR            S16, [R4,#0x7C]
B               loc_228814
NOP
BL              sub_5A18EC
VSTR            S17, [R4,#0x84]
VMOV.F32        S0, S16
VSTR            S17, [R4,#0x7C]
VLDR            S1, [R5,#0x74]
ADD             R0, R4, #0x78 ; 'x'
BL              sub_5A14A4
MOV             R0, #3
STRB            R0, [R4]
LDR             R0, [R4,#4]
VMOV.F32        S0, S17
ADD             R1, R0, #0x24 ; '$'
LDR             R0, [R0,#0x2C]
LDM             R1, {R1,R2}
STR             R0, [R4,#0x10]
ADD             R0, R4, #8
STM             R0, {R1,R2}
LDR             R0, [R6]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
VLDR            S1, [R0,#0x60]
ADD             SP, SP, #0x10
ADD             R0, R4, #0xE4
VPOP            {D8-D9}
POP             {R4-R8,LR}
B               sub_5A14A4
