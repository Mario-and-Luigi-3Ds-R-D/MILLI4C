PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, [R0,#0x120]
SUB             SP, SP, #0xC
TST             R0, #0x10
BEQ             loc_2003B4
VLDR            S2, [R4,#0xC0]
VLDR            S0, [R4,#0xC8]
VLDR            S1, =0.0
VADD.F32        S2, S2, S0
VSTR            S2, [R4,#0xC0]
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_200340
BIC             R0, R0, #0x10
VSTR            S1, [R4,#0xC0]
STR             R0, [R4,#0x120]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
VLDR            S2, [R4,#0xD4]
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
BLE             loc_200338
VLDR            S2, [R4,#0xD0]
VCMPE.F32       S0, S1
VSUB.F32        S2, S0, S2
VMRS            APSR_nzcv, FPSCR
VSTR            S2, [R4,#0xC8]
BLE             loc_200394
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_200394
LDR             R0, [R4]
LDR             R1, [R0,#0x94]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#0x120]
BIC             R0, R0, #0x1C0
ORR             R0, R0, #0xC0
STR             R0, [R4,#0x120]
VLDR            S0, [R4,#0xC8]
VLDR            S1, [R4,#0xD4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S1
VSTR            S0, [R4,#0xC8]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
LDR             R0, [R4]
LDR             R1, [R0,#0x98]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             loc_200338
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #2
BEQ             loc_200408
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #6
BNE             loc_200338
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
LDR             R1, [R0]
LDR             R3, =0xF0001FFB
MOV             R2, SP
LDR             R12, [R1,#0x74]
ADD             R1, SP, #0x18+var_14
BLX             R12
LDR             R0, [R4,#0x120]
TST             R0, #0x10
BNE             loc_200338
LDR             R0, [SP,#0x18+var_18]
LDR             R1, =0x402
TST             R0, R1
BEQ             loc_200338
LDR             R0, [R5]
BL              sub_1E45C8
LDRH            R0, [R0,#0x42]
CMP             R0, #6
BNE             loc_200338
LDR             R0, [R4,#0x120]
ORR             R0, R0, #0x10
STR             R0, [R4,#0x120]
LDR             R0, [R4,#0xCC]
STR             R0, [R4,#0xC8]
LDR             R0, [R4]
LDR             R1, [R0,#0x8C]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0x78]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0x90]
MOV             R0, R4
BLX             R1
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
