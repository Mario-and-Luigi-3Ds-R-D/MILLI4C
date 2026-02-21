PUSH            {R4,LR}
LDR             R2, =0x45100000
LDR             R3, =0x471C4000
VLDR            S3, =1.0
VLDR            S5, =-28.0
VLDR            S0, =48.0
VPUSH           {D8}
VLDR            S1, [R0,#0xC0]
VLDR            S2, [R1]
LDR             R12, [R0,#0xFC]
VLDR            S16, =200.0
VSUB.F32        S1, S2, S1
VLDR            S6, [R1,#4]
TST             R12, #2
BEQ             loc_15A7E0
VLDR            S7, =-48.0
VSUB.F32        S4, S2, S7
VSUB.F32        S2, S6, S5
VMUL.F32        S6, S4, S4
VMLA.F32        S6, S2, S2
VMOV            R12, S6
CMP             R12, R3
BLE             loc_15A774
VSQRT.F32       S8, S6
VDIV.F32        S0, S3, S8
VMUL.F32        S3, S4, S0
VMUL.F32        S0, S2, S0
VMUL.F32        S2, S3, S16
VMUL.F32        S0, S0, S16
VADD.F32        S2, S2, S7
VADD.F32        S0, S0, S5
VSTR            S2, [R1]
VSTR            S0, [R1,#4]
B               loc_15A7D0
ADD             R3, R0, #0xC0
VLDR            S4, [R1]
VLDR            S2, [R1,#4]
VLDM            R3, {S5-S6}
VSUB.F32        S4, S4, S5
VSUB.F32        S2, S2, S6
VMUL.F32        S5, S4, S4
VMLA.F32        S5, S2, S2
VMOV            R3, S5
CMP             R3, R2
BGE             loc_15A7D0
VSQRT.F32       S6, S5
VDIV.F32        S5, S3, S6
VMUL.F32        S3, S4, S5
VMUL.F32        S2, S2, S5
VLDR            S4, [R0,#0xC4]
VMUL.F32        S3, S3, S0
VMUL.F32        S0, S2, S0
VLDR            S2, [R0,#0xC0]
VADD.F32        S2, S2, S3
VADD.F32        S0, S4, S0
VSTR            S2, [R1]
VSTR            S0, [R1,#4]
VNEG.F32        S1, S1
VLDR            S17, =-160.0
VLDR            S16, =-340.0
B               loc_15A888
VSUB.F32        S4, S2, S0
VSUB.F32        S2, S6, S5
VMUL.F32        S6, S4, S4
VMLA.F32        S6, S2, S2
VMOV            R12, S6
CMP             R12, R3
BLE             loc_15A828
VSQRT.F32       S7, S6
VDIV.F32        S6, S3, S7
VMUL.F32        S3, S4, S6
VMUL.F32        S2, S2, S6
VMUL.F32        S3, S3, S16
VMUL.F32        S4, S2, S16
VADD.F32        S2, S3, S0
VADD.F32        S0, S4, S5
VSTR            S2, [R1]
VSTR            S0, [R1,#4]
B               loc_15A884
ADD             R3, R0, #0xC0
VLDR            S4, [R1]
VLDR            S2, [R1,#4]
VLDM            R3, {S5-S6}
VSUB.F32        S4, S4, S5
VSUB.F32        S2, S2, S6
VMUL.F32        S5, S4, S4
VMLA.F32        S5, S2, S2
VMOV            R3, S5
CMP             R3, R2
BGE             loc_15A884
VSQRT.F32       S6, S5
VDIV.F32        S5, S3, S6
VMUL.F32        S3, S4, S5
VMUL.F32        S2, S2, S5
VLDR            S4, [R0,#0xC4]
VMUL.F32        S3, S3, S0
VMUL.F32        S2, S2, S0
VLDR            S0, [R0,#0xC0]
VADD.F32        S0, S0, S3
VADD.F32        S2, S4, S2
VSTR            S0, [R1]
VSTR            S2, [R1,#4]
VLDR            S17, =20.0
VLDR            S0, [R0,#0xC4]
VLDR            S2, [R1,#4]
VSUB.F32        S0, S0, S2
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S2, =0.000015259
UXTH            R0, R0
VMOV            S0, R0
VLDR            S3, =360.0
VLDR            S1, =270.0
LDR             R1, =0x43B40000
VLDR            S4, =0.0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S3
VADD.F32        S2, S0, S1
VADD.F32        S0, S17, S1
VMOV            R0, S2
VCMPE.F32       S0, S4
CMP             R0, R1
VSUBGT.F32      S2, S2, S3
LDR             R0, =0x43340000
VMOV            R2, S2
CMP             R2, R0
VSUBGT.F32      S2, S2, S3
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S0, S0, S3
BCC             loc_15A904
VMOV            R2, S0
CMP             R2, R1
VSUBGT.F32      S0, S0, S3
VADD.F32        S1, S16, S1
VMOV            R2, S0
VCMPE.F32       S1, S4
CMP             R2, R0
VSUBGT.F32      S0, S0, S3
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S1, S1, S3
BCC             loc_15A930
VMOV            R2, S1
CMP             R2, R1
VSUBGT.F32      S1, S1, S3
VMOV            R1, S1
CMP             R1, R0
VSUBGT.F32      S1, S1, S3
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_15A954
VMOV.F32        S3, S0
VMOV.F32        S0, S1
VMOV.F32        S1, S3
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VCMPECS.F32     S2, S1
VMRSCS          APSR_nzcv, FPSCR
VPOP            {D8}
MOVCC           R0, #1
MOVCS           R0, #0
POP             {R4,PC}
