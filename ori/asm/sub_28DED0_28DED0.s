PUSH            {R4,LR}
SUB             SP, SP, #0x30
VLDM            R2, {S1-S6}
ADD             R12, SP, #0x38+var_30
ADD             R2, SP, #0x38+var_18
MOV             R4, R3
VSTM            R12, {S1-S6}
VSUB.F32        S1, S1, S0
VSTR            S1, [SP,#0x38+var_30]
VSUB.F32        S1, S2, S0
VSTR            S1, [SP,#0x38+var_2C]
VSUB.F32        S1, S3, S0
VSTR            S1, [SP,#0x38+var_28]
VADD.F32        S1, S4, S0
VSTR            S1, [SP,#0x38+var_24]
VADD.F32        S1, S5, S0
VADD.F32        S0, S6, S0
VSTR            S1, [SP,#0x38+var_20]
VSTR            S0, [SP,#0x38+var_1C]
STR             R2, [SP,#0x38+var_38]
ADD             R2, SP, #0x38+var_30
BL              sub_28C6B8
CMP             R0, #0
BEQ             loc_28DF54
VLDR            S0, [R4]
VLDR            S1, =0.0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_28DF54
VMOV            R0, S0
CMP             R0, #0x3F800000
MOVLE           R0, #1
BLE             loc_28DF58
MOV             R0, #0
ADD             SP, SP, #0x30 ; '0'
POP             {R4,PC}
