MOV             R3, R0
ADD             R0, R1, #0x400
ADD             R0, R0, #0x224
PUSH            {R4,R5}
LDRB            R12, [R3,#0x110]
MOV             R4, #0
VLDM            R0, {S3-S4}
ADD             R0, R1, #0x108
CMP             R12, #0
VLDM            R0, {S1-S2}
MOV             R2, R4
VADD.F32        S3, S1, S3
VADD.F32        S5, S1, S4
BLE             loc_21E1F4
ADD             R0, R3, R2,LSL#2
LDR             R0, [R0,#0x10]
LDRB            R5, [R0,#0xDE]
TST             R5, #1
CMPNE           R1, R0
BEQ             loc_21E1E8
ADD             R5, R0, #0x400
VLDR            S1, [R0,#0x10C]
VLDR            S4, [R5,#0x234]
VADD.F32        S1, S1, S4
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BHI             loc_21E1E8
VLDR            S6, [R5,#0x228]
VLDR            S4, [R0,#0x108]
VADD.F32        S6, S4, S6
VCMPE.F32       S6, S3
VMRS            APSR_nzcv, FPSCR
BLE             loc_21E1E8
VLDR            S6, [R5,#0x224]
VADD.F32        S4, S4, S6
VCMPE.F32       S4, S5
VMRS            APSR_nzcv, FPSCR
VCMPECC.F32     S0, S1
VMRSCC          APSR_nzcv, FPSCR
VMOVCC.F32      S0, S1
MOVCC           R4, R0
ADD             R2, R2, #1
CMP             R12, R2
BGT             loc_21E17C
MOV             R0, R4
POP             {R4,R5}
BX              LR
