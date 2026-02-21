PUSH            {R4-R8,LR}
MOV             R6, R0
LDR             R7, =off_6CDF98
VPUSH           {D8-D10}
SUB             SP, SP, #0x10
LDR             R0, [R7]
BL              sub_27B1E4
LDR             R8, =off_6CE970
LDR             R0, =0x19DEE2
VLDR            S1, =0.0039062
VLDR            S16, =0.0
LDR             R1, [R8]
LDRSH           R0, [R0,R1]; loc_19DEE0
VMOV            S0, R0
ADD             R0, R6, #0x400
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VLDR            S1, [R0,#0x1C]
VSUB.F32        S0, S1, S0
VSTR            S0, [R0,#0x1C]
LDRB            R0, [R6,#8]
CMP             R0, #0
BEQ             loc_278B48
CMP             R0, #1
BNE             loc_278CC4
LDRB            R2, [R6,#0xC]
ADD             R0, R6, #0x400
ADD             R4, R6, #0xC
CMP             R2, #2
ADD             R0, R0, #0xC
BEQ             loc_278CD0
CMP             R2, #3
BEQ             loc_278D10
CMP             R2, #4
BNE             loc_278D80
B               loc_278E08
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BHI             loc_278CC4
LDR             R1, [R6,#4]
MOV             R2, R1
LDR             R0, [R1,#0x100]
ADD             R0, R0, #0x21C00
ADD             R0, R0, #0x128
ADD             R1, R0, #0x84
LDM             R1, {R1,R3}
CMP             R1, R3
BNE             loc_278CC4
LDR             R1, [R0,#0x110]
LDR             R0, [R0,#0x114]
CMP             R1, R0
BNE             loc_278CC4
LDR             R0, [R2,#0x124]
ADD             R0, R0, #0x400
VLDR            S17, [R0,#0xC0]
VLDR            S19, [R0,#0xB4]
VLDR            S18, [R0,#0xBC]
VLDR            S20, [R0,#0xF4]
VLDR            S21, [R0,#0xB8]
LDR             R0, [R7]
LDR             R0, [R0,#0x100]
BL              sub_5CD76C
CMP             R0, #0
LDR             R0, [R7]
ADD             R5, R6, #0xC
LDRNE           R4, [R0,#0x16C]
LDREQ           R4, [R0,#0x154]
LDR             R0, [R7]
LDR             R0, [R0,#0x100]
BL              sub_5CD76C
VSTR            S21, [R5,#4]
ADD             R3, R5, #8
MOV             R7, R0
MOV             R2, #0
MOV             R1, R4
ADD             R0, R5, #0x18
VSTM            R3, {S17-S20}
BL              sub_14E6E0
MOV             R1, #2
ADD             R0, R5, #0x18
BL              sub_14C450
LDR             R0, [R8]
VLDR            S0, [R5,#8]
MOV             R1, SP
ADD             R0, R0, #0x100000
ADD             R0, R0, #0xC400
VLDR            S1, [R0,#(loc_10C4EC - 0x10C400)]
VSTR            S16, [SP,#0x40+var_40]
VSTR            S16, [SP,#0x40+var_3C]
VMUL.F32        S0, S1, S0
ADD             R0, R5, #0x18
VSTR            S0, [SP,#0x40+var_38]
BL              sub_14E984
MOV             R0, #0xFFFFFF00
ADD             R4, R6, #0x350
REV             R0, R0
STR             R0, [SP,#0x40+var_34]
MOV             R0, R4
BL              sub_4E63E0
LDR             R0, [SP,#0x40+var_34]
ADD             R1, SP, #0x40+var_34
STR             R0, [R4,#4]
STR             R0, [R4]
MOV             R0, #0xFFFFFFFF
REV             R0, R0
STR             R0, [SP,#0x40+var_34]
VLDR            S0, [R5,#4]
ADD             R0, R5, #0x344
BL              sub_4E665C
MOV             R2, #1
MOV             R1, R2
ADD             R0, R5, #0x18
BL              sub_14B798
MOV             R1, #0
ADD             R0, R5, #0x18
BL              sub_14C3E8
MOV             R2, #2
STRB            R2, [R5]
STRB            R7, [R6,#0x419]
LDR             R0, [R8]
LDR             R3, =0xFFE683CC
CMP             R7, #0
VMOV.F32        S0, S16
LDRNE           R1, =0x300B1
LDREQ           R1, =0x300B0
MOV             R2, #0
SUB             R0, R0, R3
BL              sub_503414
MOV             R0, #1
STRB            R0, [R6,#0x418]
STRB            R0, [R6,#8]
ADD             SP, SP, #0x10
VPOP            {D8-D10}
POP             {R4-R8,PC}
ADD             R1, R4, #0x36C
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_278CC4
MOV             R1, #3
STRB            R1, [R4]
LDRB            R0, [R0,#0xD]
CMP             R0, #0
LDRNE           R0, [R4,#0x14]
LDREQ           R0, [R4,#0xC]
STR             R0, [R4,#0x3B8]
VSTR            S16, [R4,#0x3B4]
ADD             SP, SP, #0x10
VPOP            {D8-D10}
POP             {R4-R8,PC}
ADD             R1, R4, #0x3B4
VLDM            R1, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_278CC4
LDRB            R0, [R0,#0xC]
CMP             R0, #0
BEQ             loc_278CC4
MOV             R0, #4
STRB            R0, [R4]
MOV             R0, #0xFF
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x40+var_40]
LDR             R0, [R8]
VLDR            S0, [R4,#0x10]
ADD             R0, R0, #0x19C000
ADD             R0, R0, #0x1F40
BL              sub_4E665C
MOV             R0, #0xFF
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x40+var_40]
LDR             R0, =0x19DF78
LDR             R2, [R8]
VLDR            S0, [R4,#0x10]
ADD             R0, R0, R2; loc_19DF78
BL              sub_4E665C
LDRB            R0, [R6,#0xC]
CMP             R0, #5
BNE             loc_278CC4
LDR             R4, [R7]
LDR             R0, [R4,#0xDC]!
CMP             R0, #0
BEQ             loc_278DA8
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [R4,#8]
ADD             R0, R4, #4
CMP             R1, R0
BNE             loc_278E44
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_278DD0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #0
STR             R0, [R4]
ADD             SP, SP, #0x10
VPOP            {D8-D10}
POP             {R4-R8,PC}
DCD off_6CDF98
DCD off_6CE970
DCFS 0.0039062
DCD 0x19DEE2
DCFS 0.0
DCD 0x300B1
DCD 0x300B0
DCD 0xFFE683CC
DCD 0x19DF78
ADD             R0, R1, #0x180000
ADD             R0, R0, #0x1DC00
ADD             R2, R0, #0x3A0
VLDM            R2, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_278CC4
ADD             R0, R0, #0x368
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #5
STRBGE          R0, [R4]
BLT             loc_278CC4
B               loc_278D8C
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_278DD0
