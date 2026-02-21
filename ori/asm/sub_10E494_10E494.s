PUSH            {R4-R8,LR}
MOV             R4, R2
MOV             R8, R1
MOV             R2, R3
VPUSH           {D8}
SUB             SP, SP, #0x10
MOV             R5, R0
ADD             R3, R0, #0x4C ; 'L'
ADD             R1, R0, #0x50 ; 'P'
LDR             R0, [R0]
STMEA           SP, {R1,R3}
MOV             R3, R4
MOV             R1, R8
LDR             R0, [R0,#4]
BL              sub_11BA8C
LDR             R0, [R4]
LDR             R7, =sub_119768
SUB             R6, R0, #1
CMP             R6, #0
VLDRGE          S16, =0.0
BLT             loc_10E6A8
ADD             R0, R6, R6,LSL#1
LDRSH           R3, [R5,#6]
ADD             R4, R8, R0,LSL#1
LDRSH           R2, [R5,#4]
LDRSH           R0, [R4]
LDRSH           R1, [R5,#8]
BLX             R7; sub_119768
STRH            R0, [R4]
STRH            R0, [R5,#8]
LDRSH           R3, [R5,#6]
LDRSH           R2, [R5,#4]
LDRSH           R1, [R5,#0xA]
LDRSH           R0, [R4,#2]
BLX             R7; sub_119768
STRH            R0, [R4,#2]
STRH            R0, [R5,#0xA]
LDRSH           R3, [R5,#6]
LDRSH           R2, [R5,#4]
LDRSH           R1, [R5,#0xC]
LDRSH           R0, [R4,#4]
BLX             R7; sub_119768
STRH            R0, [R4,#4]
STRH            R0, [R5,#0xC]
LDRB            R0, [R5,#0x48]
CMP             R0, #0
BEQ             loc_10E580
LDRH            R1, [R4]
LDRH            R0, [R5,#0xE]
SUB             R0, R1, R0
STRH            R0, [R4]
LDRH            R1, [R4,#2]
LDRH            R0, [R5,#0x10]
SUB             R0, R1, R0
STRH            R0, [R4,#2]
LDRH            R1, [R4,#4]
LDRH            R0, [R5,#0x12]
SUB             R0, R1, R0
STRH            R0, [R4,#4]
LDRB            R0, [R5,#0x49]
CMP             R0, #0
BEQ             loc_10E6A0
VLDR            S0, [R5,#0x18]
VMOV            R0, S0
CMP             R0, #0x3F800000
VLDREQ          S0, [R5,#0x1C]
VCMPEQ.F32      S0, S16
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_10E630
VLDR            S0, [R5,#0x20]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VLDREQ          S0, [R5,#0x24]
VCMPEQ.F32      S0, S16
VMRSEQ          APSR_nzcv, FPSCR
VLDREQ          S0, [R5,#0x28]
VCMPEQ.F32      S0, S16
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_10E630
VLDR            S0, [R5,#0x2C]
VMOV            R0, S0
CMP             R0, #0x3F800000
VLDREQ          S0, [R5,#0x30]
VCMPEQ.F32      S0, S16
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_10E630
VLDR            S0, [R5,#0x34]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VLDREQ          S0, [R5,#0x38]
VCMPEQ.F32      S0, S16
VMRSEQ          APSR_nzcv, FPSCR
VLDREQ          S0, [R5,#0x3C]
VCMPEQ.F32      S0, S16
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_10E630
VLDR            S0, [R5,#0x40]
VMOV            R0, S0
CMP             R0, #0x3F800000
VLDREQ          S0, [R5,#0x44]
VCMPEQ.F32      S0, S16
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_10E6A0
LDRSH           R0, [R4]
LDRSH           R2, [R4,#4]
LDRSH           R1, [R4,#2]
VMOV            S2, R0
VMOV            S1, R2
VMOV            S0, R1
ADD             R3, SP, #0x30+var_2C
MOV             R2, SP
ADD             R1, R5, #0x18
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
MOV             R0, R2
VSTR            S2, [SP,#0x30+var_30]
VSTM            R3, {S0-S1}
BL              sub_1169FC
VLDR            S0, [SP,#0x30+var_30]
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [R4]
VLDR            S0, [SP,#0x30+var_2C]
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [R4,#2]
VLDR            S0, [SP,#0x30+var_28]
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [R4,#4]
SUBS            R6, R6, #1
BPL             loc_10E4E8
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R8,PC}
