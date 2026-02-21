PUSH            {R4-R9,LR}
MOV             R6, R0
ADD             R0, R1, #0x108
ADD             R5, R1, #0x400
MOV             R4, R1
VPUSH           {D8-D11}
SUB             SP, SP, #0xAC
MOV             R7, R2
VLDR            S2, [R5,#0x234]
VLDR            S3, [R5,#0x224]
VLDR            S16, =68.0
VLDM            R0, {S0-S1}
ADD             R0, SP, #0xE8+var_D8
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S2
VSTM            R0, {S0-S1}
VLDR            S1, [R5,#0x228]
VLDR            S0, [R1,#0x108]
LDR             R0, [R1,#0x10C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xE8+var_B0]
STR             R0, [SP,#0xE8+var_AC]
LDR             R0, [R6,#8]
VMOV.F32        S0, S16
LDRSH           R0, [R0]
SUB             R0, R0, #0x27 ; '''
CMP             R0, #0xB
BHI             loc_1ADC38
ADD             R0, R6, #0x3800
ADD             R2, SP, #0xE8+var_B0
VLDR            S1, [R0,#0x220]
VLDR            S2, [R0,#0x21C]
ADD             R1, SP, #0xE8+var_D8
VADD.F32        S1, S1, S0
VSTR            S2, [SP,#0xE8+var_E8]
MOV             R0, SP
VSTR            S1, [SP,#0xE8+var_E4]
BL              sub_45A034
CMP             R0, #0
BNE             loc_1ADF18
B               loc_1ADC6C
LDR             R0, [R6,#4]
ADD             R2, SP, #0xE8+var_B0
ADD             R1, SP, #0xE8+var_D8
VLDR            S1, [R0,#0x10C]
LDR             R0, [R0,#0x108]
VADD.F32        S1, S1, S0
STR             R0, [SP,#0xE8+var_E8]
MOV             R0, SP
VSTR            S1, [SP,#0xE8+var_E4]
BL              sub_45A034
CMP             R0, #0
NOP
BNE             loc_1ADF18
LDR             R0, [R6,#4]
VMOV.F32        S0, S16
ADD             R2, SP, #0xE8+var_B0
ADD             R1, SP, #0xE8+var_D8
VLDR            S1, [R0,#0x10C]
LDR             R0, [R0,#0x108]
VADD.F32        S1, S1, S0
STR             R0, [SP,#0xE8+var_A8]
ADD             R0, SP, #0xE8+var_A8
VSTR            S1, [SP,#0xE8+var_A4]
BL              sub_45A034
CMP             R0, #0
NOP
BNE             loc_1ADF18
LDR             R0, [R6,#8]
LDRSH           R0, [R0]
SUB             R0, R0, #0x11
CMP             R0, #0xB; switch 11 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1ADCB4; jumptable 001ADCB4 default case, cases 5-9
DCD loc_1ADCE8; jump table for switch statement
VLDR            S18, =12.0; jumptable 001ADCB4 cases 0-4,10
ADD             R1, SP, #0xE8+var_BC
ADD             R2, SP, #0xE8+var_D0
ADD             R9, SP, #0xE8+var_C8
ADD             R8, SP, #0xE8+var_78
MOV             R0, R6
BL              sub_1B1B9C
MOV             R2, R8
MOV             R1, R9
MOV             R0, R6
BL              sub_1AD930
VLDR            S0, [SP,#0xE8+var_D0]
VLDR            S1, =50.0
ADD             R0, SP, #0xE8+var_BC
CMP             R7, #0
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xE8+var_D0]
VSUB.F32        S0, S0, S18
VLDM            R0, {S16-S17}
VLDR            S1, [SP,#0xE8+var_78]
LDRH            R0, [R5,#0xB6]
MOV             R1, R0,LSL#30
MOV             R0, R0,LSL#29
MOV             R6, R1,LSR#31
VMLA.F32        S16, S0, S1
VLDR            S1, [SP,#0xE8+var_C8]
MOV             R8, R0,LSR#31
ADD             R0, R4, #0x150
VMLA.F32        S17, S0, S1
VLDM            R0, {S19-S23}
BEQ             loc_1ADD8C
LDR             R0, [R5,#0x224]
STR             R0, [R4,#0x150]
LDR             R0, [R5,#0x228]
STR             R0, [R4,#0x154]
LDR             R0, [R5,#0x22C]
STR             R0, [R4,#0x158]
LDR             R0, [R5,#0x230]
STR             R0, [R4,#0x15C]
LDR             R0, [R5,#0x234]
STR             R0, [R4,#0x160]
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x13800
LDR             R0, [R4]
ADD             R1, R1, #0x3A4
LDR             R2, [R0,#0x74]
MOV             R0, R4
BLX             R2
MOV             R0, #2
AND             R2, R0, R6,LSL#1
LDRH            R0, [R5,#0xB6]
MOV             R1, #4
AND             R3, R1, R8,LSL#2
BIC             R1, R0, #2
ORR             R1, R1, R2
BIC             R1, R1, #4
ORR             R1, R1, R3
CMP             R7, #0
STRH            R1, [R5,#0xB6]
ADDNE           R1, R4, #0x150
MOV             R0, R0,LSL#30
VSTMNE          R1, {S19-S23}
MOV             R0, R0,LSR#31
CMP             R0, #0
BNE             loc_1ADF38
ADD             R0, SP, #0xE8+var_A0
ADD             R3, SP, #0xE8+var_60
VSTM            R0, {S16-S17}
ADD             R2, SP, #0xE8+var_68
LDRD            R0, R1, [SP,#0xE8+var_BC]
STRD            R0, R1, [SP,#0xE8+var_98]
VLDR            S1, [R4,#0x10C]
VLDR            S2, [R5,#0x234]
VLDR            S0, [R4,#0x108]
VLDR            S3, [R5,#0x224]
VADD.F32        S1, S1, S2
ADD             R0, SP, #0xE8+var_90
VADD.F32        S0, S0, S3
ADD             R1, SP, #0xE8+var_70
VSTM            R0, {S0-S1}
ADD             R0, SP, #0xE8+var_88
VLDR            S1, [R4,#0x10C]
VLDR            S2, [R5,#0x234]
VLDR            S0, [R4,#0x108]
VLDR            S3, [R5,#0x228]
VADD.F32        S1, S1, S2
VADD.F32        S0, S0, S3
VSTM            R0, {S0-S1}
VLDR            S0, [R4,#0x108]
VLDR            S1, [R5,#0x224]
LDR             R0, [R4,#0x10C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xE8+var_80]
STR             R0, [SP,#0xE8+var_7C]
VLDR            S1, [R5,#0x228]
VLDR            S0, [R4,#0x108]
LDR             R0, [R4,#0x10C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xE8+var_70]
STR             R0, [SP,#0xE8+var_6C]
ADD             R0, SP, #0xE8+var_80
STMEA           SP, {R0-R3}
VMOV.F32        S0, S18
ADD             R3, SP, #0xE8+var_88
ADD             R2, SP, #0xE8+var_90
ADD             R1, SP, #0xE8+var_98
ADD             R0, SP, #0xE8+var_A0
BL              sub_45A300
CMP             R0, #0
NOP
BNE             loc_1ADF18
B               loc_1ADF38
LDR             R0, [R6,#4]; jumptable 001ADCB4 default case, cases 5-9
VLDR            S1, =12.0
VLDR            S5, =50.0
ADD             R0, R0, #0x23000
ADD             R0, R0, #0x4E0
VLDR            S4, [SP,#0xE8+var_B0]
VLDR            S2, [R0,#0x28]
VLDR            S0, [R0,#0x2C]
VSUB.F32        S3, S2, S1
VADD.F32        S1, S2, S1
VADD.F32        S2, S0, S5
VCMPE.F32       S4, S3
VMRS            APSR_nzcv, FPSCR
BLT             loc_1ADF38
VLDR            S3, [SP,#0xE8+var_D8]
VCMPE.F32       S3, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_1ADF38
VLDR            S1, [SP,#0xE8+var_D4]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_1ADF38
VLDR            S0, [SP,#0xE8+var_AC]
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
BHI             loc_1ADF38
ADD             SP, SP, #0xAC
MOV             R0, #1
VPOP            {D8-D11}
POP             {R4-R9,PC}
DCFS 68.0
DCFS 12.0
DCFS 50.0
DCD off_6D1648
ADD             SP, SP, #0xAC
MOV             R0, #0
VPOP            {D8-D11}
POP             {R4-R9,PC}
