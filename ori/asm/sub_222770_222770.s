PUSH            {R4-R9,LR}
MOV             R5, R0
MOV             R1, #1
LDR             R6, =off_6CDA80
VPUSH           {D8-D10}
SUB             SP, SP, #0x14
LDR             R0, [R6]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x2700
LDR             R0, [R0]
BL              sub_228AE4
LDR             R0, [R6]
MOV             R1, #1
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F8
LDR             R0, [R0]
BL              sub_22A0C8
LDRB            R0, [R5,#8]
LDR             R7, =off_6CE970
VLDR            S16, =0.0
CMP             R0, #0
MOV             R4, #1
MOV             R8, #2
BEQ             loc_22280C
CMP             R0, #1
BEQ             loc_2229B0
CMP             R0, #2
BNE             loc_2229A4
LDRB            R1, [R5,#0xC]
ADD             R0, R5, #0x400
ADD             R4, R5, #0xC
CMP             R1, #2
ADD             R0, R0, #0xC
BEQ             loc_2229DC
CMP             R1, #3
BEQ             loc_222A1C
CMP             R1, #4
BNE             loc_222A8C
B               loc_222AFC
LDR             R0, [R6]
BL              sub_225F88
LDR             R0, [R6]
LDR             R1, =0x126FC
LDR             R1, [R1,R0]
LDRB            R1, [R1,#0x45C]
CMP             R1, #5
BNE             loc_2229A4
LDR             R1, =0x126EC
LDR             R1, [R1,R0]
LDRB            R1, [R1,#0x3FC]
CMP             R1, #9
BNE             loc_2229A4
LDR             R1, =0x126F0
LDR             R1, [R1,R0]
LDRB            R1, [R1,#0x3FC]
CMP             R1, #9
BNE             loc_2229A4
LDR             R1, =0x126E8
LDR             R1, [R1,R0]
LDRB            R1, [R1]
CMP             R1, #4
BNE             loc_2229A4
LDR             R1, =0x126F4
STRB            R4, [R5,#8]
LDR             R1, [R1,R0]
VLDR            S17, [R1,#0x2C0]
VLDR            S18, [R1,#0x2C8]
VLDR            S20, [R1,#0x2BC]
VLDR            S19, [R1,#0x2C4]
VLDR            S21, [R1,#0x2FC]
LDR             R1, =0x1390C
LDRB            R1, [R1,R0]
ADD             R0, R0, #0x24 ; '$'
CMP             R1, #0
BEQ             loc_2228AC
LDR             R0, [R0,#0x44]
NOP
NOP
B               loc_2228B4
NOP
LDR             R0, [R0,#0x34]
MOV             R1, R0
LDR             R0, [R6]
LDR             R6, =0x1390C
ADD             R3, R5, #0x10
MOV             R9, R5
ADD             R4, R5, #0xC
LDRSB           R6, [R0,R6]
MOV             R2, #0
ADD             R0, R5, #0x24 ; '$'
VSTM            R3, {S17-S21}
BL              sub_14E6E0
MOV             R1, #2
ADD             R0, R4, #0x18
BL              sub_14C450
LDR             R0, [R7]
VLDR            S0, [R4,#8]
MOV             R1, SP
ADD             R0, R0, #0x100000
ADD             R0, R0, #0xC400
VLDR            S1, [R0,#(loc_10C4EC - 0x10C400)]
VSTR            S16, [SP,#0x48+var_48]
VSTR            S16, [SP,#0x48+var_44]
VMUL.F32        S0, S1, S0
ADD             R0, R4, #0x18
VSTR            S0, [SP,#0x48+var_40]
BL              sub_14E984
MOV             R0, #0xFFFFFF00
ADD             R5, R9, #0x350
REV             R0, R0
STR             R0, [SP,#0x48+var_3C]
MOV             R0, R5
BL              sub_4E63E0
LDR             R0, [SP,#0x48+var_3C]
ADD             R1, SP, #0x48+var_3C
STR             R0, [R5,#4]
STR             R0, [R5]
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
STRB            R8, [R4]
STRB            R6, [R9,#0x419]
LDR             R0, [R7]
LDR             R3, =0xFFE683CC
CMP             R6, #0
VMOV.F32        S0, S16
LDRNE           R1, =0x300B1
LDREQ           R1, =0x300B0
MOV             R2, #0
SUB             R0, R0, R3
BL              sub_503414
ADD             SP, SP, #0x14
VPOP            {D8-D10}
POP             {R4-R9,PC}
LDR             R0, [R6]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x2700
LDR             R0, [R0]
BL              sub_5C97F0
CMP             R0, #0
STRBNE          R4, [R5,#0x418]
STRBNE          R8, [R5,#8]
ADD             SP, SP, #0x14
VPOP            {D8-D10}
POP             {R4-R9,PC}
ADD             R1, R4, #0x36C
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_2229A4
MOV             R1, #3
STRB            R1, [R4]
LDRB            R0, [R0,#0xD]
CMP             R0, #0
LDRNE           R0, [R4,#0x14]
LDREQ           R0, [R4,#0xC]
STR             R0, [R4,#0x3B8]
VSTR            S16, [R4,#0x3B4]
ADD             SP, SP, #0x14
VPOP            {D8-D10}
POP             {R4-R9,PC}
ADD             R1, R4, #0x3B4
VLDM            R1, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_2229A4
LDRB            R0, [R0,#0xC]
CMP             R0, #0
BEQ             loc_2229A4
MOV             R0, #4
STRB            R0, [R4]
MOV             R0, #0xFF
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x48+var_48]
LDR             R0, [R7]
VLDR            S0, [R4,#0x10]
ADD             R0, R0, #0x19C000
ADD             R0, R0, #0x1F40
BL              sub_4E665C
MOV             R0, #0xFF
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x48+var_48]
LDR             R0, =0x19DF78
LDR             R2, [R7]
VLDR            S0, [R4,#0x10]
ADD             R0, R0, R2; loc_19DF78
BL              sub_4E665C
LDRB            R0, [R5,#0xC]
CMP             R0, #5
BNE             loc_2229A4
LDR             R4, [R6]
LDR             R0, [R4,#0x20]
CMP             R0, #0
BEQ             loc_222AB4
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
MOV             R0, #0
STR             R0, [R4,#0x20]
ADD             SP, SP, #0x14
VPOP            {D8-D10}
POP             {R4-R9,PC}
DCD off_6CDA80
DCFS 0.0
DCD off_6CE970
DCD 0x126FC
DCD 0x126EC
DCD 0x126F0
DCD 0x126E8
DCD 0x126F4
DCD 0x1390C
DCD 0x300B1
DCD 0x300B0
DCD 0xFFE683CC
DCD 0x19DF78
LDR             R0, [R7]
ADD             R0, R0, #0x180000
ADD             R0, R0, #0x1DC00
ADD             R1, R0, #0x3A0
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_2229A4
ADD             R0, R0, #0x368
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #5
STRBGE          R0, [R4]
BLT             loc_2229A4
B               loc_222A98
