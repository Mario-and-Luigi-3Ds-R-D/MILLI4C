PUSH            {R4-R11,LR}
MOV             R5, R0
ADD             R8, R0, #0x2600
ADD             R8, R8, #0x86
ADD             R4, R5, #0x2600
ADD             R4, R4, #0xA9
VPUSH           {D8-D12}
SUB             SP, SP, #0x14
MOV             R9, #0
ADD             R7, R5, #0x400
LDRB            R0, [R8]
CMP             R0, #2
LDRB            R0, [R4]
VLDREQ          S16, =27.0
VLDRNE          S16, =24.0
CMP             R0, #0
BEQ             loc_16FD84
SUB             R0, R0, #1
ANDS            R0, R0, #0xFF
STRB            R0, [R4]
BEQ             loc_16FD64
LDR             R0, [R7,#0xC4]
LDR             R1, =0x41100000
CMP             R0, R1
BGT             loc_16FD84
ADD             R6, R5, #0x2400
ADD             R6, R6, #0x2BC
STRB            R9, [R4]
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_16FD84
BL              sub_533330
STR             R9, [R6]
LDRB            R0, [R8]
VLDR            S19, =-0.015
CMP             R0, #2
LDRBEQ          R0, [R4]
CMPEQ           R0, #0
ADD             R0, R5, #0x2400
ADD             R0, R0, #0x2DC
VLDREQ          S19, =-0.0045
STR             R0, [SP,#0x60+var_60]
BL              sub_5F1964
VLDR            S24, =1.0
ADD             R10, R5, #0x2400
CMP             R0, #0
ADD             R10, R10, #0x2A8
ADD             R8, R5, #0x26C0
ADD             R6, R5, #0x2400
BEQ             loc_16FE20
LDRB            R0, [R8]
CMP             R0, #0
BNE             loc_16FE20
LDRB            R0, [R10]
CMP             R0, #0
LDRBEQ          R0, [R4]
CMPEQ           R0, #0
BNE             loc_16FE20
VMOV.F32        S0, S24
LDR             R0, [SP,#0x60+var_60]
BL              sub_5A176C
VSTR            S0, [R6,#0x298]
LDR             R0, [SP,#0x60+var_60]
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             loc_16FE20
ADD             R0, R5, #0x2400
ADD             R0, R0, #0x2B8
LDRB            R1, [R0]
CMP             R1, #0
STRBNE          R9, [R0]
ADD             R0, R5, #0x2000
ADD             R0, R0, #0x6A0
ADD             R9, R5, #0x2600
LDRB            R1, [R0]
ADD             R9, R9, #0xA1
CMP             R1, #0
SUBNE           R1, R1, #1
STRBNE          R1, [R0]
MOV             R0, #0
STRB            R0, [R9]
LDR             R0, [R5,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0x7C]
ADD             R1, SP, #0x60+var_58
BLX             R2
MOV             R2, #0
LDR             R0, =0xE015
MOV             R1, R2
BL              sub_116B34
VLDR            S22, =0.0
VLDR            S20, =0.71111
VCMP.F32        S0, S22
VMRS            APSR_nzcv, FPSCR
VLDR            S21, =360.0
BEQ             loc_170158
LDRB            R0, [R4]
CMP             R0, #0
BNE             loc_170158
LDRB            R0, [R10]
CMP             R0, #0
BNE             loc_170158
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x3EC
LDR             R4, [R0]
LDR             R0, [R4]
TST             R0, #1
LDREQ           R11, =0xC3340000
VLDREQ          S23, =0.000015259
BNE             loc_170158
LDR             R0, [R4]
TST             R0, #2
BNE             loc_17014C
LDR             R0, [R4,#4]
LDR             R0, [R0,#8]
TST             R0, #1
BEQ             loc_17014C
AND             R0, R0, #0x400
CMP             R0, #0
VLDRNE          S0, [R4,#0x18]
VCMPENE.F32     S22, S0
VMRSNE          APSR_nzcv, FPSCR
BGT             loc_17014C
VLDR            S1, [SP,#0x60+var_58]
VCMP.F32        S1, S22
VMRS            APSR_nzcv, FPSCR
VLDREQ          S0, [SP,#0x60+var_54]
VCMPEQ.F32      S0, S22
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_17014C
VLDR            S0, [SP,#0x60+var_54]
VNEG.F32        S0, S0
BL              sub_4643FC
ADD             R0, R0, #0x4000
UXTH            R0, R0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S23
VMUL.F32        S17, S0, S21
VMUL.F32        S25, S17, S20
VMOV.F32        S0, S25
BL              sub_464380
VMOV.F32        S18, S0
VMOV.F32        S0, S25
BL              sub_464318
VMUL.F32        S2, S18, S16
VMUL.F32        S3, S0, S16
VLDR            S1, [R5,#0x108]
VLDR            S0, [R5,#0x10C]
VLDR            S5, [R4,#8]
VLDR            S8, [R4,#8]
VLDR            S10, [R5,#0x108]
ADD             R0, R4, #0x18
VLDR            S7, [R4,#0xC]
VSUB.F32        S8, S10, S8
VADD.F32        S4, S2, S1
VADD.F32        S0, S3, S0
VLDR            S1, [R4,#0xC]
VLDR            S9, [R5,#0x10C]
VMOV.F32        S6, S22
VSUB.F32        S9, S9, S7
VSUB.F32        S4, S4, S5
VSUB.F32        S5, S0, S1
VLDM            R0, {S0-S1}
VMOV.F32        S10, S1
VMUL.F32        S1, S4, S1
VMUL.F32        S4, S8, S10
VMLS.F32        S1, S0, S5
VMLS.F32        S4, S0, S9
VMUL.F32        S0, S1, S4
VCMPE.F32       S6, S0
VMRS            APSR_nzcv, FPSCR
BLS             loc_17014C
ADD             R0, R4, #8
VLDM            R0, {S0-S1}
ADD             R0, R5, #0x108
VLDM            R0, {S4-S5}
ADD             R0, R4, #0x10
VSUB.F32        S0, S0, S4
VSUB.F32        S1, S1, S5
VLDM            R0, {S4-S5}
ADD             R0, R5, #0x108
VLDM            R0, {S7-S8}
VSUB.F32        S4, S4, S7
VMUL.F32        S0, S0, S3
VSUB.F32        S5, S5, S8
VMUL.F32        S3, S4, S3
VMLS.F32        S0, S2, S1
VMLS.F32        S3, S2, S5
VMUL.F32        S0, S0, S3
VCMPE.F32       S0, S6
VMRS            APSR_nzcv, FPSCR
BGE             loc_17014C
VNEG.F32        S1, S10
VLDR            S0, [R4,#0x18]
VMUL.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VMOV.F32        S4, S2
VMLA.F32        S4, S6, S6
VSQRT.F32       S3, S4
VCMP.F32        S3, S6
VMRS            APSR_nzcv, FPSCR
BEQ             loc_17014C
VMLA.F32        S2, S6, S6
VSQRT.F32       S3, S2
VDIV.F32        S2, S24, S3
VMUL.F32        S1, S1, S2
VMUL.F32        S0, S0, S2
VMOV.F32        S18, S1
VMOV.F32        S25, S0
BL              sub_4643FC
ADD             R0, R0, #0x4000
UXTH            R0, R0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S23
VMLA.F32        S17, S0, S21
VMOV            R1, S17
CMP             R1, R11
BLS             loc_170090
VADD.F32        S17, S17, S21
VMOV            R1, S17
CMP             R1, R11
BHI             loc_170080
LDR             R0, =0x43340000
VMOV            R1, S17
CMP             R1, R0
BLE             loc_1700B0
VSUB.F32        S17, S17, S21
VMOV            R1, S17
CMP             R1, R0
BGT             loc_1700A0
LDR             R0, =0xC1B00000
VMOV            R1, S17
CMP             R1, R0
BHI             loc_17014C
VMOV            R1, S17
ADD             R0, R0, #0x80000000
CMP             R1, R0
BGT             loc_17014C
VMOV.F32        S1, S18
VMOV.F32        S0, S25
MOV             R0, #1
STRB            R0, [R9]
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S1, =-180.0
UXTH            R0, R0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               loc_17013C
DCFS 27.0
DCFS 24.0
DCD 0x41100000
DCFS -0.015
DCFS -0.0045
DCFS 1.0
DCD 0xE015
DCFS 0.0
DCFS 0.71111
DCFS 360.0
DCD off_6D1648
DCFS 0.000015259
DCD 0xC3340000
DCD 0x43340000
DCD 0xC1B00000
DCFS -180.0
VMUL.F32        S0, S0, S23
VMLS.F32        S1, S0, S21
VSTR            S1, [R6,#0x2A4]
B               loc_170158
LDR             R0, [R4,#0x34]!
TST             R0, #1
BEQ             loc_16FEC8
MOV             R2, #0
LDR             R0, =0xE015
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S22
VLDR            S16, =-0.017453
ADD             R11, R5, #0x2600
ADD             R11, R11, #0xAA
VMRS            APSR_nzcv, FPSCR
LDRBNE          R0, [R9]
CMPNE           R0, #0
LDRB            R0, [R8]
BEQ             loc_170210
CMP             R0, #0
BNE             loc_170248
VSTR            S22, [R7,#0xC4]
LDR             R0, [R5]
LDR             R1, [R0,#0x220]
MOV             R0, R5
BLX             R1
MOV             R0, #0
STRB            R0, [R11]
LDR             R0, [R5]
MOV             R3, #0
MOV             R2, R3
MOV             R1, #2
LDR             R12, [R0,#0x34C]
MOV             R0, R5
BLX             R12
LDR             R0, [R5,#0x7FC]
MOV             R1, #1
STRH            R1, [R0,#0x16]
VLDR            S17, [R6,#0x2A4]
VSTR            S17, [R6,#0x29C]
VSTR            S17, [R6,#0x298]
LDR             R4, [SP,#0x60+var_60]
MOV             R0, R4
BL              sub_5A18EC
VSTR            S17, [R4,#0xC]
VSTR            S17, [R4,#4]
MOV             R0, #1
STRB            R0, [R8]
VLDR            S0, [R6,#0x298]
VMUL.F32        S0, S0, S16
VSTR            S0, [R5,#0xF8]
B               loc_170218
CMP             R0, #0
BEQ             loc_170248
LDRB            R0, [R9]
CMP             R0, #0
BNE             loc_170248
LDR             R0, [R5]
MOV             R3, #0
MOV             R2, R3
MOV             R1, R3
LDR             R12, [R0,#0x34C]
MOV             R0, R5
BLX             R12
MOV             R0, #0
STRB            R0, [R8]
LDRB            R0, [R10]
ADD             R9, R5, #0x2600
ADD             R9, R9, #0xAB
CMP             R0, #0
LDRBEQ          R0, [R8]
CMPEQ           R0, #0
BNE             loc_17042C
ADD             R4, R5, #0x2400
ADD             R4, R4, #0x2B4
LDRB            R0, [R4]
CMP             R0, #0
BEQ             loc_170310
ADD             R0, R5, #0x2000
ADD             R0, R0, #0x710
MOV             R8, R0
BL              sub_5F19B8
CMP             R0, #0
NOP
BEQ             loc_170310
VMOV.F32        S0, S24
MOV             R0, R8
BL              sub_5A2484
LDM             R0, {R1,R2}
ADD             R3, R5, #0x108
LDR             R0, [R0,#8]
STR             R0, [R5,#0x110]
MOV             R0, R8
STM             R3, {R1,R2}
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_170420
MOV             R2, #0
STRB            R2, [R4]
LDR             R1, [R5,#0x7FC]
MOV             R0, #1
STRH            R0, [R1,#0x16]
ADD             R0, R5, #0x2600
ADD             R0, R0, #0xC1
LDRB            R1, [R0]
CMP             R1, #0
BEQ             loc_170420
STRB            R2, [R0]
LDR             R0, =off_6D1648
LDR             R0, [R0]
BL              sub_1E45C8
LDRH            R1, [R0,#0x4A]
ORR             R1, R1, #4
STRH            R1, [R0,#0x4A]
B               loc_170420
LDR             R0, [R5,#0x4EC]
TST             R0, #1
BEQ             loc_170420
TST             R0, #4
BNE             loc_170420
LDRB            R0, [R9]
CMP             R0, #0
BEQ             loc_17036C
VLDR            S0, [R6,#0x29C]
VMUL.F32        S0, S0, S20
BL              sub_464380
VLDR            S2, [R5,#0x108]
VLDR            S1, [R7,#0xC4]
VMLA.F32        S2, S1, S0
VSTR            S2, [R5,#0x108]
VLDR            S0, [R6,#0x29C]
VMUL.F32        S0, S0, S20
BL              sub_464318
VLDR            S1, [R7,#0xC4]
VLDR            S2, [R5,#0x10C]
VMLA.F32        S2, S1, S0
VSTR            S2, [R5,#0x10C]
B               loc_1703A4
VLDR            S0, [R6,#0x298]
VMUL.F32        S0, S0, S20
BL              sub_464380
VLDR            S1, [R5,#0x108]
VLDR            S2, [R7,#0xC4]
VMLA.F32        S1, S2, S0
VSTR            S1, [R5,#0x108]
VLDR            S0, [R6,#0x298]
VMUL.F32        S0, S0, S20
BL              sub_464318
VLDR            S2, [R7,#0xC4]
VLDR            S1, [R5,#0x10C]
VMLA.F32        S1, S2, S0
VSTR            S1, [R5,#0x10C]
LDRB            R0, [R4]
VLDR            S0, [R7,#0xC4]
CMP             R0, #0
BNE             loc_1703C0
VLDR            S1, =4.0
VMLA.F32        S0, S19, S1
VSTR            S0, [R7,#0xC4]
VCMPE.F32       S0, S22
VMRS            APSR_nzcv, FPSCR
BLS             loc_1703E8
ADD             R0, R5, #0x2600
LDRH            R1, [R0,#0xB6]
SUB             R1, R1, #1
MOV             R1, R1,LSL#16
MOVS            R1, R1,LSR#16
STRH            R1, [R0,#0xB6]
BNE             loc_170420
VSTR            S22, [R7,#0xC4]
LDR             R0, [R5]
LDR             R1, [R0,#0x220]
MOV             R0, R5
BLX             R1
MOV             R0, #0
STRB            R0, [R11]
LDRB            R1, [R4]
CMP             R1, #0
BEQ             loc_170420
STRB            R0, [R4]
LDR             R0, [R5,#0x7FC]
MOV             R1, #1
STRH            R1, [R0,#0x16]
VLDR            S0, [R6,#0x298]
VMUL.F32        S0, S0, S16
VSTR            S0, [R5,#0xF8]
VLDR            S0, [R6,#0x29C]
VLDR            S1, [R6,#0x298]
LDR             R1, =0xC3340000
LDR             R2, =0x457A0000
VSUB.F32        S0, S0, S1
VMOV            R0, S0
CMP             R0, R1
VADDHI.F32      S0, S0, S21
LDR             R1, =0x43340000
VMOV            R0, S0
CMP             R0, R1
VSUBGT.F32      S0, S0, S21
LDRB            R1, [R9]
CMP             R1, #2
BNE             loc_1704BC
VLDR            S2, [R7,#0xC4]
VMOV            R0, S2
VCMP.F32        S2, S22
VMRS            APSR_nzcv, FPSCR
BEQ             loc_170498
CMP             R2, R0
BLE             loc_1704BC
VABS.F32        S0, S0
LDR             R3, =0x41A00000
VMOV            R0, S0
CMP             R3, R0
BLE             loc_1704BC
MOV             R0, #0
STRB            R0, [R9]
ADD             SP, SP, #0x14
VPOP            {D8-D12}
POP             {R4-R11,PC}
DCFS -0.017453
DCFS 4.0
DCD 0x457A0000
DCD 0x41A00000
LDR             R0, [R7,#0xC4]
CMP             R2, R0
CMPLE           R1, #0
BNE             loc_1704A0
MOV             R0, #2
STRB            R0, [R9]
VSTR            S1, [R6,#0x29C]
ADD             SP, SP, #0x14
VPOP            {D8-D12}
POP             {R4-R11,PC}
