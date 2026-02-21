PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R7, R1
MOV             R6, R2
VPUSH           {D8-D12}
VMOV.F32        S16, S0
SUB             SP, SP, #0x10
MOV             R5, R3
VLDR            S4, [R3]
VLDR            S5, [R2]
VLDR            S2, [R3,#4]
VLDR            S3, [R2,#4]
VLDR            S0, [R3,#8]
VLDR            S1, [R2,#8]
VSUB.F32        S25, S4, S5
VSUB.F32        S23, S2, S3
VSUB.F32        S24, S0, S1
VMOV.F32        S17, S5
VMOV.F32        S18, S3
VMOV.F32        S19, S1
VMOV.F32        S20, S4
VMOV.F32        S21, S2
VMOV.F32        S22, S0
LDR             R8, [SP,#0x50+arg_0]
BL              sub_4635D8
VLDR            S0, [R0]
VCMP.F32        S25, S0
VMRS            APSR_nzcv, FPSCR
VLDREQ          S0, [R0,#4]
VCMPEQ.F32      S23, S0
VMRSEQ          APSR_nzcv, FPSCR
VLDREQ          S0, [R0,#8]
VCMPEQ.F32      S24, S0
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_28CB38
VMUL.F32        S0, S25, S25
VLDR            S1, =1.0
VMLA.F32        S0, S23, S23
VMLA.F32        S0, S24, S24
VSQRT.F32       S2, S0
VDIV.F32        S0, S1, S2
VMUL.F32        S2, S25, S0
VMUL.F32        S1, S23, S0
VMUL.F32        S0, S24, S0
VMUL.F32        S2, S2, S16
VMUL.F32        S1, S1, S16
VMUL.F32        S0, S0, S16
VSUB.F32        S17, S17, S2
VSUB.F32        S18, S18, S1
VSUB.F32        S19, S19, S0
VADD.F32        S20, S20, S2
VADD.F32        S21, S21, S1
VADD.F32        S22, S22, S0
VLDR            S6, [R4]
ADD             R0, R4, #4
VLDR            S5, [R7]
VLDR            S0, [R7,#8]
VSUB.F32        S11, S6, S17
VLDM            R0, {S3-S4}
VSUB.F32        S9, S5, S6
VSUB.F32        S2, S20, S17
VLDR            S1, [R7,#4]
VSUB.F32        S8, S21, S18
VSUB.F32        S5, S0, S4
VSUB.F32        S1, S1, S3
VLDR            S0, [R4,#8]
VLDR            S3, [R4,#4]
VSUB.F32        S10, S22, S19
VSUB.F32        S7, S0, S19
VSUB.F32        S6, S3, S18
VMUL.F32        S0, S11, S2
VMUL.F32        S3, S2, S2
VMUL.F32        S2, S9, S2
VLDR            S4, =0.0
VMLA.F32        S0, S6, S8
VMLA.F32        S3, S8, S8
VMLA.F32        S2, S1, S8
VMLA.F32        S0, S7, S10
VMLA.F32        S3, S10, S10
VMLA.F32        S2, S5, S10
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S8, S0, S2
VCMPECC.F32     S8, S4
VMRSCC          APSR_nzcv, FPSCR
BCC             loc_28CCB8
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VADDGT.F32      S8, S0, S2
VCMPEGT.F32     S8, S3
VMRSGT          APSR_nzcv, FPSCR
BGT             loc_28CCB8
VMUL.F32        S8, S11, S11
VMUL.F32        S10, S9, S9
VMUL.F32        S9, S11, S9
VMLA.F32        S8, S6, S6
VMLA.F32        S10, S1, S1
VMLA.F32        S9, S6, S1
VMLA.F32        S8, S7, S7
VMLA.F32        S10, S5, S5
VMLA.F32        S9, S7, S5
VMLS.F32        S8, S16, S16
VMUL.F32        S1, S3, S10
VMUL.F32        S6, S3, S8
VMLS.F32        S1, S2, S2
VMLS.F32        S6, S0, S0
VCMPE.F32       S1, S4
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S5, S1
VNEGCC.F32      S5, S5
VMOV            R0, S5
CMP             R0, #0x34000000
BGE             loc_28CC54
VCMPE.F32       S6, S4
VMRS            APSR_nzcv, FPSCR
BGT             loc_28CCB8
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
BCC             loc_28CCC8
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VSTRLE          S4, [R8]
BGT             loc_28CD00
B               loc_28CD2C
VMUL.F32        S5, S3, S9
VMLS.F32        S5, S2, S0
VMUL.F32        S7, S5, S5
VMLS.F32        S7, S1, S6
VCMPE.F32       S7, S4
VMRS            APSR_nzcv, FPSCR
BCC             loc_28CCB8
VNEG.F32        S5, S5
VSQRT.F32       S6, S7
VSUB.F32        S6, S5, S6
VDIV.F32        S5, S6, S1
VSTR            S5, [R8]
VCMPE.F32       S5, S4
VMRS            APSR_nzcv, FPSCR
BCC             loc_28CCB8
VMOV            R0, S5
CMP             R0, #0x3F800000
BGT             loc_28CCB8
VMLA.F32        S0, S5, S2
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
BCS             loc_28CCF4
VCMPE.F32       S2, S4
VMRS            APSR_nzcv, FPSCR
BHI             loc_28CCC8
ADD             SP, SP, #0x10
MOV             R0, #0
VPOP            {D8-D12}
POP             {R4-R8,PC}
ADD             R0, SP, #0x50+var_4C
VMOV.F32        S0, S16
STR             R0, [SP,#0x50+var_50]
MOV             R3, R8
MOV             R2, R6
MOV             R1, R7
MOV             R0, R4
BL              sub_28C9B8
ADD             SP, SP, #0x10
VPOP            {D8-D12}
POP             {R4-R8,PC}
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
BLE             loc_28CD2C
ADD             R0, SP, #0x50+var_4C
VMOV.F32        S0, S16
STR             R0, [SP,#0x50+var_50]
MOV             R3, R8
MOV             R2, R5
MOV             R1, R7
MOV             R0, R4
BL              sub_28C9B8
ADD             SP, SP, #0x10
VPOP            {D8-D12}
POP             {R4-R8,PC}
ADD             SP, SP, #0x10
MOV             R0, #1
VPOP            {D8-D12}
POP             {R4-R8,PC}
