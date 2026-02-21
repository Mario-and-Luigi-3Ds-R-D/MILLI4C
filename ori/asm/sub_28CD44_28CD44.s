PUSH            {R4-R6}
SUB             SP, SP, #0xC
VLDR            S0, [R0]
VLDR            S1, [R1,#0xC]
LDR             R4, [SP,#0x18+arg_4]
LDR             R12, [SP,#0x18+arg_0]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R0,#0xC]
VLDR            S1, [R1]
MOVGT           R5, #1
MOVLE           R5, #0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R0,#4]
VLDR            S1, [R1,#0x10]
MOVCC           R6, #1
MOVCS           R6, #0
VCMPE.F32       S0, S1
ORR             R6, R6, R5
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R0,#0x10]
VLDR            S1, [R1,#4]
MOVGT           R5, #1
MOVLE           R5, #0
VCMPE.F32       S0, S1
ORR             R6, R6, R5
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R0,#8]
VLDR            S1, [R1,#0x14]
MOVCC           R5, #1
MOVCS           R5, #0
VCMPE.F32       S0, S1
ORR             R6, R6, R5
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R0,#0x14]
VLDR            S1, [R1,#8]
MOVGT           R5, #1
MOVLE           R5, #0
VCMPE.F32       S0, S1
ORR             R6, R6, R5
VMRS            APSR_nzcv, FPSCR
VLDR            S0, =0.0
MOVCC           R5, #1
MOVCS           R5, #0
ORR             R5, R5, R6
TEQ             R5, #1
BEQ             loc_28CE1C
VSTR            S0, [R4]
VSTR            S0, [R12]
ADD             SP, SP, #0xC
MOV             R0, #1
POP             {R4-R6}
BX              LR
VLDM            R3!, {S3}
ADD             R5, SP, #0x18+var_14
VLDM            R2!, {S6}
VLDM            R3, {S1-S2}
MOV             R3, SP
VSUB.F32        S3, S3, S6
VLDM            R2, {S4-S5}
MOV             R2, #0
VSUB.F32        S1, S1, S4
VSUB.F32        S2, S2, S5
VLDR            S4, =1.0
VSTR            S3, [SP,#0x18+var_18]
VSTM            R5, {S1-S2}
VSTR            S0, [R12]
VSTR            S4, [R4]
ADD             R5, R3, R2,LSL#2
VLDR            S1, [R5]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_28CEEC
ADD             R5, R1, R2,LSL#2
ADD             R6, R0, R2,LSL#2
VLDR            S2, [R5,#0xC]
VLDR            S3, [R6]
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BCC             loc_28CF84
VLDR            S2, [R6,#0xC]
VLDR            S3, [R5]
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BCS             loc_28CEB8
VSUB.F32        S4, S2, S3
VLDR            S2, [R12]
VDIV.F32        S3, S4, S1
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S2, S3
VSTR            S2, [R12]
VLDR            S3, [R5,#0xC]
VLDR            S2, [R6]
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
BLE             loc_28CF70
VSUB.F32        S4, S2, S3
VLDR            S2, [R4]
VDIV.F32        S3, S4, S1
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
BGT             loc_28CF6C
VMOV.F32        S2, S3
B               loc_28CF6C
NOP
BLE             loc_28CF70
ADD             R6, R1, R2,LSL#2
ADD             R5, R0, R2,LSL#2
VLDR            S2, [R6]
VLDR            S3, [R5,#0xC]
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BGT             loc_28CF84
VLDR            S2, [R6,#0xC]
VLDR            S3, [R5]
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BCS             loc_28CF40
VSUB.F32        S4, S3, S2
VLDR            S3, [R12]
VDIV.F32        S2, S4, S1
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S2, S3
VSTR            S2, [R12]
VLDR            S2, [R5,#0xC]
VLDR            S3, [R6]
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BLE             loc_28CF70
VSUB.F32        S4, S2, S3
VLDR            S3, [R4]
VDIV.F32        S2, S4, S1
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BGT             loc_28CEE4
VSTR            S2, [R4]
VLDR            S2, [R12]
VLDR            S1, [R4]
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_28CF94
ADD             SP, SP, #0xC
MOV             R0, #0
POP             {R4-R6}
BX              LR
ADD             R2, R2, #1
CMP             R2, #3
BCC             loc_28CE58
ADD             SP, SP, #0xC
MOV             R0, #1
POP             {R4-R6}
BX              LR
