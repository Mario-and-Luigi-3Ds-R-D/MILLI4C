NOP
VMOV.F32        S7, S0
VMOV.F32        S0, S2
PUSH            {R4,R5}
LDRB            R2, [R0,#2]
ANDS            R12, R2, #1
BEQ             loc_29AEFC
AND             R1, R2, #2
MOVS            R4, R1,LSR#1
BNE             loc_29AEFC
LDR             R3, [R0,#4]
VLDR            S4, =0.0
LDRSH           R1, [R0]
VLDR            S3, [R3,#0x10]
VMOV.F32        S6, S3
VCMPE.F32       S3, S4
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S2, S1
VSUBCS.F32      S0, S2, S0
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
BHI             loc_29AEE8
CMP             R1, #0
BLE             loc_29AEC8
SUBS            R1, R1, #1
BEQ             loc_29AF04
VMOV.F32        S5, S1
AND             R5, R2, #4
MOVS            R5, R5,LSR#2
VNEGNE.F32      S3, S3
VADD.F32        S0, S0, S5
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
BLS             loc_29AEB8
VCMPE.F32       S3, S4
VSTR            S3, [R3,#0x10]
STRH            R1, [R0]
VMRS            APSR_nzcv, FPSCR
VSUBCS.F32      S0, S1, S0
POP             {R4,R5}
BX              LR
CMP             R4, #0
BNE             loc_29AF4C
CMP             R12, #0
VMOVNE.F32      S2, S6
BEQ             loc_29AF4C
VCMPE.F32       S2, S4
VMRS            APSR_nzcv, FPSCR
TST             R2, #1
VMOVCC.F32      S1, S7
VMOV.F32        S0, S1
BEQ             loc_29AF38
TST             R2, #2
VSTREQ          S6, [R0,#8]
BIC             R1, R2, #1
STRB            R1, [R0,#2]
VSTR            S4, [R3,#0x10]
POP             {R4,R5}
BX              LR
VLDR            S2, [R0,#8]
B               loc_29AF18
