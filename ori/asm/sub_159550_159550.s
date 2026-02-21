PUSH            {R4,R5,LR}
MOV             R4, R0
ADD             R3, R4, #0xB0
VPUSH           {D8-D15}
SUB             SP, SP, #0x194
LDR             R0, [R0,#0xFC]
ORR             R0, R0, #0x20 ; ' '
STR             R0, [R4,#0xFC]
LDR             R0, [R4,#0x14]
VLDR            S23, [R4,#0xC8]
VLDR            S22, [R4,#0xCC]
LDR             R1, [R0,#0xC]
LDR             R2, [R0,#0x1C]
STM             R3, {R1,R2}
ADD             R3, R4, #0xB8
LDR             R2, [R4,#0x18]
LDR             R1, [R2,#0xC]
LDR             R2, [R2,#0x1C]
STM             R3, {R1,R2}
ADD             R3, R4, #0xC0
LDR             R2, [R4,#0x1C]
LDR             R1, [R2,#0xC]
LDR             R2, [R2,#0x1C]
STM             R3, {R1,R2}
VLDR            S1, [R0,#0xC]
VLDR            S0, [R0,#0x1C]
VSTR            S1, [SP,#0x1E0+var_198]
VSTR            S0, [SP,#0x1E0+var_1BC]
LDR             R0, [R4,#0x18]
VLDR            S29, [R0,#0xC]
VLDR            S30, [R0,#0x1C]
LDR             R0, [R4,#0x1C]
VLDR            S16, [R0,#0xC]
VLDR            S17, [R0,#0x1C]
LDR             R0, =0x41800000
VSUB.F32        S25, S1, S16
VSUB.F32        S31, S0, S17
VLDR            S0, =0.0
VMUL.F32        S1, S25, S25
VMLA.F32        S1, S31, S31
VSQRT.F32       S21, S1
VCMP.F32        S21, S0
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S1, S16
VLDR            S0, =0.0
VLDREQ          S21, =0.0001
VLDR            S26, =0.000015259
VLDR            S28, =6.2832
VLDR            S27, =7.854
VSUB.F32        S20, S23, S1
VMOV.F32        S1, S17
VSUB.F32        S24, S22, S1
VMUL.F32        S2, S20, S20
VMOV.F32        S1, S20
VMLA.F32        S2, S24, S24
VSQRT.F32       S18, S2
VMUL.F32        S2, S1, S25
VMOV            R1, S18
CMP             R1, R0
VLDRLT          S18, =16.0
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_1596BC
LDR             R0, =0x42800000
VMOV            R1, S18
CMP             R1, R0
VLDRLT          S0, =0.015625
VMULLT.F32      S20, S18, S0
VNEG.F32        S0, S24
VMOV.F32        S1, S20
BL              sub_4643FC
ADD             R0, R0, #0x4000
VMOV.F32        S19, S27
UXTH            R0, R0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S26
VMLS.F32        S19, S0, S28
VLDR            S0, =40.744
VMUL.F32        S20, S19, S0
VMOV.F32        S0, S20
BL              sub_464318
VMOV.F32        S23, S16
VMLA.F32        S23, S0, S18
VMOV.F32        S0, S20
BL              sub_464380
VMOV.F32        S22, S17
VSUB.F32        S20, S23, S16
VMLA.F32        S22, S0, S18
VSUB.F32        S24, S22, S17
B               loc_1596E4
VMOV.F32        S0, S24
VNEG.F32        S0, S0
BL              sub_4643FC
ADD             R0, R0, #0x4000
VMOV.F32        S19, S27
UXTH            R0, R0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S26
VMLS.F32        S19, S0, S28
VSUB.F32        S1, S20, S25
VSUB.F32        S24, S24, S31
VSUB.F32        S20, S18, S21
VMOV.F32        S25, S1
VNEG.F32        S0, S24
BL              sub_4643FC
VMOV.F32        S1, S25
VLDR            S2, =0.4
VLDR            S27, =0.0
VLDR            S25, =0.3
LDR             R5, =0x40490FDB
VCMPE.F32       S20, S27
VMUL.F32        S0, S1, S2
VMUL.F32        S1, S24, S2
VLDR            S24, =1.0
VADD.F32        S0, S29, S0
VADD.F32        S2, S30, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_159820
VDIV.F32        S31, S20, S21
VLDR            S3, =-1.75
VLDR            S1, [R4,#0xF0]
VMUL.F32        S3, S31, S3
VSUB.F32        S5, S25, S31
VSUB.F32        S4, S24, S31
VMUL.F32        S27, S1, S3
VMUL.F32        S25, S1, S5
VMUL.F32        S24, S1, S4
VSUB.F32        S1, S0, S16
VSUB.F32        S0, S2, S17
VMUL.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VNEG.F32        S0, S0
VSQRT.F32       S18, S2
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S1, =0.000015259
UXTH            R0, R0
VMOV            S0, R0
VLDR            S2, =6.2832
VLDR            S28, =7.854
VLDR            S3, =-2.0
VCVT.F32.U32    S4, S0
VMUL.F32        S0, S31, S3
VMUL.F32        S1, S4, S1
VMOV            R0, S0
CMP             R0, #0x3F800000
VLDRGT          S0, =1.0
VMLS.F32        S28, S1, S2
VSUB.F32        S1, S19, S28
VABS.F32        S3, S1
VMOV            R0, S3
CMP             R0, R5
VMLALT.F32      S28, S1, S0
BLT             loc_1597D8
VCMPE.F32       S19, S28
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S1, S19, S2
VSUBCS.F32      S1, S19, S2
VSUB.F32        S1, S1, S28
VMLA.F32        S28, S1, S0
VLDR            S0, =0.25
LDR             R0, =0x3C23D70A
VMLA.F32        S18, S20, S0
VLDR            S0, =40.744
VMUL.F32        S19, S28, S0
VMOV            R1, S18
CMP             R1, R0
VLDRLT          S18, =0.01
VMOV.F32        S0, S19
BL              sub_464318
VMOV.F32        S21, S16
VMLA.F32        S21, S0, S18
VMOV.F32        S0, S19
BL              sub_464380
VMOV.F32        S1, S17
VMLA.F32        S1, S0, S18
VMOV.F32        S18, S1
B               loc_1598D4
VDIV.F32        S1, S20, S21
VLDR            S3, =0.5
VMUL.F32        S18, S1, S3
VSUB.F32        S1, S0, S16
VSUB.F32        S0, S2, S17
VMUL.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VNEG.F32        S0, S0
VSQRT.F32       S21, S2
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S2, =0.000015259
UXTH            R0, R0
VMOV            S0, R0
VLDR            S1, =6.2832
VLDR            S26, =7.854
VMOV            R1, S18
VCVT.F32.U32    S0, S0
CMP             R1, #0x3F800000
VLDRGT          S18, =1.0
VMUL.F32        S0, S0, S2
VMLS.F32        S26, S0, S1
VSUB.F32        S0, S19, S26
VABS.F32        S2, S0
VMOV            R0, S2
CMP             R0, R5
VMLALT.F32      S26, S0, S18
BLT             loc_1598A8
VCMPE.F32       S19, S26
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S0, S19, S1
VSUBCS.F32      S0, S19, S1
VSUB.F32        S0, S0, S26
VMLA.F32        S26, S0, S18
VLDR            S0, =40.744
VMUL.F32        S18, S26, S0
VMOV.F32        S0, S18
BL              sub_464318
VMOV.F32        S31, S16
VMLA.F32        S31, S0, S21
VMOV.F32        S0, S18
BL              sub_464380
VMOV.F32        S18, S17
VMLA.F32        S18, S0, S21
VMOV.F32        S21, S31
VSUB.F32        S1, S29, S16
VSUB.F32        S0, S30, S17
VLDR            S26, =0.0
VMOV.F32        S3, S26
VMUL.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VSQRT.F32       S31, S2
VCMP.F32        S31, S3
VMRS            APSR_nzcv, FPSCR
VNEG.F32        S0, S0
VLDREQ          S31, =0.0001
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S19, =0.000015259
UXTH            R0, R0
VMOV            S0, R0
VLDR            S2, =6.2832
VLDR            S1, =7.854
VMOV.F32        S28, S21
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S19
VMLS.F32        S1, S0, S2
VSUB.F32        S0, S18, S17
VSTR            S1, [SP,#0x1E0+var_88]
VSUB.F32        S1, S21, S16
VMOV.F32        S21, S26
VSTR            S18, [SP,#0x1E0+var_1CC]
VMOV.F32        S3, S21
VMUL.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VSQRT.F32       S26, S2
VCMP.F32        S26, S3
VMRS            APSR_nzcv, FPSCR
VNEG.F32        S0, S0
VLDREQ          S26, =0.0001
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S3, =0.000015259
UXTH            R0, R0
VMOV            S0, R0
VLDR            S2, =6.2832
VLDR            S1, =7.854
VMOV.F32        S18, S22
VMOV.F32        S19, S21
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S3
VMLS.F32        S1, S0, S2
VSUB.F32        S0, S18, S17
VSTR            S1, [SP,#0x1E0+var_D8]
VSUB.F32        S1, S23, S16
VMUL.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VSQRT.F32       S21, S2
VCMP.F32        S21, S19
VMRS            APSR_nzcv, FPSCR
VNEG.F32        S0, S0
VLDREQ          S21, =0.0001
BL              sub_4643FC
NOP
NOP
B               loc_159A18
DCFS 0.0
DCFS 0.0001
DCD 0x41800000
DCFS 16.0
DCFS 0.000015259
DCFS 6.2832
DCFS 7.854
DCD 0x42800000
DCFS 0.015625
DCFS 40.744
DCFS 0.4
DCD 0x40490FDB
DCFS 1.0
DCFS 0.3
DCFS -1.75
DCFS -2.0
DCFS 0.25
DCD 0x3C23D70A
DCFS 0.01
DCFS 0.5
VLDR            S0, [SP,#0x1E0+var_198]
VLDR            S3, =0.0
VSUB.F32        S1, S0, S16
VLDR            S0, [SP,#0x1E0+var_1BC]
VSUB.F32        S0, S0, S17
VMUL.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VSQRT.F32       S19, S2
VCMP.F32        S19, S3
VMRS            APSR_nzcv, FPSCR
VNEG.F32        S0, S0
VLDREQ          S19, =0.0001
BL              sub_4643FC
VLDR            S0, [SP,#0x1E0+var_1CC]
VSUB.F32        S1, S23, S28
VSUB.F32        S28, S18, S0
VMOV.F32        S22, S1
VNEG.F32        S0, S28
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S2, =0.000015259
UXTH            R0, R0
VMOV            S1, R0
VLDR            S3, =6.2832
VLDR            S0, =7.854
VLDR            S6, =0.7
VLDR            S5, =2.0
VLDR            S4, =0.4
VCVT.F32.U32    S1, S1
VMUL.F32        S1, S1, S2
VDIV.F32        S2, S21, S19
VMLS.F32        S0, S1, S3
VMUL.F32        S3, S25, S6
VSTR            S0, [SP,#0x1E0+var_80]
VLDR            S0, =1.0
VMOV.F32        S1, S0
VMLA.F32        S1, S25, S6
VMLS.F32        S1, S2, S3
VCMPE.F32       S1, S5
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S1, S5
BGE             loc_159AD0
VMOV.F32        S2, S4
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S1, S4
VMOV.F32        S2, S0
VMUL.F32        S3, S24, S6
VDIV.F32        S7, S26, S31
VMLA.F32        S2, S24, S6
VMLS.F32        S2, S7, S3
VCMPE.F32       S2, S5
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S2, S5
BGE             loc_159B04
VMOV.F32        S3, S4
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S2, S4
VMOV.F32        S24, S0
VMOV.F32        S25, S7
VMOV.F32        S3, S0
VMLA.F32        S24, S27, S6
VMUL.F32        S6, S27, S6
VMLS.F32        S24, S25, S6
VCMPE.F32       S24, S5
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S24, S5
BGE             loc_159B38
VCMPE.F32       S24, S4
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S24, S4
VMUL.F32        S4, S22, S22
VMOV.F32        S21, S0
LDR             R0, [R4,#0xFC]
VLDR            S19, =0.0
TST             R0, #2
VMLA.F32        S4, S28, S28
VSQRT.F32       S5, S4
VDIV.F32        S4, S0, S5
VMUL.F32        S6, S22, S4
VMUL.F32        S5, S28, S4
BEQ             loc_159B70
VLDR            S4, =-1.0
VMUL.F32        S6, S6, S4
VMUL.F32        S5, S5, S4
VMOV.F32        S8, S0
VMOV.F32        S4, S19
VMOV.F32        S11, S0
VMOV.F32        S27, S0
LDR             R0, [R4,#0x14]
LDR             R1, =0x437A0000
VCMPE.F32       S18, S4
VMUL.F32        S10, S8, S6
VMOV.F32        S8, S4
VMUL.F32        S9, S4, S5
VSTR            S23, [R0,#0xC]
LDR             R0, [R4,#0x14]
VMLS.F32        S8, S11, S5
VSTR            S18, [R0,#0x1C]
VMLS.F32        S10, S4, S4
VMLS.F32        S9, S4, S6
VMUL.F32        S11, S8, S8
VMLA.F32        S11, S10, S10
VMLA.F32        S11, S9, S9
VSQRT.F32       S12, S11
VDIV.F32        S0, S27, S12
VMUL.F32        S11, S8, S0
VMUL.F32        S8, S10, S0
VMUL.F32        S0, S9, S0
VMUL.F32        S10, S11, S1
VMUL.F32        S9, S8, S1
VMUL.F32        S0, S0, S1
VLDR            S11, =250.0
VMRS            APSR_nzcv, FPSCR
BCS             loc_159C1C
VCMPE.F32       S20, S19
VMRS            APSR_nzcv, FPSCR
BLE             loc_159C1C
LDR             R2, [R4,#0x14]
VLDR            S8, =-4.5
VLDR            S1, [R2,#0x2C]
VMLA.F32        S1, S18, S8
VMOV            R0, S1
VSTR            S1, [R2,#0x2C]
LDR             R2, [R4,#0x14]
CMP             R0, R1
VMOVGT.F32      S1, S11
VSTR            S1, [R2,#0x2C]
LDR             R0, [R4,#0xFC]
TST             R0, #0xC
LDRBNE          R0, [R4,#0xF8]
CMPNE           R0, #0
CMPNE           R0, #1
BNE             loc_159C54
LDR             R0, [R4,#0x14]
VSTR            S6, [R0]
VSTR            S5, [R0,#0x10]
VSTR            S4, [R0,#0x20]
LDR             R0, [R4,#0x14]
VSTR            S10, [R0,#4]
VSTR            S9, [R0,#0x14]
VSTR            S0, [R0,#0x24]
VNEG.F32        S22, S16
VNEG.F32        S23, S17
VCMPE.F32       S18, S19
VSTR            S19, [SP,#0x1E0+var_CC]
VSTR            S19, [SP,#0x1E0+var_C8]
VSTR            S27, [SP,#0x1E0+var_C4]
VSTR            S19, [SP,#0x1E0+var_68]
ADD             R0, SP, #0x1E0+var_70
VMRS            APSR_nzcv, FPSCR
VSTM            R0, {S29-S30}
BCS             loc_159CAC
VMOV.F32        S0, S19
VCMPE.F32       S20, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_159CAC
VLDR            S0, =-4.0
VMUL.F32        S0, S18, S0
VMOV            R3, S0
VSTR            S0, [SP,#0x1E0+var_68]
CMP             R3, R1
VMOVLE.F32      S11, S0
VSTR            S11, [SP,#0x1E0+var_68]
VSTR            S7, [SP,#0x1E0+var_C0]
MOV             R0, #0
STR             R0, [SP,#0x1E0+var_BC]
STR             R0, [SP,#0x1E0+var_B8]
STR             R0, [SP,#0x1E0+var_B4]
STR             R0, [SP,#0x1E0+var_B0]
VMOV.F32        S26, S19
VSTR            S2, [SP,#0x1E0+var_AC]
STR             R0, [SP,#0x1E0+var_A8]
STR             R0, [SP,#0x1E0+var_A4]
STR             R0, [SP,#0x1E0+var_A0]
STR             R0, [SP,#0x1E0+var_9C]
VSTR            S3, [SP,#0x1E0+var_98]
VMOV.F32        S18, S26
STR             R0, [SP,#0x1E0+var_94]
VLDR            S0, [SP,#0x1E0+var_D8]
ADD             R1, SP, #0x1E0+var_CC
ADD             R0, SP, #0x1E0+var_178
BL              sub_4630DC
VLDR            S0, [SP,#0x1E0+var_88]
ADD             R1, SP, #0x1E0+var_CC
ADD             R0, SP, #0x1E0+var_108
VNEG.F32        S0, S0
VMOV.F32        S28, S0
BL              sub_4630DC
MOV             R0, #0
MOV             R1, #0x3F800000
STR             R0, [SP,#0x1E0+var_1A4]
STR             R1, [SP,#0x1E0+var_1A8]
STR             R0, [SP,#0x1E0+var_1A0]
VSTR            S22, [SP,#0x1E0+var_19C]
VMOV.F32        S0, S19
STRD            R0, R1, [SP,#0x1E0+var_198]
STR             R0, [SP,#0x1E0+var_190]
VSTR            S23, [SP,#0x1E0+var_18C]
STR             R0, [SP,#0x1E0+var_188]
STRD            R0, R1, [SP,#0x1E0+var_184]
VSTR            S0, [SP,#0x1E0+var_17C]
VMOV.F32        S0, S16
STR             R0, [SP,#0x1E0+var_13C]
STR             R1, [SP,#0x1E0+var_140]
STR             R0, [SP,#0x1E0+var_138]
ADD             R2, SP, #0x1E0+var_1A8
VSTR            S0, [SP,#0x1E0+var_134]
VMOV.F32        S0, S17
STRD            R0, R1, [SP,#0x1E0+var_130]
STR             R0, [SP,#0x1E0+var_128]
VSTR            S0, [SP,#0x1E0+var_124]
STR             R0, [SP,#0x1E0+var_120]
STRD            R0, R1, [SP,#0x1E0+var_11C]
VSTR            S19, [SP,#0x1E0+var_114]
ADD             R1, SP, #0x1E0+var_108
MOV             R0, SP
BL              sub_141F30
MOV             R2, SP
ADD             R1, SP, #0x1E0+var_C0
MOV             R0, R2
BL              sub_141F30
MOV             R2, SP
ADD             R1, SP, #0x1E0+var_178
MOV             R0, R2
BL              sub_141F30
MOV             R2, SP
ADD             R1, SP, #0x1E0+var_140
MOV             R0, R2
BL              sub_141F30
MOV             R1, SP
ADD             R2, SP, #0x1E0+var_70
MOV             R0, R1
BL              sub_142344
VLDR            S0, [SP,#0x1E0+var_80]
VLDR            S1, [SP,#0x1E0+var_D8]
VLDR            S19, [SP,#0x1E0+var_1D4]
VLDR            S20, [SP,#0x1E0+var_1C4]
VSUB.F32        S0, S0, S1
VNEG.F32        S22, S19
VNEG.F32        S23, S20
ADD             R1, SP, #0x1E0+var_CC
ADD             R0, SP, #0x1E0+var_178
BL              sub_4630DC
MOV             R0, #0
MOV             R1, #0x3F800000
STR             R0, [SP,#0x1E0+var_1A4]
STR             R1, [SP,#0x1E0+var_1A8]
STR             R0, [SP,#0x1E0+var_1A0]
VSTR            S22, [SP,#0x1E0+var_19C]
STRD            R0, R1, [SP,#0x1E0+var_198]
STR             R0, [SP,#0x1E0+var_190]
VSTR            S23, [SP,#0x1E0+var_18C]
STR             R0, [SP,#0x1E0+var_188]
STRD            R0, R1, [SP,#0x1E0+var_184]
VSTR            S18, [SP,#0x1E0+var_17C]
STR             R0, [SP,#0x1E0+var_13C]
STR             R1, [SP,#0x1E0+var_140]
STR             R0, [SP,#0x1E0+var_138]
VSTR            S19, [SP,#0x1E0+var_134]
STRD            R0, R1, [SP,#0x1E0+var_130]
B               loc_159E50
DCFS 0.7
DCFS 2.0
DCFS -1.0
DCD 0x437A0000
DCFS 250.0
DCFS -4.5
DCFS -4.0
STR             R0, [SP,#0x1E0+var_128]
VSTR            S20, [SP,#0x1E0+var_124]
STR             R0, [SP,#0x1E0+var_120]
STRD            R0, R1, [SP,#0x1E0+var_11C]
MOV             R2, SP
VSTR            S18, [SP,#0x1E0+var_114]
ADD             R1, SP, #0x1E0+var_1A8
MOV             R0, R2
BL              sub_141F30
MOV             R2, SP
ADD             R1, SP, #0x1E0+var_178
MOV             R0, R2
BL              sub_141F30
LDR             R0, [R4,#0x18]
MOV             R2, SP
ADD             R1, SP, #0x1E0+var_140
BL              sub_141F30
VSTR            S18, [SP,#0x1E0+var_BC]
VSTR            S18, [SP,#0x1E0+var_B8]
VMOV.F32        S18, S26
VSTR            S27, [SP,#0x1E0+var_B4]
VSTR            S25, [SP,#0x1E0+var_148]
ADD             R1, SP, #0x1E0+var_E8
MOV             R0, #0
VSTM            R1, {S16-S18}
VNEG.F32        S19, S16
STR             R0, [SP,#0x1E0+var_144]
STR             R0, [SP,#0x1E0+var_140]
STR             R0, [SP,#0x1E0+var_13C]
STR             R0, [SP,#0x1E0+var_138]
VSTR            S24, [SP,#0x1E0+var_134]
STR             R0, [SP,#0x1E0+var_130]
STR             R0, [SP,#0x1E0+var_12C]
STR             R0, [SP,#0x1E0+var_128]
STR             R0, [SP,#0x1E0+var_124]
VSTR            S21, [SP,#0x1E0+var_120]
VNEG.F32        S20, S17
STR             R0, [SP,#0x1E0+var_11C]
VLDR            S0, [SP,#0x1E0+var_D8]
ADD             R1, SP, #0x1E0+var_BC
ADD             R0, SP, #0x1E0+var_88
BL              sub_4630DC
VMOV.F32        S0, S28
ADD             R1, SP, #0x1E0+var_BC
ADD             R0, SP, #0x1E0+var_1A8
BL              sub_4630DC
MOV             R0, #0
MOV             R1, #0x3F800000
STR             R0, [SP,#0x1E0+var_1DC]
STR             R1, [SP,#0x1E0+var_1E0]
STR             R0, [SP,#0x1E0+var_1D8]
VSTR            S19, [SP,#0x1E0+var_1D4]
STRD            R0, R1, [SP,#0x1E0+var_1D0]
STR             R0, [SP,#0x1E0+var_1C8]
VSTR            S20, [SP,#0x1E0+var_1C4]
STR             R0, [SP,#0x1E0+var_1C0]
STRD            R0, R1, [SP,#0x1E0+var_1BC]
VSTR            S18, [SP,#0x1E0+var_1B4]
STR             R0, [SP,#0x1E0+var_114]
STR             R1, [SP,#0x1E0+var_118]
STR             R0, [SP,#0x1E0+var_110]
VSTR            S16, [SP,#0x1E0+var_10C]
STRD            R0, R1, [SP,#0x1E0+var_108]
STR             R0, [SP,#0x1E0+var_100]
VSTR            S17, [SP,#0x1E0+var_FC]
STR             R0, [SP,#0x1E0+var_F8]
STRD            R0, R1, [SP,#0x1E0+var_F4]
VSTR            S18, [SP,#0x1E0+var_EC]
MOV             R2, SP
ADD             R1, SP, #0x1E0+var_1A8
ADD             R0, SP, #0x1E0+var_178
BL              sub_141F30
ADD             R2, SP, #0x1E0+var_178
ADD             R1, SP, #0x1E0+var_148
MOV             R0, R2
BL              sub_141F30
ADD             R2, SP, #0x1E0+var_178
ADD             R1, SP, #0x1E0+var_88
MOV             R0, R2
BL              sub_141F30
ADD             R2, SP, #0x1E0+var_178
ADD             R1, SP, #0x1E0+var_118
MOV             R0, R2
BL              sub_141F30
LDR             R0, [R4,#0x1C]
ADD             R2, SP, #0x1E0+var_E8
ADD             R1, SP, #0x1E0+var_178
BL              sub_142344
ADD             SP, SP, #0x194
VPOP            {D8-D15}
POP             {R4,R5,PC}
