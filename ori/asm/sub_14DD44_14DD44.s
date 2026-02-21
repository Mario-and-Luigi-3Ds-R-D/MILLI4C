PUSH            {R4,LR}
MOV             R2, R0
VPUSH           {D8}
ADD             R3, R0, #0x3B8
LDRB            R0, [R0,#0x3B8]
SUB             SP, SP, #0x10
CMP             R0, #0
LDRNE           R0, [R2,#0x3AC]
CMPNE           R0, #0
BEQ             loc_14DE48
ADD             R1, R2, #0x1B0
LDRSB           R4, [R1,#5]
SUBS            R0, R4, #0
LDRSBLT         R12, [R1,#4]
BGE             loc_14DD90
ADD             R0, R0, R12
SXTB            R0, R0
CMP             R0, #0
BLT             loc_14DD80
LDRSB           R12, [R1,#4]
CMP             R12, R0
BGT             loc_14DDAC
SUB             R0, R0, R12
SXTB            R0, R0
CMP             R12, R0
BLE             loc_14DD9C
LDR             R1, [R1]
ADD             R0, R0, R0,LSL#1
ADD             R2, R2, #0x1B0
ADD             R12, R1, R0,LSL#2
SUB             R0, R4, #1
SXTB            R0, R0
CMP             R0, #0
LDRSBLT         R1, [R2,#4]
BGE             loc_14DDE0
ADD             R0, R0, R1
SXTB            R0, R0
CMP             R0, #0
BLT             loc_14DDD0
LDRSB           R1, [R2,#4]
CMP             R1, R0
BGT             loc_14DDFC
SUB             R0, R0, R1
SXTB            R0, R0
CMP             R1, R0
BLE             loc_14DDEC
LDR             R1, [R2]
ADD             R0, R0, R0,LSL#1
VLDR            S1, [R12]
ADD             R0, R1, R0,LSL#2
VLDR            S0, [R12,#8]
VLDR            S2, [R0]
VLDR            S3, [R0,#8]
ADD             R1, SP, #0x20+var_1C
VSUB.F32        S2, S1, S2
VSUB.F32        S1, S0, S3
VLDR            S0, =0.0
VSTR            S2, [SP,#0x20+var_20]
VMUL.F32        S2, S2, S2
VSTM            R1, {S0-S1}
VMLA.F32        S2, S0, S0
VMLA.F32        S2, S1, S1
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_14DE58
ADD             SP, SP, #0x10
MOV             R0, #0xFFFFFFFF
VPOP            {D8}
POP             {R4,PC}
LDRB            R4, [R3]
VLDR            S16, [R3,#0x24]
MOV             R0, SP
BL              sub_47ECF4
VMOV.F32        S1, S16
MOV             R0, R4
BL              sub_4801C4
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,PC}
