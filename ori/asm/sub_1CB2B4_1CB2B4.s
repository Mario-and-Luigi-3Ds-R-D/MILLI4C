PUSH            {R4-R6}
ADD             R12, R0, R2,LSL#2
VLDR            S0, =0.0
LDR             R4, [SP,#0xC+arg_0]
VSTR            S0, [R0]
SUB             R5, R2, #1
CMP             R5, #0
VSTR            S0, [R12,#-4]
BLE             loc_1CB318
VLDM            R3!, {S0}
AND             R6, R5, #0xFF
VLDR            S1, [R4]
ADD             R12, R1, #4
ADD             R5, R4, #4
VLDM            R3!, {S3}
SUB             R6, R6, #1
VLDM            R5!, {S2}
ANDS            R6, R6, #0xFF
VSUB.F32        S0, S3, S0
VSUB.F32        S1, S2, S1
VDIV.F32        S4, S0, S1
VMOV.F32        S0, S3
VMOV.F32        S1, S2
VSTM            R12!, {S4}
BNE             loc_1CB2EC
VLDR            S0, [R1,#8]
VLDR            S2, [R1,#4]
VLDR            S1, =2.0
SUB             R6, R2, #3
VSUB.F32        S0, S0, S2
CMP             R6, #0
VSTR            S0, [R0,#4]
VLDR            S0, [R4,#8]
VLDR            S2, [R4]
VSUB.F32        S0, S0, S2
VMUL.F32        S0, S0, S1
VSTR            S0, [R1,#4]
BLE             loc_1CB3BC
ADD             R3, R4, #8
ADD             R12, R1, #4
ADD             R5, R0, #4
AND             R6, R6, #0xFF
VLDR            S3, [R3]
VLDR            S5, [R3,#-4]
VLDR            S0, [R12,#8]
VLDR            S2, [R12,#4]
VSUB.F32        S5, S3, S5
VLDR            S4, [R12]
VSUB.F32        S2, S0, S2
VLDR            S3, [R5]
SUB             R6, R6, #1
ANDS            R6, R6, #0xFF
VDIV.F32        S0, S5, S4
VMLS.F32        S2, S3, S0
VSTR            S2, [R5,#4]
VLDR            S2, [R3,#-4]
ADD             R5, R5, #4
VLDM            R3, {S3-S4}
ADD             R3, R3, #4
VSUB.F32        S3, S3, S2
VSUB.F32        S4, S4, S2
VMUL.F32        S2, S4, S1
VMLS.F32        S2, S3, S0
VSTR            S2, [R12,#4]
ADD             R12, R12, #4
BNE             loc_1CB35C
SUB             R2, R2, #2
ANDS            R3, R2, #0xFF
BEQ             loc_1CB40C
ADD             R2, R4, R3,LSL#2
ADD             R0, R0, R3,LSL#2
ADD             R2, R2, #4
ADD             R1, R1, R3,LSL#2
VLDR            S3, [R2]
VLDR            S4, [R2,#-4]
VLDR            S2, [R1]
SUBS            R3, R3, #1
VSUB.F32        S3, S3, S4
VLDM            R0, {S0-S1}
SUB             R1, R1, #4
SUB             R2, R2, #4
VMLS.F32        S0, S3, S1
VDIV.F32        S1, S0, S2
VSTR            S1, [R0]
SUB             R0, R0, #4
BNE             loc_1CB3D8
POP             {R4-R6}
BX              LR
