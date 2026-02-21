PUSH            {R4-R6,LR}
CMP             R1, #0
LDR             R6, =off_6D1648
VPUSH           {D8}
VLDR            S16, =0.0
LDR             R0, [R6]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R4, [R0,#4]
BEQ             loc_19B0EC
CMP             R1, #1
BEQ             loc_19B13C
CMP             R1, #2
BNE             loc_19B1FC
B               loc_19B19C
LDR             R0, [R4]
ADD             R5, R4, #0x400
VLDR            S17, [R5,#0xC4]
LDR             R1, [R0,#0x50]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0x1D8]
MOV             R0, R4
BLX             R1
VLDR            S0, =2.0
VSTR            S0, [R5,#0x70]
VSTR            S17, [R5,#0xC4]
LDR             R0, [R6]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0xA8
LDR             R1, [R0]
BIC             R1, R1, #2
B               loc_19B194
LDR             R0, [R4]
VLDR            S0, =11.0
VMOV.F32        S1, S16
VLDR            S3, =-11.0
LDR             R1, [R0,#0x54]
VMOV.F32        S2, S0
MOV             R0, R4
BLX             R1
VLDR            S0, =30.5
ADD             R0, R4, #0x400
VLDR            S1, =6.8
VSTR            S0, [R0,#0xD4]
VLDR            S2, =4.0
VSTR            S1, [R0,#0xDC]
VSTR            S16, [R0,#0xE4]
VSTR            S2, [R0,#0x70]
LDR             R0, [R6]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0xA8
LDR             R1, [R0]
ORR             R1, R1, #2
STR             R1, [R0]
B               loc_19B1FC
LDR             R0, [R4]
VLDR            S0, =2.75
VMOV.F32        S1, S16
VLDR            S3, =-2.75
LDR             R1, [R0,#0x54]
VMOV.F32        S2, S0
MOV             R0, R4
BLX             R1
VLDR            S0, =6.5
ADD             R0, R4, #0x400
VLDR            S1, =0.2
VLDR            S2, =-3.0
VSTR            S0, [R0,#0xD4]
VLDR            S3, =1.0
VSTR            S1, [R0,#0xDC]
VSTR            S2, [R0,#0xE4]
VSTR            S3, [R0,#0x70]
LDR             R0, [R6]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0xA8
LDR             R1, [R0]
ORR             R1, R1, #2
STR             R1, [R0]
LDR             R0, [R4,#0x4EC]
TST             R0, #1
ADD             R0, R4, #0x400
VSTREQ          S16, [R0,#0xC4]
BEQ             loc_19B2E0
VLDR            S0, [R0,#0xC4]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_19B274
VLDR            S2, [R0,#0xC0]
VCMPE.F32       S16, S2
VMRS            APSR_nzcv, FPSCR
BHI             loc_19B274
VLDR            S1, [R4,#0x10C]
VLDR            S0, [R0,#0xD4]
VLDR            S3, [R0,#0xDC]
VADD.F32        S2, S2, S0
VSUB.F32        S0, S0, S3
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_19B25C
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BHI             loc_19B23C
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VSTRGT          S0, [R0,#0xC4]
BGT             loc_19B2E0
VSTR            S16, [R0,#0xC4]
B               loc_19B2E0
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_19B26C
VNEG.F32        S0, S0
VMOV.F32        S17, S16
VMOV.F32        S1, S16
VLDR            S2, [R0,#0xC8]
VADD.F32        S17, S17, S0
VSUB.F32        S0, S0, S2
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGT             loc_19B290
VLDR            S2, [R0,#0xDC]
VMOV.F32        S0, S2
VADD.F32        S16, S16, S0
VADD.F32        S0, S0, S2
VCMPE.F32       S16, S17
VMRS            APSR_nzcv, FPSCR
BCC             loc_19B2AC
VLDR            S2, [R0,#0xE4]
VNEG.F32        S0, S0
VCMPE.F32       S2, S1
VSTR            S0, [R0,#0xC4]
VMRS            APSR_nzcv, FPSCR
VCMPECC.F32     S0, S2
VMRSCC          APSR_nzcv, FPSCR
VSTRCC          S2, [R0,#0xC4]
LDR             R2, [R0,#0x7C]
STR             R2, [R0,#0x78]
LDR             R3, [R0,#0xDC]
STR             R3, [R0,#0xC8]
LDR             R3, [R0,#0xE4]
STR             R3, [R0,#0xCC]
STR             R2, [R4,#0x828]
STR             R2, [R4,#0x82C]
VPOP            {D8}
POP             {R4-R6,PC}
