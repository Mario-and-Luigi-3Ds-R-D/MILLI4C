PUSH            {R4-R9,LR}
MOV             R5, R0
MOV             R4, R1
VPUSH           {D8-D13}
SUB             SP, SP, #0x6C
VLDR            S27, =10000.0
BL              sub_464100
LDR             R3, [R5,#4]
MOV             R1, R0
MOV             R2, SP
LDR             R0, [R3,#0x5BC]
LDR             R3, [R3,#0x5CC]
STMEA           SP, {R0,R3}
ADD             R0, SP, #0xB8+var_B0
BL              sub_4633DC
ADD             R2, SP, #0xB8+var_B0
MOV             R1, R4
MOV             R0, R2
BL              sub_4646D4
BL              sub_464100
LDR             R3, [R5,#4]
MOV             R1, R0
MOV             R2, SP
LDR             R0, [R3,#0x5C0]
LDR             R3, [R3,#0x5CC]
STMEA           SP, {R0,R3}
ADD             R0, SP, #0xB8+var_98
BL              sub_4633DC
ADD             R2, SP, #0xB8+var_98
MOV             R1, R4
MOV             R0, R2
BL              sub_4646D4
BL              sub_464100
MOV             R1, R0
LDR             R0, [R5,#4]
VLDR            S21, =0.0
MOV             R2, SP
LDR             R0, [R0,#0x5BC]
STR             R0, [SP,#0xB8+var_B8]
VSTR            S21, [SP,#0xB8+var_B4]
ADD             R0, SP, #0xB8+var_80
BL              sub_4633DC
ADD             R2, SP, #0xB8+var_80
MOV             R1, R4
MOV             R0, R2
BL              sub_4646D4
BL              sub_464100
MOV             R1, R0
LDR             R0, [R5,#4]
MOV             R2, SP
LDR             R0, [R0,#0x5C0]
STR             R0, [SP,#0xB8+var_B8]
VSTR            S21, [SP,#0xB8+var_B4]
ADD             R0, SP, #0xB8+var_68
BL              sub_4633DC
ADD             R2, SP, #0xB8+var_68
MOV             R1, R4
MOV             R0, R2
BL              sub_4646D4
LDR             R0, [R5,#4]
VLDR            S25, =1.0
VLDR            S24, =1.4062
VLDR            S23, =36.0
LDR             R4, [R0,#0x610]
VLDR            S22, =0.71111
VLDR            S26, =-1.0
ADD             R7, R5, #0x800
LDR             R0, [R5,#0xAC8]
CMP             R0, #0
BEQ             loc_23E138
CMP             R0, R4
BEQ             loc_23E440
LDRB            R1, [R5,#0xAC0]
CMP             R1, #0
BEQ             loc_23E0E0
CMP             R1, #1
BEQ             loc_23E10C
B               loc_23E1BC
VLDR            S0, [R0,#0xC]
VLDR            S1, [R4,#0xC]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_23E1BC
VLDR            S0, [R4,#0x14]
VLDR            S1, [R0,#0x14]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_23E1BC
B               loc_23E440
VLDR            S0, [R0,#0x2C]
VLDR            S1, [R4,#0x2C]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_23E1BC
VLDR            S0, [R4,#0x34]
VLDR            S1, [R0,#0x34]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLS             loc_23E440
B               loc_23E1BC
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x608]
CMP             R0, #0
BEQ             loc_23E1BC
CMP             R0, R4
BEQ             loc_23E440
LDRB            R1, [R5,#0xAC0]
CMP             R1, #0
BEQ             loc_23E168
CMP             R1, #1
BEQ             loc_23E194
B               loc_23E1BC
VLDR            S0, [R0,#0xC]
VLDR            S1, [R4,#0xC]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_23E1BC
VLDR            S0, [R4,#0x14]
VLDR            S1, [R0,#0x14]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_23E1BC
B               loc_23E440
VLDR            S0, [R0,#0x2C]
VLDR            S1, [R4,#0x2C]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_23E1BC
VLDR            S0, [R4,#0x34]
VLDR            S1, [R0,#0x34]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLS             loc_23E440
LDR             R0, [R4,#8]
TST             R0, #0x400
BNE             loc_23E3C8
TST             R0, #1
BEQ             loc_23E3C8
VLDR            S1, [R7,#0x298]
LDR             R0, [R5,#4]
VMOV.F32        S0, S1
VLDR            S2, [R0,#0x108]
VLDR            S18, [R0,#0x10C]
VCMPE.F32       S21, S0
VMRS            APSR_nzcv, FPSCR
VLDR            S20, [R7,#0x29C]
VADD.F32        S17, S2, S1
VNEGHI.F32      S0, S1
VADD.F32        S16, S0, S23
VMUL.F32        S0, S20, S22
BL              sub_464318
VMUL.F32        S19, S0, S16
VMUL.F32        S0, S20, S22
BL              sub_464380
VMUL.F32        S0, S0, S16
LDRB            R0, [R5,#0xAC0]
VLDR            S1, [R4,#0x14]
VLDR            S2, [R4,#0xC]
CMP             R0, #0
LDR             R0, [R4,#8]
VMULEQ.F32      S19, S19, S26
VLDR            S9, [R4,#0x2C]
VMOV.F32        S10, S2
VMULEQ.F32      S0, S0, S26
TST             R0, #0x800
LDR             R0, [R4,#8]
VMOVNE.F32      S3, S27
VMOVEQ.F32      S3, S21
TST             R0, #0x800
VMOVNE.F32      S4, S27
VMOVEQ.F32      S4, S21
VADD.F32        S5, S17, S19
VADD.F32        S3, S1, S3
VLDR            S1, [R4,#0x34]
VADD.F32        S8, S1, S4
VADD.F32        S4, S18, S0
VMOV.F32        S0, S2
VMOV.F32        S1, S9
VSUB.F32        S10, S5, S10
VMOV.F32        S11, S3
VSUB.F32        S1, S9, S0
VMOV.F32        S0, S3
VMOV.F32        S6, S8
VMOV.F32        S6, S2
VSUB.F32        S11, S4, S11
VSUB.F32        S0, S8, S0
VSUB.F32        S7, S17, S6
VMOV.F32        S6, S3
VSUB.F32        S6, S18, S6
VMUL.F32        S6, S1, S6
VMUL.F32        S1, S1, S11
VMLS.F32        S6, S7, S0
VMLS.F32        S1, S10, S0
VMUL.F32        S0, S6, S1
VCMPE.F32       S0, S21
VMRS            APSR_nzcv, FPSCR
BHI             loc_23E3C8
VMOV.F32        S0, S17
VMOV.F32        S6, S18
VMOV.F32        S7, S17
VMOV.F32        S10, S18
VSUB.F32        S1, S5, S0
VMOV.F32        S0, S18
VMOV.F32        S5, S17
VSUB.F32        S0, S4, S0
VMOV.F32        S4, S2
VSUB.F32        S4, S4, S5
VMOV.F32        S5, S3
VSUB.F32        S5, S5, S6
VMOV.F32        S6, S9
VSUB.F32        S6, S6, S7
VMOV.F32        S7, S8
VMUL.F32        S5, S1, S5
VSUB.F32        S7, S7, S10
VMLS.F32        S5, S4, S0
VMUL.F32        S1, S1, S7
VMLS.F32        S1, S6, S0
VMUL.F32        S0, S5, S1
VCMPE.F32       S0, S21
VMRS            APSR_nzcv, FPSCR
BHI             loc_23E3C8
VMOV.F32        S0, S2
VSUB.F32        S1, S9, S0
VMOV.F32        S0, S3
VSUB.F32        S0, S8, S0
VMUL.F32        S4, S1, S1
VMLA.F32        S4, S0, S0
VSQRT.F32       S5, S4
VDIV.F32        S4, S25, S5
VMUL.F32        S19, S0, S4
VMUL.F32        S20, S1, S4
VSUB.F32        S0, S18, S3
VSUB.F32        S1, S17, S2
VMUL.F32        S2, S16, S16
VMUL.F32        S0, S20, S0
VMLS.F32        S0, S1, S19
VMLS.F32        S2, S0, S0
VNEG.F32        S0, S0
VSQRT.F32       S1, S2
BL              sub_4645C0
VMUL.F32        S0, S0, S24
VMOV.F32        S1, S20
VSTR            S0, [R7,#0x29C]
LDRB            R0, [R5,#0xAC0]
CMP             R0, #0
VNEGEQ.F32      S0, S0
VSTREQ          S0, [R7,#0x29C]
VMOV.F32        S0, S19
BL              sub_4645C0
VLDR            S1, [R7,#0x29C]
VMLA.F32        S1, S0, S24
B               loc_23E3B4
DCFS 10000.0
DCFS 0.0
DCFS 1.0
DCFS 1.4062
DCFS 36.0
DCFS 0.71111
DCFS -1.0
VSTR            S1, [R7,#0x29C]
ADD             SP, SP, #0x6C ; 'l'
MOV             R0, #1
VPOP            {D8-D13}
POP             {R4-R9,PC}
LDR             R0, [R4]
TST             R0, #1
BEQ             loc_23E440
LDR             R8, =off_6D1648
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
MOV             R6, #2
LDR             R1, [R0,#4]
LDRB            R0, [R0,#0x110]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
ADD             R9, R1, R0
CMP             R9, #2
BLE             loc_23E694
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
CMP             R1, R6
BLE             loc_23E448
LDR             R0, [R0,#4]
ADD             R0, R0, R6,LSL#2
ADD             R0, R0, #0x14000
LDR             R4, [R0,#0x184]
B               loc_23E460
ADD             R4, R4, #0x88
B               loc_23E0B4
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R2, [R1,#0x28D]
SUB             R1, R6, R2
ADD             R0, R0, R1,LSL#2
LDR             R4, [R0,#0x10]
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #7; switch 7 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_23E474; jumptable 0023E474 default case, case 5
DCD loc_23E688; jump table for switch statement
LDR             R0, [R4]; jumptable 0023E474 default case, case 5
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
LDR             R0, [R5,#4]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDR             R0, [R5,#4]
LDRB            R1, [R4,#0xDC]
LDRB            R2, [R0,#0xDC]
CMP             R2, R1
BEQ             loc_23E688; jumptable 0023E474 cases 0-4,6
LDRB            R1, [R4,#0xDE]
TST             R1, #1
BEQ             loc_23E688; jumptable 0023E474 cases 0-4,6
TST             R1, #4
BNE             loc_23E688; jumptable 0023E474 cases 0-4,6
LDR             R1, [R0,#0x740]
CMP             R1, R4
BEQ             loc_23E688; jumptable 0023E474 cases 0-4,6
LDR             R1, [R4,#0x648]
TST             R1, #1
BEQ             loc_23E688; jumptable 0023E474 cases 0-4,6
VLDR            S2, [R7,#0x298]
VLDR            S1, [R0,#0x108]
VLDR            S18, [R0,#0x10C]
VMOV.F32        S0, S2
VADD.F32        S17, S1, S2
VCMPE.F32       S21, S0
VMRS            APSR_nzcv, FPSCR
VLDR            S20, [R7,#0x29C]
VNEGHI.F32      S0, S2
VADD.F32        S16, S0, S23
VMUL.F32        S0, S20, S22
BL              sub_464318
VMUL.F32        S19, S0, S16
VMUL.F32        S0, S20, S22
BL              sub_464380
VMUL.F32        S4, S0, S16
LDRB            R0, [R5,#0xAC0]
CMP             R0, #0
ADD             R0, R4, #0x400
ADD             R4, R4, #0x108
VLDR            S7, [R0,#0x234]
VLDR            S8, [R0,#0x224]
VLDR            S6, [R0,#0x228]
VMULEQ.F32      S4, S4, S26
VLDM            R4, {S0-S1}
VMULEQ.F32      S19, S19, S26
VMOV.F64        D1, D0
VADD.F32        S0, S8, S0
VADD.F32        S1, S7, S1
VADD.F32        S2, S6, S2
VADD.F32        S3, S7, S3
VADD.F32        S7, S18, S4
VADD.F32        S6, S17, S19
VSUB.F32        S11, S17, S0
VSUB.F32        S10, S18, S1
VSUB.F32        S4, S2, S0
VSUB.F32        S5, S3, S1
VSUB.F32        S9, S7, S1
VSUB.F32        S8, S6, S0
VMUL.F32        S10, S4, S10
VMUL.F32        S4, S4, S9
VMLS.F32        S10, S11, S5
VMLS.F32        S4, S8, S5
VMUL.F32        S4, S10, S4
VCMPE.F32       S4, S21
VMRS            APSR_nzcv, FPSCR
BHI             loc_23E688; jumptable 0023E474 cases 0-4,6
VMOV.F32        S4, S17
VMOV.F32        S5, S18
VMOV.F32        S8, S18
VMOV.F32        S9, S17
VMOV.F32        S10, S18
VSUB.F32        S4, S6, S4
VSUB.F32        S5, S7, S5
VMOV.F32        S6, S0
VMOV.F32        S7, S17
VSUB.F32        S6, S6, S7
VMOV.F32        S7, S1
VSUB.F32        S7, S7, S8
VMOV.F32        S8, S2
VSUB.F32        S8, S8, S9
VMOV.F32        S9, S3
VMUL.F32        S7, S4, S7
VSUB.F32        S9, S9, S10
VMLS.F32        S7, S6, S5
VMUL.F32        S4, S4, S9
VMLS.F32        S4, S8, S5
VMUL.F32        S4, S7, S4
VCMPE.F32       S4, S21
VMRS            APSR_nzcv, FPSCR
BHI             loc_23E688; jumptable 0023E474 cases 0-4,6
VMOV.F32        S4, S0
VSUB.F32        S4, S2, S4
VMOV.F32        S2, S1
VSUB.F32        S2, S3, S2
VMUL.F32        S3, S4, S4
VMLA.F32        S3, S2, S2
VSQRT.F32       S6, S3
VDIV.F32        S5, S25, S6
VMUL.F32        S3, S4, S5
VSUB.F32        S4, S17, S0
VSUB.F32        S0, S18, S1
VMUL.F32        S2, S2, S5
VMUL.F32        S5, S16, S16
VMUL.F32        S0, S3, S0
VMLS.F32        S0, S4, S2
VMLS.F32        S5, S0, S0
VNEG.F32        S0, S0
VSQRT.F32       S1, S5
BL              sub_4645C0
VMUL.F32        S0, S0, S24
VSTR            S0, [R7,#0x29C]
LDRB            R0, [R5,#0xAC0]
CMP             R0, #0
VNEGEQ.F32      S0, S0
MOV             R0, #1
VSTREQ          S0, [R7,#0x29C]
ADD             SP, SP, #0x6C ; 'l'
VPOP            {D8-D13}
POP             {R4-R9,PC}
ADD             R6, R6, #1; jumptable 0023E474 cases 0-4,6
CMP             R6, R9
BLT             loc_23E408
ADD             SP, SP, #0x6C ; 'l'
MOV             R0, #0
VPOP            {D8-D13}
POP             {R4-R9,PC}
