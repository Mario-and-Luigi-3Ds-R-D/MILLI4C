PUSH            {R4-R6,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x110]
SUB             SP, SP, #0x100
CMP             R0, #0
BEQ             loc_21D9B0
MOV             R2, #0x100
ADD             R1, R4, #0x10
MOV             R0, SP
BL              sub_1103A4
LDRB            R0, [R4,#0x110]
MOV             R1, SP
SUBS            R0, R0, #1
BMI             loc_21D8E8
ADD             R12, R0, #1
CMP             R12, #1
MOV             R2, #0xFFFFFFFF
MOV             R0, #1
BLE             loc_21D8E8
ADD             R5, R1, R0,LSL#2
LDR             R3, [R1,R0,LSL#2]
LDR             R5, [R5,#-4]
VLDR            S0, [R3,#0x10C]
VLDR            S1, [R5,#0x10C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_21D8D4
SUB             R2, R0, #1
LDR             R5, [R1,R2,LSL#2]
STR             R5, [R1,R0,LSL#2]
STR             R3, [R1,R2,LSL#2]
ADD             R0, R0, #1
CMP             R0, R12
BLT             loc_21D8A4
SUBS            R0, R2, #0
BGE             loc_21D890
LDR             R0, [SP,#0x110+var_110]
MOV             R2, #0
STR             R0, [R4,#8]
LDR             R0, [SP,#0x110+var_110]
STR             R0, [R4,#0xC]
LDRB            R0, [R4,#0x110]
CMP             R0, #0
MOVGT           R5, #0
ADDGT           R3, R4, #0x400
BLE             loc_21D9B0
AND             R6, R2, #1
VMOV            S0, R6
LDR             R12, [R4,#0xC]
LDR             R0, [R1,R2,LSL#2]
STR             R0, [R12,#0xC]
VLDR            S1, [R4,#0xC]
VCVT.F32.U32    S2, S0
VSTR            S1, [R0,#0x10]
MOV             R12, R2,ASR#1
VMOV            S1, R12
STR             R5, [R0,#0xC]
STR             R0, [R4,#0xC]
VLDR            S0, [R3,#0x27C]
VLDR            S3, [R3,#0x278]
ADD             R12, R0, #0x800
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S0, S2
VLDR            S2, [R12,#0xF0]
VMLA.F32        S0, S3, S1
VCMP.F32        S2, S0
VMRS            APSR_nzcv, FPSCR
BEQ             loc_21D9A0
VMOV.F32        S2, S0
VSTR            S0, [R12,#0xF0]
VLDR            S1, [R0,#0x110]
LDR             R12, [R0,#0x10C]
VLDR            S0, [R0,#0x108]
LDR             R0, [R0,#0x7FC]
VADD.F32        S1, S1, S2
ADD             R0, R0, #0x4C ; 'L'
VSTR            S0, [R0,#0xC]
STR             R12, [R0,#0x1C]
VSTR            S1, [R0,#0x2C]
LDR             R12, [R0,#0x3C]
ORR             R12, R12, #0x800
STR             R12, [R0,#0x3C]
LDRB            R0, [R4,#0x110]
ADD             R2, R2, #1
CMP             R0, R2
BGT             loc_21D910
ADD             SP, SP, #0x100
POP             {R4-R6,PC}
