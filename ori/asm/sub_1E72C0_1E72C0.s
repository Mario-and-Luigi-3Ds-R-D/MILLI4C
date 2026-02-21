PUSH            {R3-R5,LR}
MOV             R4, R0
LDR             R0, [R0]
MOV             R5, R1
LDR             R1, [R0,#0x268]
MOV             R0, R4
BLX             R1
CMP             R0, #1
ADD             R1, R4, #0x400
BLE             loc_1E7310
LDR             R0, [R5,#0x34C]
CMP             R0, #0
BEQ             loc_1E7310
LDR             R2, [R0]
TST             R2, #0x3C
VLDRNE          S0, [R4,#0x10C]
VLDRNE          S1, [R0,#0x14]
BEQ             loc_1E7318
VSUB.F32        S0, S0, S1
POP             {R3-R5,PC}
VLDR            S0, [R1,#0xB8]
POP             {R3-R5,PC}
VLDR            S0, [R0,#0x14]
VLDR            S1, [R0,#0x24]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
VLDREQ          S2, [R0,#0x34]
VCMPEQ.F32      S1, S2
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_1E734C
VCMP.F32        S2, S0
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [R4,#0x10C]
VSUBEQ.F32      S0, S1, S0
BEQ             locret_1E730C
VLDR            S1, [R4,#0x108]
VLDR            S0, [R1,#0x1BC]
VLDR            S3, [R1,#0x1C0]
VLDR            S6, [R1,#0x1C4]
VLDR            S4, [R4,#0x110]
VLDR            S5, [R1,#0x1C8]
VADD.F32        S3, S1, S3
VADD.F32        S0, S1, S0
VADD.F32        S1, S4, S6
VADD.F32        S4, S4, S5
VLDR            S2, =0.5
MOV             R3, #0
MOV             R2, SP
MOV             R1, #1
VSUB.F32        S3, S3, S0
VSUB.F32        S4, S4, S1
VMLA.F32        S0, S3, S2
VMLA.F32        S1, S4, S2
BL              sub_5C8020
VLDR            S0, [R4,#0x10C]
VLDR            S1, [SP,#0x10+var_10]
B               loc_1E7308
