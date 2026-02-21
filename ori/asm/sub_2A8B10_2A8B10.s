PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R5, R1
MOV             R6, #1
LDR             R8, =off_6D1648
MOV             R10, #0x1E
VPUSH           {D8-D12}
SUB             SP, SP, #8
MOV             R9, #0
LDR             R0, [R0,#0x84]
VLDR            S16, =0.0
VLDR            S19, =0.5
BIC             R0, R0, #1
AND             R1, R0, #0x20 ; ' '
BIC             R0, R0, #0x20 ; ' '
STR             R0, [R4,#0x84]
VLDR            S18, [R5]
VLDR            S17, [R5,#4]
TST             R0, #6
MOV             R7, R1,LSR#5
BNE             loc_2A8CBC
LDRSH           R1, [R4,#0x80]
CMP             R1, #0
BGT             loc_2A8B84
BIC             R0, R0, #0x30 ; '0'
STR             R0, [R4,#0x84]
MOV             R0, R4
BL              sub_2CF4BC
B               loc_2A8CBC
SUB             R1, R1, #1
STRH            R1, [R4,#0x80]
LDRB            R1, [R5,#8]
TST             R1, #1
BEQ             loc_2A8CAC
BIC             R0, R0, #4
ORR             R0, R0, #2
STRH            R9, [R4,#0x7E]
STR             R0, [R4,#0x84]
VSTR            S18, [R4,#0x20]
ADD             R1, R4, #0x24 ; '$'
VSTM            R1, {S17-S18}
VSTR            S17, [R4,#0x2C]
LDR             R0, [R8]
LDR             R0, [R0,#0xC0]
NOP
NOP
BL              sub_160C28
LDR             R0, [R8]
NOP
LDR             R0, [R0,#0xC0]
NOP
NOP
BL              sub_160CEC
VMOV.F32        S0, S16
VSTR            S0, [SP,#0x50+var_50]
VSTR            S0, [SP,#0x50+var_4C]
LDR             R0, [R8]
LDR             R0, [R0,#0xC0]
VLDR            S20, =10.0
MOV             R2, SP
MOV             R1, #0
VMOV.F32        S0, S20
BL              sub_1610AC
LDR             R0, [R8]
NOP
LDR             R0, [R0,#0xC0]
VMOV.F32        S0, S20
MOV             R1, #0
VMOV.F32        S1, S0
VLDR            S0, =220.0
BL              sub_161154
LDR             R0, [R4,#4]
MOV             R1, #1
ADD             R0, R0, #0x700
STRH            R10, [R0,#0x1C]
LDR             R0, [R4,#4]
NOP
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_2A8C60
LDRH            R0, [R0,#0x12]
TST             R0, #0x200
MOVNE           R2, #1
BNE             loc_2A8C64
MOV             R2, #0
MOV             R3, #1
LDR             R0, [R4,#4]
MOV             R1, R3
BL              sub_507CD8
LDR             R0, [R4,#4]
NOP
BL              sub_505BE4
MOV             R2, #0
VLDM            R5, {S0-S1}
MOV             R1, R2
LDR             R0, =0x2003F
BL              sub_1459F8
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x28]
MOV             R0, R4
BLX             R2
B               loc_2A8CBC
BIC             R0, R0, #0x20 ; ' '
ORR             R0, R0, R7,LSL#5
MOV             R6, #0
STR             R0, [R4,#0x84]
LDR             R0, [R4,#0x84]
TST             R0, #2
BEQ             loc_2A921C
LDRB            R0, [R5,#8]
TST             R0, #1
BEQ             loc_2A8D20
VMUL.F32        S1, S18, S18
LDR             R0, [R4,#0x20]
VSTR            S18, [R4,#0x20]
LDR             R1, [R4,#0x24]
VSTR            S17, [R4,#0x24]
VLDR            S0, [R4,#0x24]
STRD            R0, R1, [R4,#0x28]
LDR             R2, =0x46100000
LDR             R7, =dword_6E1320
VLDR            S17, =1.0
VMLA.F32        S1, S0, S0
VMOV            R0, S1
CMP             R0, R2
BLE             loc_2A8E28
LDR             R0, [R7]
ADD             R5, R4, #0x20 ; ' '
TST             R0, #1
BNE             loc_2A8DC0
B               loc_2A8D94
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #7
NOP
BEQ             loc_2A8D54
MOV             R0, R4
BL              sub_2A8A24
STRH            R9, [R4,#0x80]
NOP
B               loc_2A921C
LDR             R0, [R4,#0x84]
AND             R0, R0, #0x10
MOV             R5, R0,LSR#4
MOV             R0, R4
BL              sub_2A8A24
LDR             R0, [R4,#0x84]
BIC             R0, R0, #0x20 ; ' '
ORR             R0, R0, R7,LSL#5
BIC             R0, R0, #0x10
ORR             R0, R0, R5,LSL#4
STR             R0, [R4,#0x84]
MOV             R0, #0xF
STRH            R0, [R4,#0x80]
ADD             SP, SP, #8
VPOP            {D8-D12}
POP             {R4-R10,PC}
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_2A8DC0
VMOV.F32        S0, S16
LDR             R0, =flt_6E1324
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
ADD             R1, R4, #0x20 ; ' '
VMOV.F32        S3, S16
VLDM            R1, {S1-S2}
LDR             R0, =flt_6E1324
VMUL.F32        S0, S1, S1
VMLA.F32        S0, S2, S2
VCMP.F32        S0, S3
VMRS            APSR_nzcv, FPSCR
BNE             loc_2A8DF0
LDRD            R0, R1, [R0]
STRD            R0, R1, [R5]
B               loc_2A8E0C
VSQRT.F32       S2, S0
VDIV.F32        S0, S17, S2
VMUL.F32        S1, S1, S0
VSTR            S1, [R5]
VLDR            S1, [R4,#0x24]
VMUL.F32        S0, S1, S0
VSTR            S0, [R5,#4]
VLDR            S0, [R4,#0x20]
VLDR            S1, =96.0
VLDR            S2, [R4,#0x24]
ADD             R0, R4, #0x20 ; ' '
VMUL.F32        S0, S0, S1
VMUL.F32        S1, S2, S1
VSTM            R0, {S0-S1}
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19AA00
CMP             R0, #0
NOP
BEQ             loc_2A9204
LDR             R0, [R4,#0x84]
LDR             R8, =0x43C80000
LDR             R5, =0x3BB60B61
VLDR            S21, =0.000015259
VLDR            S22, =6.2832
VLDR            S23, =0.31831
TST             R0, #0x10
BEQ             loc_2A9054
VLDR            S1, [R4,#0x28]
VLDR            S3, [R4,#0x20]
VLDR            S0, [R4,#0x2C]
VLDR            S2, [R4,#0x24]
VSUB.F32        S1, S1, S3
VMOV.F32        S24, S16
VSUB.F32        S0, S0, S2
VLDR            S25, =0.0044444
VMUL.F32        S1, S1, S1
VMLA.F32        S1, S0, S0
VLDR            S0, [R4,#0x44]
VCMPE.F32       S0, S24
VMRS            APSR_nzcv, FPSCR
VSQRT.F32       S20, S1
BLE             loc_2A8EFC
VMUL.F32        S16, S20, S25
VADD.F32        S0, S0, S16
VMUL.F32        S0, S0, S19
VSTR            S0, [R4,#0x40]
B               loc_2A8F10
DCFS 0.0
DCD off_6D1648
DCFS 0.5
DCFS 10.0
DCFS 220.0
DCD 0x2003F
DCD 0x46100000
DCD dword_6E1320
DCFS 1.0
DCD flt_6E1324
DCFS 96.0
DCFS 0.000015259
DCFS 6.2832
DCFS 0.31831
DCD 0x43C80000
DCD 0x3BB60B61
DCFS 0.0044444
VLDR            S1, =-0.0044444
VMUL.F32        S16, S20, S1
VADD.F32        S0, S0, S16
VMUL.F32        S0, S0, S19
VSTR            S0, [R4,#0x40]
VMOV.F32        S2, S3
VLDR            S3, [R4,#0x6C]
VLDR            S1, =7.0
VLDR            S0, =8.0
VMLA.F32        S2, S3, S1
VMOV.F32        S3, S0
VDIV.F32        S17, S2, S3
VSTR            S17, [R4,#0x6C]
VLDR            S2, [R4,#0x24]
VLDR            S3, [R4,#0x70]
VMLA.F32        S2, S3, S1
VDIV.F32        S18, S2, S0
VSTR            S18, [R4,#0x70]
VLDR            S1, [R4,#0x20]
VLDR            S0, [R4,#0x24]
VSUB.F32        S1, S1, S17
VSUB.F32        S0, S0, S18
BL              sub_4643FC
ADD             R0, R0, #0x4000
UXTH            R0, R0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S21
VMUL.F32        S0, S0, S22
VMUL.F32        S0, S0, S23
VSTR            S0, [R4,#0x34]
VLDR            S1, [R4,#0x20]
VLDR            S0, [R4,#0x24]
VSUB.F32        S1, S1, S17
VSUB.F32        S0, S0, S18
VMUL.F32        S17, S1, S1
VLDR            S1, [R4,#0x34]
VMLA.F32        S17, S0, S0
VLDR            S0, [R4,#0x38]
BL              sub_5982EC
VLDR            S2, [R4,#0x40]
VABS.F32        S1, S0
VMUL.F32        S2, S2, S0
VCMPE.F32       S2, S24
VMRS            APSR_nzcv, FPSCR
BCS             loc_2A9010
VMOV            R0, S17
CMP             R8, R0
VMOVLE          R0, S1
CMPLE           R0, #0x3F000000
BGT             loc_2A9010
VMOV            R0, S1
CMP             R5, R0
BGT             loc_2A902C
VLDR            S2, [R4,#0x68]
LDR             R0, [R4,#0x34]
LDR             R1, =0x3C888889
VADD.F32        S1, S2, S1
STR             R0, [R4,#0x38]
VMOV            R0, S1
VSTR            S1, [R4,#0x68]
CMP             R1, R0
BGT             loc_2A902C
VMUL.F32        S16, S0, S25
VLDR            S1, [R4,#0x44]
VADD.F32        S0, S1, S16
VMUL.F32        S0, S0, S19
VSTR            S0, [R4,#0x40]
B               loc_2A902C
VLDR            S0, [R4,#0x68]
VSUB.F32        S0, S0, S20
VSTR            S0, [R4,#0x68]
VCMPE.F32       S0, S24
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S24, S0
VSTR            S24, [R4,#0x68]
VLDR            S0, [R4,#0x40]
VABS.F32        S0, S0
VMOV            R0, S0
CMP             R0, R5
LDR             R0, [R4,#0x84]
BICLT           R0, R0, #0x18
STRLT           R0, [R4,#0x84]
ORRGE           R0, R0, #0x20 ; ' '
BLT             loc_2A9204
B               loc_2A917C
TST             R0, #8
BEQ             loc_2A9184
ADD             R0, R4, #0x18
VLDR            S1, [R4,#0x20]
VLDR            S0, [R4,#0x24]
VLDM            R0, {S17-S18}
VSUB.F32        S1, S1, S17
VSUB.F32        S0, S0, S18
BL              sub_4643FC
ADD             R0, R0, #0x4000
UXTH            R0, R0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S21
VMUL.F32        S0, S0, S22
VMUL.F32        S0, S0, S23
VSTR            S0, [R4,#0x34]
VLDR            S1, [R4,#0x20]
VLDR            S0, [R4,#0x24]
VSUB.F32        S1, S1, S17
VSUB.F32        S0, S0, S18
VMUL.F32        S18, S1, S1
VLDR            S1, [R4,#0x34]
VMLA.F32        S18, S0, S0
VLDR            S0, [R4,#0x38]
BL              sub_5982EC
VMOV.F32        S17, S16
VABS.F32        S1, S0
VCMPE.F32       S17, S18
VMRS            APSR_nzcv, FPSCR
BHI             loc_2A9174
VMOV            R0, S1
CMP             R0, #0x3F000000
BGT             loc_2A9174
VMOV            R0, S1
CMP             R5, R0
BGT             loc_2A9204
VLDR            S1, [R4,#0x44]
VMOV.F32        S16, S0
LDR             R0, [R4,#0x84]
VADD.F32        S0, S1, S0
LDR             R1, [R4,#0x34]
ORR             R0, R0, #0x20 ; ' '
STR             R0, [R4,#0x84]
STR             R1, [R4,#0x38]
LDR             R2, =0x3C360B61
VMUL.F32        S0, S0, S19
VSTR            S0, [R4,#0x40]
VABS.F32        S0, S0
VMOV            R1, S0
CMP             R2, R1
BGT             loc_2A9204
ORR             R0, R0, #0x10
STR             R0, [R4,#0x84]
VSTR            S17, [R4,#0x68]
LDR             R0, [R7]
TST             R0, #1
BNE             loc_2A9164
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_2A9164
LDR             R0, =flt_6E1324
VSTR            S17, [R0]
VSTR            S17, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
LDR             R1, =flt_6E1324
LDRD            R0, R1, [R1]
STRD            R0, R1, [R4,#0x6C]
B               loc_2A9204
LDR             R0, [R4,#0x84]
BIC             R0, R0, #8
STR             R0, [R4,#0x84]
B               loc_2A9204
ADD             R0, R4, #0x20 ; ' '
VLDR            S1, [R4,#0x18]
VLDR            S0, [R4,#0x1C]
VLDM            R0, {S2-S3}
VSUB.F32        S2, S2, S1
VSUB.F32        S3, S3, S0
VMUL.F32        S2, S2, S2
VMLA.F32        S2, S3, S3
VMOV            R0, S2
CMP             R0, R8
BLT             loc_2A9204
ADD             R0, R4, #0x20 ; ' '
VLDM            R0, {S2-S3}
VSUB.F32        S1, S2, S1
VSUB.F32        S0, S3, S0
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S1, [R4,#0x44]
UXTH            R0, R0
VMOV            S0, R0
VMUL.F32        S1, S1, S19
LDR             R1, [R4,#0x84]
ORR             R0, R1, #8
VCVT.F32.U32    S0, S0
STR             R0, [R4,#0x84]
VSTR            S1, [R4,#0x40]
VMUL.F32        S0, S0, S21
VMUL.F32        S0, S0, S22
VMUL.F32        S0, S0, S23
VSTR            S0, [R4,#0x38]
VSTR            S0, [R4,#0x34]
VSTR            S0, [R4,#0x30]
LDR             R0, [R4,#0x84]
ADD             R1, R4, #0x20 ; ' '
ORR             R0, R0, #1
STR             R0, [R4,#0x84]
LDR             R0, [R4,#4]
BL              sub_505BC0
CMP             R6, #0
BEQ             loc_2A8D88
LDRH            R0, [R4,#0x60]
LDR             R1, =0xAAAAAAAB
ADD             R0, R4, R0,LSL#2
VSTR            S16, [R0,#0x48]
LDRH            R0, [R4,#0x60]
ADD             R0, R0, #1
UMULL           R2, R1, R1, R0
MOV             R1, R1,LSR#2
SUB             R1, R1, R1,LSL#2
ADD             R0, R0, R1,LSL#1
STRH            R0, [R4,#0x60]
VLDR            S0, [R4,#0x48]
VLDR            S2, [R4,#0x4C]
VLDR            S4, [R4,#0x50]
VLDR            S3, [R4,#0x54]
VADD.F32        S0, S2, S0
ADD             R0, R4, #0x58 ; 'X'
VLDM            R0, {S1-S2}
VADD.F32        S0, S4, S0
VADD.F32        S0, S3, S0
VADD.F32        S0, S1, S0
VLDR            S1, =0.16667
VADD.F32        S0, S2, S0
VMUL.F32        S0, S0, S1
VSTR            S0, [R4,#0x44]
ADD             SP, SP, #8
VPOP            {D8-D12}
POP             {R4-R10,PC}
