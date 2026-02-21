PUSH            {R4-R11,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x7C
ADD             R1, SP, #0xA8+var_60
ADD             R2, SP, #0xA8+var_6C
ADD             R6, SP, #0xA8+var_64
ADD             R5, SP, #0xA8+var_78
BL              sub_1B1B9C
MOV             R2, R5
MOV             R1, R6
MOV             R0, R4
BL              sub_1AD930
VLDR            S0, [SP,#0xA8+var_6C]
VLDR            S1, =50.0
VLDR            S8, =24.0
ADD             R1, SP, #0xA8+var_60
VADD.F32        S4, S0, S1
VLDR            S7, =-24.0
VLDR            S2, =0.5
MOV             R5, #0
VLDR            S16, =100000.0
MOV             R6, R5
ADD             R9, SP, #0xA8+var_98
ADD             R10, SP, #0xA8+var_90
ADD             R8, SP, #0xA8+var_88
VSTR            S4, [SP,#0xA8+var_6C]
VLDR            S5, [SP,#0xA8+var_78]
VLDR            S6, [SP,#0xA8+var_64]
ADD             R7, SP, #0xA8+var_80
VMUL.F32        S10, S5, S8
VMUL.F32        S3, S4, S5
VMUL.F32        S8, S6, S8
VLDM            R1, {S0-S1}
VMUL.F32        S5, S5, S7
VMUL.F32        S4, S4, S6
VMUL.F32        S9, S6, S7
VMOV.F32        S11, S0
ADD             R1, SP, #0xA8+var_90
VMOV.F32        S7, S3
VMLA.F32        S3, S8, S2
VMLA.F32        S11, S8, S2
VMOV.F32        S8, S1
VMOV.F32        S6, S4
VMLA.F32        S4, S5, S2
VMLA.F32        S7, S9, S2
VMLA.F32        S8, S5, S2
VMOV.F32        S5, S0
VMLA.F32        S6, S10, S2
VMLA.F32        S5, S9, S2
VMOV.F32        S9, S1
VADD.F32        S6, S6, S1
VADD.F32        S1, S4, S1
VMLA.F32        S9, S10, S2
VADD.F32        S2, S7, S0
VADD.F32        S0, S3, S0
VSTR            S2, [SP,#0xA8+var_98]
VSTR            S6, [SP,#0xA8+var_94]
VSTR            S11, [SP,#0xA8+var_88]
VSTR            S8, [SP,#0xA8+var_84]
VSTR            S5, [SP,#0xA8+var_80]
VSTR            S9, [SP,#0xA8+var_7C]
VSTM            R1, {S0-S1}
LDR             R0, [R4,#4]
LDR             R4, [R0,#0x610]
LDR             R0, [R4]
TST             R0, #2
BNE             loc_1B14A0
CMP             R5, #0
MOVEQ           R5, R4
MOV             R6, R4
LDR             R0, [R4,#8]
TST             R0, #0x400
BNE             loc_1B15C0
TST             R0, #1
BEQ             loc_1B15C0
TST             R0, #0x800
VMOVNE.F32      S0, S16
VLDR            S1, [R4,#0xC]
VLDREQ          S0, [R4,#0x14]
VSTR            S1, [SP,#0xA8+var_50]
ADD             R3, SP, #0xA8+var_40
VSTR            S0, [SP,#0xA8+var_4C]
LDR             R1, [R4,#8]
LDR             R0, [R4,#0x2C]
ADD             R2, SP, #0xA8+var_38
TST             R1, #0x800
VMOVNE.F32      S0, S16
VLDREQ          S0, [R4,#0x34]
STR             R0, [SP,#0xA8+var_48]
VSTR            S0, [SP,#0xA8+var_44]
LDRD            R0, R1, [R4,#0xC]
STRD            R0, R1, [SP,#0xA8+var_40]
LDRD            R0, R1, [R4,#0x2C]
STR             R7, [SP,#0xA8+var_9C]
STR             R8, [SP,#0xA8+var_A0]
STRD            R0, R1, [SP,#0xA8+var_38]
ADD             R1, SP, #0xA8+var_48
ADD             R0, SP, #0xA8+var_50
STMEA           SP, {R9,R10}
BL              sub_459B04
CMP             R0, #0
NOP
BNE             loc_1B16D4
LDR             R0, [R4]
TST             R0, #1
BEQ             loc_1B15C0
VLDR            S1, [R5,#0x78]
VLDR            S2, [SP,#0xA8+var_98]
VLDR            S0, [SP,#0xA8+var_90]
VLDR            S3, [R6,#0x7C]
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
VCMPECS.F32     S3, S0
VMRSCS          APSR_nzcv, FPSCR
BCC             loc_1B16D4
LDR             R11, =off_6D1648
MOV             R4, #2
LDR             R0, [R11]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
LDRB            R0, [R0,#0x110]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
ADD             R6, R1, R0
CMP             R6, #2
BLE             loc_1B170C
LDR             R0, [R11]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
CMP             R1, R4
BLE             loc_1B15C8
LDR             R0, [R0,#4]
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x184]
B               loc_1B15E0
ADD             R4, R4, #0x88
B               loc_1B1488
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R2, [R1,#0x28D]
SUB             R1, R4, R2
ADD             R0, R0, R1,LSL#2
LDR             R5, [R0,#0x10]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #4
BLS             loc_1B16FC
LDRB            R0, [R5,#0xDE]
TST             R0, #1
LDRBNE          R0, [R5,#0x648]
CMPNE           R0, #0
BEQ             loc_1B16FC
LDR             R0, [R5,#0x648]
TST             R0, #1
BEQ             loc_1B16FC
LDR             R0, [R5,#0x640]
TST             R0, #7
BEQ             loc_1B16FC
TST             R0, #3
BNE             loc_1B1634
MOVS            R0, R0,LSL#5
BMI             loc_1B16FC
ADD             R0, R5, #0x108
ADD             R1, SP, #0xA8+var_50
VLDM            R0, {S0-S1}
ADD             R0, R5, #0x400
ADD             R3, SP, #0xA8+var_40
VLDR            S2, [R0,#0x234]
VLDR            S3, [R0,#0x224]
ADD             R2, SP, #0xA8+var_38
VADD.F32        S1, S1, S2
VADD.F32        S0, S0, S3
VSTM            R1, {S0-S1}
ADD             R1, R5, #0x108
VLDR            S2, [R0,#0x234]
VLDR            S3, [R0,#0x228]
VLDM            R1, {S0-S1}
ADD             R1, SP, #0xA8+var_48
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S2
VSTM            R1, {S0-S1}
ADD             R1, R5, #0x108
VLDR            S2, [R0,#0x224]
VLDM            R1, {S0-S1}
ADD             R1, SP, #0xA8+var_40
VADD.F32        S0, S0, S2
VSTM            R1, {S0-S1}
ADD             R1, SP, #0xA8+var_48
VLDR            S1, [R0,#0x228]
VLDR            S0, [R5,#0x108]
LDR             R0, [R5,#0x10C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xA8+var_38]
STR             R0, [SP,#0xA8+var_34]
STR             R7, [SP,#0xA8+var_9C]
STR             R8, [SP,#0xA8+var_A0]
ADD             R0, SP, #0xA8+var_50
STMEA           SP, {R9,R10}
BL              sub_459B04
CMP             R0, #0
NOP
BEQ             loc_1B16FC
ADD             SP, SP, #0x7C ; '|'
MOV             R0, #1
VPOP            {D8}
POP             {R4-R11,PC}
DCFS 50.0
DCFS -24.0
DCFS 24.0
DCFS 0.5
DCFS 100000.0
DCD off_6D1648
ADD             R0, R4, #1
UXTH            R4, R0
CMP             R4, R6
BLT             loc_1B1588
ADD             SP, SP, #0x7C ; '|'
MOV             R0, #0
VPOP            {D8}
POP             {R4-R11,PC}
