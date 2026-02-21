PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R9, #1
LDR             R8, =off_6CE970
MOV             R10, #2
VPUSH           {D8-D10}
SUB             SP, SP, #0x10
LDRB            R0, [R0,#8]
VLDR            S18, =0.0
CMP             R0, #0
BEQ             loc_29255C
CMP             R0, #1
BEQ             loc_2926D0
CMP             R0, #2
BNE             loc_2926C4
LDRB            R1, [R5,#0xC]
ADD             R0, R5, #0x400
ADD             R4, R5, #0xC
CMP             R1, #2
ADD             R0, R0, #0xC
BEQ             loc_2926FC
CMP             R1, #3
BEQ             loc_29273C
CMP             R1, #4
BNE             loc_2927AC
B               loc_292830
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x40]
CMP             R0, #0
BEQ             loc_29257C
BL              sub_5CD7CC
CMP             R0, #0
NOP
BEQ             loc_2926C4
LDR             R6, =off_6CDCE8
LDR             R0, [R6]
LDR             R1, [R0,#0x14]
VLDR            S16, [R1,#0xC]
VLDR            S17, [R1,#0x14]
VLDR            S20, [R1,#8]
VLDR            S19, [R1,#0x10]
VLDR            S21, [R1,#0x48]
LDR             R1, =0x12C10
LDRB            R1, [R1,R0]
ADD             R0, R0, #0xE4
CMP             R1, #0
BEQ             loc_2925C0
LDR             R0, [R0,#0x38]
NOP
NOP
B               loc_2925C8
NOP
LDR             R0, [R0,#0x24]
MOV             R1, R0
LDR             R0, [R6]
LDR             R7, =0x12C10
ADD             R3, R5, #0x10
ADD             R4, R5, #0xC
MOV             R2, #0
LDRSB           R7, [R0,R7]
ADD             R0, R5, #0x24 ; '$'
VSTM            R3, {S16-S17}
ADD             R3, R5, #0x18
VSTM            R3, {S19-S21}
BL              sub_14E6E0
MOV             R1, #2
ADD             R0, R4, #0x18
BL              sub_14C450
LDR             R0, [R8]
VLDR            S0, [R4,#8]
VMOV.F32        S16, S18
ADD             R0, R0, #0x100000
ADD             R0, R0, #0xC400
MOV             R1, SP
VLDR            S1, [R0,#(loc_10C4EC - 0x10C400)]
VSTR            S16, [SP,#0x48+var_48]
VSTR            S16, [SP,#0x48+var_44]
VMUL.F32        S0, S1, S0
ADD             R0, R4, #0x18
VSTR            S0, [SP,#0x48+var_40]
BL              sub_14E984
MOV             R0, #0xFFFFFF00
ADD             R6, R5, #0x350
REV             R0, R0
STR             R0, [SP,#0x48+var_3C]
MOV             R0, R6
BL              sub_4E63E0
LDR             R0, [SP,#0x48+var_3C]
ADD             R1, SP, #0x48+var_3C
STR             R0, [R6,#4]
STR             R0, [R6]
MOV             R0, #0xFFFFFFFF
REV             R0, R0
STR             R0, [SP,#0x48+var_3C]
VLDR            S0, [R4,#4]
ADD             R0, R4, #0x344
BL              sub_4E665C
MOV             R2, #1
MOV             R1, R2
ADD             R0, R4, #0x18
BL              sub_14B798
MOV             R1, #0
ADD             R0, R4, #0x18
BL              sub_14C3E8
STRB            R10, [R4]
STRB            R7, [R5,#0x419]
LDR             R0, [R8]
LDR             R3, =0xFFE683CC
CMP             R7, #0
VMOV.F32        S0, S16
LDRNE           R1, =0x300B1
LDREQ           R1, =0x300B0
MOV             R2, #0
SUB             R0, R0, R3
BL              sub_503414
STRB            R9, [R5,#8]
ADD             SP, SP, #0x10
VPOP            {D8-D10}
POP             {R4-R10,PC}
LDR             R0, [R5,#4]
ADD             R0, R0, #0x12000
ADD             R0, R0, #0x7E0
LDR             R0, [R0]
BL              sub_5CDCC0
CMP             R0, #0
STRBNE          R9, [R5,#0x418]
STRBNE          R10, [R5,#8]
ADD             SP, SP, #0x10
VPOP            {D8-D10}
POP             {R4-R10,PC}
ADD             R1, R4, #0x36C
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_2926C4
MOV             R1, #3
STRB            R1, [R4]
LDRB            R0, [R0,#0xD]
CMP             R0, #0
LDRNE           R0, [R4,#0x14]
LDREQ           R0, [R4,#0xC]
STR             R0, [R4,#0x3B8]
VSTR            S18, [R4,#0x3B4]
ADD             SP, SP, #0x10
VPOP            {D8-D10}
POP             {R4-R10,PC}
ADD             R1, R4, #0x3B4
VLDM            R1, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_2926C4
LDRB            R0, [R0,#0xC]
CMP             R0, #0
BEQ             loc_2926C4
MOV             R0, #4
STRB            R0, [R4]
MOV             R0, #0xFF
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x48+var_48]
LDR             R0, [R8]
VLDR            S0, [R4,#0x10]
ADD             R0, R0, #0x19C000
ADD             R0, R0, #0x1F40
BL              sub_4E665C
MOV             R0, #0xFF
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x48+var_48]
LDR             R0, =0x19DF78
LDR             R2, [R8]
VLDR            S0, [R4,#0x10]
ADD             R0, R0, R2; loc_19DF78
BL              sub_4E665C
LDRB            R0, [R5,#0xC]
CMP             R0, #5
BNE             loc_2926C4
LDR             R4, [R5,#4]
LDR             R0, [R4,#0x58]!
CMP             R0, #0
BEQ             loc_2927D4
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [R4,#8]
ADD             R0, R4, #4
CMP             R1, R0
BNE             loc_292870
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2927FC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #0
STR             R0, [R4]
ADD             SP, SP, #0x10
VPOP            {D8-D10}
POP             {R4-R10,PC}
DCFS 0.0
DCD off_6CE970
DCD off_6CDCE8
DCD 0x12C10
DCD 0x300B1
DCD 0x300B0
DCD 0xFFE683CC
DCD 0x19DF78
LDR             R0, [R8]
ADD             R0, R0, #0x180000
ADD             R0, R0, #0x1DC00
ADD             R1, R0, #0x3A0
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_2926C4
ADD             R0, R0, #0x368
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #5
STRBGE          R0, [R4]
BLT             loc_2926C4
B               loc_2927B8
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_2927FC
