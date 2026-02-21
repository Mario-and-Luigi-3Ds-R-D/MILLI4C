PUSH            {R4,R5,LR}
MOVS            R5, R1
MOV             R4, R0
VPUSH           {D8-D13}
SUB             SP, SP, #0xC
VLDR            S23, =0.0
VLDR            S17, =1.5
VLDR            S18, =0.5
VMOV.F32        S16, S23
VLDR            S25, =1.0
BEQ             loc_236710
CMP             R5, #1
VMOVEQ.F32      S16, S17
BEQ             loc_236710
CMP             R5, #2
VMOVEQ.F32      S16, S25
BEQ             loc_236710
CMP             R5, #3
VMOVEQ.F32      S16, S18
VSTR            S16, [R4,#0xC8]
VMOV.F32        S1, S16
VLDR            S0, [R4,#0xC0]
BL              sub_5982EC
VABS.F32        S19, S0
VCMPE.F32       S0, S23
VMRS            APSR_nzcv, FPSCR
VLDR            S26, =16.0
VLDR            S24, =8.0
VSTRGT          S17, [R4,#0xCC]
VSTRLE          S18, [R4,#0xCC]
LDR             R0, [R4,#4]
VLDR            S5, [R4,#0x7C]
VLDR            S3, [R4,#0x80]
ADD             R0, R0, #0x108
VLDR            S0, [R4,#0x84]
VLDR            S4, [R0]
VLDR            S2, [R0,#4]
VLDR            S1, [R0,#8]
VADD.F32        S21, S4, S5
VADD.F32        S22, S2, S3
VADD.F32        S20, S1, S0
LDR             R0, =dword_6E1330
VLDR            S27, =35.0
LDR             R0, [R0]
VMOV.F32        S17, S21
VMOV.F32        S18, S22
TST             R0, #1
BNE             loc_2367B0
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_2367B0
LDR             R0, =flt_711FE4
VSTR            S23, [R0]
VSTR            S23, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S23, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
CMP             R5, #0
LDM             R0, {R1,R2}
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [SP,#0x48+var_40]
STMEA           SP, {R1,R2}
BEQ             loc_2367EC
CMP             R5, #1
BEQ             loc_236804
CMP             R5, #2
VLDR            S1, =-1.0
BEQ             loc_23681C
CMP             R5, #3
BNE             loc_236848
B               loc_236834
VLDR            S0, [R4,#0x78]
VCMPE.F32       S0, S23
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S18, S0
VSTRGE          S25, [SP,#0x48+var_44]
B               loc_236848
VLDR            S0, [R4,#0x6C]
VCMPE.F32       S0, S23
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S17, S0
VSTRGE          S25, [SP,#0x48+var_48]
B               loc_236848
VLDR            S0, [R4,#0x74]
VCMPE.F32       S0, S23
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S18, S0
VSTRGE          S1, [SP,#0x48+var_44]
B               loc_236848
VLDR            S0, [R4,#0x70]
VCMPE.F32       S0, S23
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S17, S0
VSTRGE          S1, [SP,#0x48+var_48]
VMOV.F32        S0, S21
VCMP.F32        S0, S17
VMRS            APSR_nzcv, FPSCR
VMOVEQ.F32      S0, S22
VCMPEQ.F32      S0, S18
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_236878
VMOV.F32        S0, S20
VMOV.F32        S1, S20
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_2368FC
ADD             R5, R4, #0x14
MOV             R0, R5
BL              sub_5A26D0
VMOV.F32        S0, S21
VSUB.F32        S1, S22, S18
VSTR            S0, [R5,#0x1C]
VMOV.F32        S0, S22
VSTR            S0, [R5,#0x20]
VMOV.F32        S0, S20
VSTR            S0, [R5,#0x24]
LDRD            R0, R1, [R5,#0x1C]
STRD            R0, R1, [R5,#4]
VSTR            S0, [R5,#0xC]
VSUB.F32        S0, S21, S17
LDR             R0, =off_6D1648
LDR             R0, [R0]
VMUL.F32        S2, S0, S0
VMOV.F32        S0, S20
VSUB.F32        S0, S0, S20
VMLA.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VSQRT.F32       S0, S2
VNEG.F32        S17, S0
BL              sub_1E4614
ADD             R0, R0, #0x400
VMOV.F32        S1, S23
VLDR            S0, [R0,#0xDC]
MOV             R2, SP
MOV             R1, #0
VNEG.F32        S2, S0
VMOV.F32        S0, S17
ADD             R0, R4, #0x14
BL              sub_5A290C
VABS.F32        S0, S19
LDR             R2, =0x3F19999A
MOV             R1, #8
VMOV            R0, S0
CMP             R0, R2
ADD             R0, R4, #0x100
BLE             loc_236980
VMOV            R2, S16
VDIV.F32        S0, S19, S26
CMP             R2, #0x3F000000
VMOVNE          R2, S16
CMPNE           R2, #0x3FC00000
LDR             R2, [R4,#0x10C]
BIC             R2, R2, #0x30 ; '0'
ORREQ           R2, R2, #0x20 ; ' '
ORRNE           R2, R2, #0x10
TST             R2, #2
STR             R2, [R4,#0x10C]
VSTR            S0, [R4,#0xD0]
MOVEQ           R1, #0x18
STRH            R1, [R0,#0xA]
STRH            R1, [R0,#8]
ADD             R0, R4, #0xD4
BL              sub_5A18EC
VMOV.F32        S1, S27
VMOV.F32        S0, S23
VSTR            S19, [R4,#0xE0]
VSTR            S19, [R4,#0xD8]
ADD             R0, R4, #0xD4
BL              sub_5A14A4
ADD             SP, SP, #0xC
VPOP            {D8-D13}
POP             {R4,R5,PC}
VDIV.F32        S0, S19, S24
LDR             R2, [R4,#0x10C]
BIC             R2, R2, #0x30 ; '0'
STR             R2, [R4,#0x10C]
VSTR            S0, [R4,#0xD0]
B               loc_23694C
