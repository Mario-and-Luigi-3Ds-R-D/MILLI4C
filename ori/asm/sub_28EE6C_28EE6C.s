PUSH            {R4-R7,LR}
MOV             R4, R0
VPUSH           {D8-D9}
VMOV.F32        S16, S0
SUB             SP, SP, #0x34
LDRB            R0, [R0,#0xA0]
CMP             R0, #0xD; switch 13 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_28EE88; jumptable 0028EE88 default case, cases 0,4,7-9
DCD def_28EE88; jump table for switch statement
LDRB            R0, [R4,#0xA1]; jumptable 0028EE88 case 6
CMP             R0, #0
BEQ             loc_28F044
CMP             R0, #1
BNE             def_28EE88; jumptable 0028EE88 default case, cases 0,4,7-9
LDR             R0, [R4,#0xC]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_28EE88; jumptable 0028EE88 default case, cases 0,4,7-9
LDRB            R0, [R4,#0xD5]
CMP             R0, #0
BEQ             loc_28F408
MOV             R0, #0xB
STRB            R0, [R4,#0xA0]
LDR             R0, [R4,#0x4D8]
ADD             R6, R4, #0x400
ADD             R5, R4, #0xE4
ADD             R6, R6, #0xD8
LDR             R7, [R0,#0xC]
MOV             R1, #1
MOV             R0, R5
BL              sub_14C450
LDR             R0, [R5]
MOV             R2, #0
MOV             R1, R7
LDR             R3, [R0,#0x58]
MOV             R0, R5
BLX             R3
MOV             R2, #1
MOV             R1, R2
MOV             R0, R5
BL              sub_14B798
MOV             R0, #0
STRB            R0, [R5,#0xF1]
MOV             R1, #2
ADD             R0, R4, #0xE4
BL              sub_14C450
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #4
ADD             R0, R4, #0xE4
BL              sub_14C548
LDR             R0, [R4,#0xC]
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0x2C]
ADD             R1, SP, #0x58+var_54
BLX             R3
LDR             R0, [R6]
VLDR            S0, [SP,#0x58+var_54]
ADD             R1, SP, #0x58+var_54
ADD             R0, R0, #0x5C ; '\'
VLDR            S1, [R0]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x58+var_54]
VLDR            S1, [R0,#4]
VLDR            S0, [SP,#0x58+var_50]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x58+var_50]
VLDR            S1, [R0,#8]
VLDR            S0, [SP,#0x58+var_4C]
ADD             R0, R4, #0xE4
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x58+var_4C]
BL              sub_14E984
MOV             R1, #0
ADD             R0, R4, #0xE4
BL              sub_14C3E8
MOV             R0, #1
STRB            R0, [R4,#0x1D6]
MOV             R0, #0xFFFFFF00
ADD             R5, R4, #0x410
REV             R0, R0
ADD             R6, R4, #0xE4
STR             R0, [SP,#0x58+var_48]
MOV             R0, R5
BL              sub_4E63E0
LDR             R0, [SP,#0x58+var_48]
ADD             R1, SP, #0x58+var_48
VLDR            S0, =4.0
STR             R0, [R5,#4]
STR             R0, [R5]
MOV             R0, #0xFFFFFFFF
REV             R0, R0
STR             R0, [SP,#0x58+var_48]
ADD             R0, R6, #0x32C
BL              sub_4E665C
LDR             R0, [R4,#0xC]
ADD             SP, SP, #0x34 ; '4'
MOV             R3, #0x100
VPOP            {D8-D9}
MOV             R2, #0
MOV             R1, #1
POP             {R4-R7,LR}
B               sub_14C430
LDR             R0, [R4,#0xC]
MOV             R3, R0
ADD             R0, R0, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_28EE88; jumptable 0028EE88 default case, cases 0,4,7-9
LDR             R2, [R3]
LDR             R0, [R4,#0x4D8]
LDR             R12, [R2,#0x58]
LDR             R1, [R0]
MOV             R2, #0
MOV             R0, R3
BLX             R12
LDR             R0, [R4,#0xC]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0
BL              sub_14C548
MOV             R0, #1
NOP
B               loc_28F3E4
LDR             R0, [R4,#0xC]; jumptable 0028EE88 case 2
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_28EE88; jumptable 0028EE88 default case, cases 0,4,7-9
MOV             R0, #4; jumptable 0028EE88 case 5
STRB            R0, [R4,#0xA0]
ADD             SP, SP, #0x34 ; '4'; jumptable 0028EE88 default case, cases 0,4,7-9
VPOP            {D8-D9}
POP             {R4-R7,PC}
LDRB            R0, [R4,#0x4DC]; jumptable 0028EE88 case 11
CMP             R0, #0
BEQ             def_28EE88; jumptable 0028EE88 default case, cases 0,4,7-9
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
TST             R0, #1
BEQ             def_28EE88; jumptable 0028EE88 default case, cases 0,4,7-9
MOV             R0, #0xFFFFFF00
MOV             R1, SP
REV             R0, R0
VLDR            S0, =4.0
STR             R0, [SP,#0x58+var_58]
ADD             R0, R4, #0x410
BL              sub_4E665C
MOV             R0, R4
NOP
BL              sub_28EB64
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8-D9}
POP             {R4-R7,PC}
LDRB            R0, [R4,#0x4DC]; jumptable 0028EE88 case 1
CMP             R0, #0
BEQ             loc_28F160
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
TST             R0, #1
BEQ             loc_28F160
MOV             R0, R4
BL              sub_28EB64
NOP
NOP
B               loc_28F2BC
LDR             R0, [R4,#0xC]
ADD             R1, SP, #0x58+var_50
VLDR            S17, [R0,#0x24]
MOV             R0, R4
BL              sub_28E7EC
VLDR            S0, [SP,#0x58+var_50]
ADD             R3, SP, #0x58+var_44
ADD             R2, SP, #0x58+var_44
VMUL.F32        S0, S0, S16
ADD             R1, R4, #0xBC
VSTR            S0, [SP,#0x58+var_50]
VLDR            S1, [SP,#0x58+var_4C]
VMUL.F32        S1, S1, S16
VSTR            S1, [SP,#0x58+var_4C]
VLDR            S2, [SP,#0x58+var_48]
VMUL.F32        S2, S2, S16
VSTR            S2, [SP,#0x58+var_48]
LDR             R0, [R4,#0xC]
ADD             R0, R0, #0x24 ; '$'
VLDM            R0, {S3-S5}
ADD             R0, SP, #0x58+var_38
VADD.F32        S0, S3, S0
VADD.F32        S2, S5, S2
VADD.F32        S1, S4, S1
VSTM            R3, {S0-S2}
BL              sub_28C568
LDR             R0, [SP,#0x58+var_40]
STR             R0, [SP,#0x58+var_34]
LDR             R0, [R4,#0xC]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, SP, #0x58+var_38
BLX             R2
VLDR            S0, [SP,#0x58+var_38]
VLDR            S18, =0.0
VSUB.F32        S16, S0, S17
VCMP.F32        S16, S18
VMRS            APSR_nzcv, FPSCR
BEQ             loc_28F278
LDR             R5, [R4,#0x4E0]
LDR             R0, [R5,#8]
CMP             R0, #0
BNE             loc_28F24C
LDR             R12, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R1, [R5]
LDR             R2, =0x301FC
LDR             R12, [R12]
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
MOV             R6, R0
LDR             R0, [R5,#4]!
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
STRNE           R5, [R6,#0x64]
VCMPE.F32       S16, S18
LDR             R0, [R4,#0xC]
MOV             R3, #0x100
MOV             R2, #0
VMRS            APSR_nzcv, FPSCR
MOVGT           R1, #2
MOVLE           R1, #5
BL              sub_14C430
NOP
NOP
B               loc_28F2BC
LDR             R0, [R4,#0xC]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
BL              sub_14C430
LDR             R5, [R4,#0x4E0]
LDR             R0, [R5,#8]
CMP             R0, #0
BEQ             loc_28F2BC
MOV             R1, #0
BL              sub_1586A8
LDR             R0, [R5,#8]
CMP             R0, #0
BEQ             loc_28F2BC
MOV             R1, #0
STR             R1, [R0,#0x64]
STR             R1, [R5,#8]
LDR             R0, [R4,#0xC]
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8-D9}
ADD             R1, R0, #0x24 ; '$'
ADD             R0, R4, #0x10
POP             {R4-R7,LR}
B               sub_28B08C
ADD             SP, SP, #0x34 ; '4'; jumptable 0028EE88 case 3
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4-R7,LR}
B               sub_28ED1C
DCFS 4.0
DCD off_6CE970
DCFS 0.0
DCD 0x301FC
DCD 0xFFE683CC
LDR             R0, [R4,#0xC]; jumptable 0028EE88 case 10
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_28EE88; jumptable 0028EE88 default case, cases 0,4,7-9
MOV             R0, #6
STRB            R0, [R4,#0xA0]
LDR             R0, [R4,#0xC]
VLDR            S17, =0.0
LDR             R1, [R0]
VMOV.F32        S16, S17
LDR             R1, [R1,#0x54]
BLX             R1
MOV             R5, R0
LDR             R0, [R4,#0xC]
BL              sub_5C5590
MOV             R7, R0
LDR             R0, [R4,#0xC]
BL              sub_5C55B8
MOV             R6, R0
LDR             R0, [R4,#0xC]
LDR             R1, [R4,#0x4D8]
LDR             R2, [R0]
LDR             R1, [R1]
LDR             R3, [R2,#0x58]
MOV             R2, #0
BLX             R3
LDR             R0, [R4,#0xC]
MOV             R2, #0xFFFFFFFF
MOV             R1, #0
BL              sub_5C55C8
VMOV            S0, R0
LDR             R0, [R4,#0xC]
MOV             R2, #0
LDR             R1, [R0]
VCVT.F32.S32    S0, S0
LDR             R3, [R1,#0x58]
MOV             R1, R5
VNEG.F32        S0, S0
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S16, S0
BLX             R3
LDR             R0, [R4,#0xC]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, R6
BL              sub_14C548
LDR             R0, [R4,#0xC]
MOV             R1, R7
BL              sub_14F01C
LDR             R0, [R4,#0xC]
ADD             R0, R0, #0x39C
VSTR            S17, [R0]
VSTR            S16, [R0,#4]
MOV             R0, #0
STRB            R0, [R4,#0xA1]
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8-D9}
POP             {R4-R7,PC}
LDR             R0, [R4,#0xC]; jumptable 0028EE88 case 12
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_28EE88; jumptable 0028EE88 default case, cases 0,4,7-9
MOV             R0, #1
STRB            R0, [R4,#0xA0]
B               loc_28F024
