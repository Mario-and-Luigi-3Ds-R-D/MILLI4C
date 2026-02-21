PUSH            {R4-R11,LR}
MOV             R7, R0
LDR             R0, =off_6CE970
VLDR            S1, =0.0039062
VPUSH           {D8-D9}
SUB             SP, SP, #0x34
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VLDR            S1, =256.0
VMOV.F32        S16, S0
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R0, S0
VMOV.F32        S0, S16
SXTH            R6, R0
MOV             R0, #0x1940
LDR             R4, [R0,R7]
ADD             R0, R4, #4
BL              sub_4E625C
LDRB            R0, [R4]
MOV             R11, #2
CMP             R0, #1
BEQ             loc_24FED0
CMP             R0, #2
BEQ             loc_24FF00
CMP             R0, #3
BNE             loc_24FF70
B               loc_24FF44
ADD             R0, R4, #0x2C ; ','
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_24FF70
STRB            R11, [R4]
VLDR            S0, [R4,#0x44]
ADD             R0, R4, #4
BL              sub_4E64EC
NOP
NOP
B               loc_24FF70
ADD             R0, R4, #0x2C ; ','
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_24FF70
MOV             R0, #3
STRB            R0, [R4]
MOV             R0, #0xFF
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x68+var_68]
VLDR            S0, [R4,#0x48]
ADD             R0, R4, #4
BL              sub_4E6784
NOP
NOP
B               loc_24FF70
ADD             R0, R4, #0x2C ; ','
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_24FF70
MOV             R0, #1
STRB            R0, [R4]
VLDR            S0, [R4,#0x40]
ADD             R1, R4, #0x3C ; '<'
ADD             R0, R4, #4
BL              sub_4E6784
MOV             R0, R7
BL              sub_14EA44
LDR             R0, [R7,#0xD88]
LDR             R5, [R7,#0xD84]
VLDR            S19, =0.0
VLDR            S18, =40.744
ADD             R10, R7, #0xC00
ADD             R9, R7, #0xC00
CMP             R0, R5
ADD             R10, R10, #0x184
ADD             R9, R9, #0x188
BEQ             loc_2500AC
LDR             R4, [R5]
MOV             R1, R6
ADD             R0, R4, #0x20 ; ' '
BL              sub_123CE8
ADD             R4, R4, #0x20 ; ' '
LDR             R0, [R4,#0x18]
CMP             R0, #0
BEQ             loc_24FFE4
MOV             R0, R4
BL              sub_4857C8
LDR             R2, [R4]
LDRB            R1, [R4,#0x1C]
LDR             R0, [R4,#0x18]
MOV             R2, R2,LSL#8
MOV             R2, R2,LSR#16
BL              sub_5D1DCC
STRB            R0, [R4,#0x1D]
LDR             R4, [R5]
LDRB            R0, [R4,#0xA0]
CMP             R0, #1
BNE             loc_25009C
VMOV.F32        S0, S16
ADD             R0, R4, #0xA4
BL              sub_5A2484
VMOV.F32        S0, S16
ADD             R0, R4, #0x14C
BL              sub_4E625C
LDR             R1, [R4,#0xA8]
MOV             R0, SP
STR             R1, [R4,#0x4C]
LDR             R1, [R4,#0xAC]
STR             R1, [R4,#0x5C]
LDR             R1, [R4,#0xB0]
STR             R1, [R4,#0x6C]
VLDR            S0, [R4,#0xA8]
VLDR            S2, [R4,#0xAC]
MOV             R1, #1
VMUL.F32        S1, S0, S0
VLDR            S0, [R4,#0xB0]
VMLA.F32        S1, S2, S2
VLDR            S2, [R4,#0x188]
VMLA.F32        S1, S0, S0
VSQRT.F32       S0, S1
VMOV.F32        S1, S16
VMUL.F32        S2, S2, S1
VLDR            S1, [R4,#0x184]
VMUL.F32        S1, S1, S18
VDIV.F32        S17, S2, S0
VMOV.F32        S0, S19
VMOV.F32        S2, S0
BL              sub_463BA8
ADD             R2, R4, #0x40 ; '@'
MOV             R1, SP
ADD             R0, R4, #0x70 ; 'p'
BL              sub_141F30
VLDR            S0, [R4,#0x184]
ADD             R1, R4, #0x174
VADD.F32        S0, S0, S17
VSTR            S0, [R4,#0x184]
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
STRBGE          R11, [R4,#0xA0]
LDR             R0, [R7,#0xD88]
ADD             R5, R5, #0xC
CMP             R0, R5
BNE             loc_24FFA0
ADD             R0, R7, #0x1800
ADD             R0, R0, #0xCC
ADD             R8, R7, #0x1000
ADD             R8, R8, #0x8D0
STR             R0, [SP,#0x68+var_38]
LDR             R1, [R8]
LDR             R5, [R0]
CMP             R1, R5
BEQ             loc_2501DC
LDR             R4, [R5]
MOV             R1, R6
ADD             R0, R4, #0x20 ; ' '
BL              sub_123CE8
ADD             R4, R4, #0x20 ; ' '
LDR             R0, [R4,#0x18]
CMP             R0, #0
BEQ             loc_250114
MOV             R0, R4
BL              sub_4857C8
LDR             R2, [R4]
LDRB            R1, [R4,#0x1C]
LDR             R0, [R4,#0x18]
MOV             R2, R2,LSL#8
MOV             R2, R2,LSR#16
BL              sub_5D1DCC
STRB            R0, [R4,#0x1D]
LDR             R4, [R5]
LDRB            R0, [R4,#0xA0]
CMP             R0, #1
BNE             loc_2501CC
VMOV.F32        S0, S16
ADD             R0, R4, #0xA4
BL              sub_5A2484
VMOV.F32        S0, S16
ADD             R0, R4, #0x14C
BL              sub_4E625C
LDR             R1, [R4,#0xA8]
MOV             R0, SP
STR             R1, [R4,#0x4C]
LDR             R1, [R4,#0xAC]
STR             R1, [R4,#0x5C]
LDR             R1, [R4,#0xB0]
STR             R1, [R4,#0x6C]
VLDR            S0, [R4,#0xA8]
VLDR            S2, [R4,#0xAC]
MOV             R1, #1
VMUL.F32        S1, S0, S0
VLDR            S0, [R4,#0xB0]
VMLA.F32        S1, S2, S2
VLDR            S2, [R4,#0x188]
VMLA.F32        S1, S0, S0
VSQRT.F32       S0, S1
VMOV.F32        S1, S16
VMUL.F32        S2, S2, S1
VLDR            S1, [R4,#0x184]
VMUL.F32        S1, S1, S18
VDIV.F32        S17, S2, S0
VMOV.F32        S0, S19
VMOV.F32        S2, S0
BL              sub_463BA8
ADD             R2, R4, #0x40 ; '@'
MOV             R1, SP
ADD             R0, R4, #0x70 ; 'p'
BL              sub_141F30
VLDR            S0, [R4,#0x184]
ADD             R1, R4, #0x174
VADD.F32        S0, S0, S17
VSTR            S0, [R4,#0x184]
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
STRBGE          R11, [R4,#0xA0]
LDR             R0, [R8]
ADD             R5, R5, #0xC
CMP             R0, R5
BNE             loc_2500D0
ADD             R4, R7, #0x400
LDR             R1, [R9]
LDR             R0, [R10]
ADD             R4, R4, #0x24 ; '$'
BL              sub_63C3F4
MOV             R1, R0
ADD             R0, R4, #0x960
B               loc_250210
DCFS 0.0039062
DCD off_6CE970
DCFS 256.0
DCFS 0.0
DCFS 40.744
LDR             R2, [R9]
BL              sub_6288B8
LDR             R0, [SP,#0x68+var_38]
ADD             R4, R7, #0xC00
LDR             R1, [R8]
ADD             R4, R4, #0x18C
LDR             R0, [R0]
BL              sub_63C3F4
MOV             R1, R0
LDR             R2, [R8]
ADD             R0, R4, #0xB40
BL              sub_6288B8
ADD             R7, R7, #0x1800
ADD             R7, R7, #0xD8
LDRB            R0, [R7]
CMP             R0, #1
BNE             loc_250264
LDR             R0, [R10]
LDR             R1, [R9]
CMP             R0, R1
STRBEQ          R11, [R7]
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8-D9}
POP             {R4-R11,PC}
