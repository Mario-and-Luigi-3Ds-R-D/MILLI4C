PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R5, R1
LDR             R6, =off_6D1648
VPUSH           {D8-D12}
SUB             SP, SP, #0xC
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #6
BEQ             loc_21F844
LDR             R0, [R4,#4]
BL              sub_50976C
MOV             R3, #1
LDR             R0, [R4,#4]
MOV             R2, R3
MOV             R1, #0
BL              sub_507CD8
LDR             R0, [R4,#0x1C4]
ORR             R0, R0, #1
STR             R0, [R4,#0x1C4]
ADD             SP, SP, #0xC
MOV             R0, R4
VPOP            {D8-D12}
POP             {R4-R7,LR}
B               sub_2CF4BC
LDR             R0, [R4,#0x1C4]
VLDR            S24, =0.5
VLDR            S20, =1.0
VLDR            S16, =0.0
VLDR            S18, =2.0
TST             R0, #1
MOV             R7, #0
BEQ             loc_21F914
LDR             R1, [R4,#4]
LDRB            R1, [R1,#0x705]
CMP             R1, #0
BNE             loc_21FE48
BIC             R0, R0, #1
STR             R0, [R4,#0x1C4]
LDR             R0, [R6]
LDR             R0, [R0,#0xC8]
TST             R0, #0x10
BEQ             loc_21F8F4
VLDR            S0, [R4,#0x1C]
VLDR            S1, [R4,#0x24]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_21F8F4
VMOV.F32        S0, S16
MOV             R2, #0
LDR             R0, =0x208DE
MOV             R1, R2
VMOV.F32        S1, S0
BL              sub_1459F8
LDR             R0, [R6]
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #6
NOP
BNE             loc_21F8F4
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
VLDR            S0, [R4,#0x24]
LDR             R0, [R0,#0x1CC]
BL              sub_2D5C10
LDR             R0, [R4,#4]
BL              sub_50976C
MOV             R0, R4
NOP
BL              sub_2CF4BC
NOP
NOP
B               loc_21FE48
LDRB            R0, [R5,#8]
VLDR            S23, =1.5
TST             R0, #1
BEQ             loc_21FA2C
LDRSH           R0, [R4,#0x3C]
VLDR            S17, =0.000015259
VLDR            S19, =6.2832
VLDR            S21, =0.31831
VLDR            S25, =3.1416
VLDR            S22, =40.744
CMP             R0, #0
BLE             loc_21FB90
SUB             R0, R0, #1
SXTH            R0, R0
CMP             R0, #0
STRH            R0, [R4,#0x3C]
BGT             loc_21F9B0
ADD             R0, R4, #0x14
VLDR            S1, [R5]
VLDR            S0, [R5,#4]
VLDM            R0, {S2-S3}
VSUB.F32        S1, S1, S2
VSUB.F32        S0, S0, S3
BL              sub_4643FC
ADD             R0, R0, #0x4000
UXTH            R0, R0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S19
VMUL.F32        S0, S0, S21
VSTR            S0, [R4,#0x2C]
VLDR            S2, [R4,#0x20]
VLDR            S0, [R4,#0x40]
VLDR            S1, [R4,#0x34]
VSUB.F32        S2, S0, S2
VADD.F32        S1, S2, S1
VSTR            S1, [R4,#0x34]
VSTR            S0, [R4,#0x20]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
ADD             R0, R0, #0x2C8
BL              sub_5C6998
VLDR            S2, [R4,#0x20]
VLDR            S1, [R4,#0x34]
VSUB.F32        S0, S0, S2
VADD.F32        S0, S0, S23
VADD.F32        S0, S1, S0
VMUL.F32        S0, S0, S25
VMUL.F32        S19, S0, S22
VMOV.F32        S0, S19
BL              sub_464318
VLDR            S1, [R4,#0x30]
VMUL.F32        S17, S0, S1
VMOV.F32        S0, S19
BL              sub_464380
VLDR            S1, [R4,#0x30]
ADD             R0, R4, #0x14
MOV             R1, SP
VMUL.F32        S0, S0, S1
VLDM            R0, {S1-S2}
VADD.F32        S1, S17, S1
VADD.F32        S0, S0, S2
VSTR            S1, [SP,#0x48+var_48]
VSTR            S0, [SP,#0x48+var_44]
LDR             R0, [R4,#4]
BL              sub_505BC0
NOP
NOP
B               loc_21FE48
VLDR            S1, [R4,#0x24]
VLDR            S0, [R4,#0x28]
BL              sub_5982EC
VMOV.F32        S17, S0
VCMPE.F32       S17, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_21FA5C
LDR             R1, =0x3E471C72
VMOV            R0, S17
CMP             R0, R1
VLDRGT          S17, =0.19444
B               loc_21FA6C
LDR             R1, =0xBE471C72
VMOV            R0, S17
CMP             R0, R1
VLDRHI          S17, =-0.19444
LDR             R0, [R4,#4]
VMOV.F32        S1, S18
ADD             R0, R0, #0x400
ADD             R0, R0, #0x2C8
VLDR            S0, [R0]
VADD.F32        S0, S0, S1
BL              sub_5F63A4
VADD.F32        S0, S0, S17
VMOV            R0, S0
VSTR            S0, [R4,#0x24]
CMP             R0, #0x3E800000
BLE             loc_21FAD4
VMOV            R0, S0
CMP             R0, #0x3F400000
VSTRLE          S24, [R4,#0x24]
BLE             loc_21FAD8
LDR             R1, =0x3FA00000
VMOV            R0, S0
CMP             R0, R1
VSTRLE          S20, [R4,#0x24]
BLE             loc_21FAD8
LDR             R1, =0x3FE00000
VMOV            R0, S0
CMP             R0, R1
VSTRLE          S23, [R4,#0x24]
BLE             loc_21FAD8
VSTR            S16, [R4,#0x24]
VABS.F32        S0, S17
LDR             R1, =0x3D088889
VMOV.F32        S2, S16
VLDR            S1, =0.041667
VMOV            R0, S0
VLDR            S0, [R4,#0x24]
CMP             R0, R1
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
ADD             R0, R0, #0x2C8
BGE             loc_21FB14
BL              sub_1C86E8
NOP
NOP
B               loc_21FB1C
NOP
BL              sub_1C8488
MOV             R3, #1
LDR             R0, [R4,#4]
MOV             R2, R3
MOV             R1, #0
BL              sub_507CD8
LDR             R0, [R4,#0x1C4]
ORR             R0, R0, #1
STR             R0, [R4,#0x1C4]
B               loc_21FE48
DCD off_6D1648
DCFS 0.5
DCFS 1.0
DCFS 0.0
DCFS 2.0
DCD 0x208DE
DCFS 1.5
DCFS 0.000015259
DCFS 6.2832
DCFS 0.31831
DCFS 3.1416
DCFS 40.744
DCD 0x3E471C72
DCFS 0.19444
DCD 0xBE471C72
DCFS -0.19444
DCD 0x3FA00000
DCD 0x3FE00000
DCD 0x3D088889
DCFS 0.041667
VLDR            S0, [R5]
VLDR            S1, [R4,#0x14]
VLDR            S2, [R5,#4]
VLDR            S3, [R4,#0x18]
VSUB.F32        S1, S0, S1
VSUB.F32        S0, S2, S3
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S2, [R4,#0x2C]
UXTH            R0, R0
VMOV            S0, R0
VMOV.F32        S1, S18
VLDR            S3, [R4,#0x20]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S19
VNMLS.F32       S2, S0, S21
VADD.F32        S0, S2, S1
VADD.F32        S0, S0, S3
BL              sub_5F63A4
VMOV.F32        S17, S0
VLDR            S1, [R4,#0x24]
BL              sub_5982EC
VABS.F32        S0, S0
LDR             R1, =0x3B4CCCCD
VMOV            R0, S0
CMP             R0, R1
BLT             loc_21FC64
LDR             R0, [R4,#0x24]
VMOV.F32        S2, S16
STR             R0, [R4,#0x28]
VSTR            S17, [R4,#0x24]
LDR             R0, [R4,#4]
LDRB            R0, [R0,#0x705]
CMP             R0, #0
BEQ             loc_21FC4C
VMOV.F32        S1, S17
VLDR            S0, [R4,#0x38]
BL              sub_597750
LDR             R0, [R4,#4]
VMOV.F32        S2, S0
ADD             R0, R0, #0x400
VLDR            S1, [R0,#0x2D4]
VMUL.F32        S0, S1, S0
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S2, S16
LDR             R0, [R4,#4]
VLDR            S0, [R4,#0x24]
VLDR            S1, =0.044444
ADD             R0, R0, #0x400
ADD             R0, R0, #0x2C8
BL              sub_1C839C
VSTR            S17, [R4,#0x38]
LDR             R0, [R4,#4]
VMOV.F32        S1, S18
ADD             R0, R0, #0x400
ADD             R0, R0, #0x2C8
VLDR            S0, [R0]
VADD.F32        S0, S0, S18
BL              sub_5F63A4
LDR             R0, [R4,#4]
VMOV.F32        S19, S0
ADD             R0, R0, #0x400
ADD             R0, R0, #0x2C8
BL              sub_5C6998
VMOV.F32        S17, S0
VMUL.F32        S21, S19, S18
VMUL.F32        S0, S17, S18
VCVT.S32.F32    S1, S21
VCVT.S32.F32    S0, S0
VMOV            R5, S1
VMOV            R6, S0
CMP             R5, R6
BEQ             loc_21FDE8
VMOV.F32        S1, S17
VMOV.F32        S0, S19
BL              sub_597750
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BGT             loc_21FCE8
VMOV            S0, R5
VCVT.F32.S32    S0, S0
VCMP.F32        S21, S0
VMRS            APSR_nzcv, FPSCR
BEQ             loc_21FDE8
VMOV.F32        S1, S17
VMOV.F32        S0, S19
BL              sub_5982EC
CMP             R6, R5
NOP
BLE             loc_21FD48
CMP             R5, #0
BNE             loc_21FD10
CMP             R6, #1
BNE             loc_21FDA8
SUB             R0, R6, R5
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VABS.F32        S1, S1
VMOV            R0, S1
CMP             R0, #0x40000000
BLT             loc_21FD58
VCMPE.F32       S0, S16
ADD             R0, R6, R5
ADD             R0, R0, R0,LSR#31
VMRS            APSR_nzcv, FPSCR
MOV             R5, R0,ASR#1
BCS             loc_21FDA8
B               loc_21FD94
CMP             R6, #0
BNE             loc_21FD60
CMP             R5, #1
BEQ             loc_21FD60
MOV             R5, R6
B               loc_21FDA8
SUB             R0, R6, R5
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VABS.F32        S1, S1
VMOV            R0, S1
CMP             R0, #0x40000000
BLT             loc_21FDA8
VCMPE.F32       S0, S16
ADD             R0, R6, R5
ADD             R0, R0, R0,LSR#31
VMRS            APSR_nzcv, FPSCR
MOV             R5, R0,ASR#1
BLE             loc_21FDA8
ADD             R0, R5, #2
MOV             R1, R0,ASR#31
ADD             R1, R0, R1,LSR#30
BIC             R1, R1, #3
SUB             R5, R0, R1
VMOV            S0, R5
MOV             R0, #1
VMOV.F32        S1, S18
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S24
VSTR            S0, [R4,#0x40]
STRH            R0, [R4,#0x3C]
LDR             R5, [R4,#4]
VMOV.F32        S17, S0
ADD             R5, R5, #0x400
ADD             R5, R5, #0x2C8
BL              sub_5F63A4
VSTR            S0, [R5]
VSTR            S0, [R5,#4]
VSTR            S16, [R5,#0xC]
STRB            R7, [R5,#0x3D]
VLDR            S1, [R4,#0x20]
VLDR            S0, [R4,#0x34]
VSUB.F32        S1, S17, S1
VADD.F32        S1, S1, S23
VADD.F32        S0, S0, S1
VMUL.F32        S0, S0, S25
VMUL.F32        S0, S0, S22
VMOV.F32        S19, S0
BL              sub_464318
VLDR            S1, [R4,#0x30]
VMUL.F32        S17, S0, S1
VMOV.F32        S0, S19
BL              sub_464380
VLDR            S1, [R4,#0x30]
ADD             R0, R4, #0x14
MOV             R1, SP
VMUL.F32        S0, S0, S1
VLDM            R0, {S1-S2}
VADD.F32        S1, S17, S1
VADD.F32        S0, S0, S2
VSTR            S1, [SP,#0x48+var_48]
VSTR            S0, [SP,#0x48+var_44]
LDR             R0, [R4,#4]
BL              sub_505BC0
LDR             R0, [R4,#4]
VMOV.F32        S1, S18
ADD             R0, R0, #0x400
ADD             R0, R0, #0x2C8
VLDR            S0, [R0]
VADD.F32        S0, S0, S1
BL              sub_5F63A4
VMOV.F32        S17, S0
VLDR            S0, [R4,#0x48]
VMOV.F32        S1, S17
BL              sub_5982EC
VMOV.F32        S0, S20
LDR             R0, [R4,#4]
BL              sub_509918
VMOV.F32        S0, S17
VSTR            S0, [R4,#0x48]
LDRSH           R0, [R4,#0x50]
CMP             R0, #0
SUBGT           R0, R0, #1
STRHGT          R0, [R4,#0x50]
BGT             loc_21FEEC
VMOV.F32        S1, S17
VLDR            S0, [R4,#0x4C]
BL              sub_5982EC
VABS.F32        S0, S0
LDR             R1, =0x3D638E39
VMOV            R0, S0
CMP             R1, R0
BGT             loc_21FEEC
MOV             R0, #3
VSTR            S17, [R4,#0x4C]
STRH            R0, [R4,#0x50]
VMOV.F32        S0, S16
ADD             SP, SP, #0xC
MOV             R2, #0
VPOP            {D8-D12}
MOV             R1, R2
VMOV.F32        S1, S0
POP             {R4-R7,LR}
LDR             R0, =0x208DD
B               sub_1459F8
ADD             SP, SP, #0xC
VPOP            {D8-D12}
POP             {R4-R7,PC}
