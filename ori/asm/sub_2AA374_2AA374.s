PUSH            {R4-R7,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0xC
LDRB            R0, [R0,#0x38]
CMP             R0, #0
BEQ             loc_2AA6B8
LDR             R5, =off_6D1648
MOV             R6, #1
LDR             R0, [R5]
LDRB            R0, [R0,#0xD4]
TST             R0, #1
BEQ             loc_2AA3C8
LDR             R0, [R4,#0xC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x18
LDR             R0, [R0]
BL              sub_5DA460
CMN             R0, #1
STRBEQ          R6, [R4,#0x99]
BEQ             loc_2AA3D0
MOV             R0, #0
STRB            R0, [R4,#0x99]
LDRB            R0, [R4,#0x10]
LDR             R7, =0xF0001FFB
VLDR            S16, =0.0
CMP             R0, #0
BNE             loc_2AA464
LDR             R0, [R4,#0xC]
MOV             R3, R7
MOV             R2, SP
LDR             R1, [R0]
LDR             R12, [R1,#0x74]
ADD             R1, SP, #0x28+var_24
BLX             R12
LDR             R0, [R5]
LDRB            R0, [R0,#0xD4]
TST             R0, #4
BEQ             loc_2AA464
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_2AA44C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_2AA44C
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R2, =flt_711FE4
ADD             R3, R4, #0x14
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
STRB            R6, [R4,#0x10]
B               loc_2AA470
LDRB            R0, [R4,#0x10]
CMP             R0, #1
BNE             loc_2AA6B8
LDR             R0, [R4,#0xC]
MOV             R3, R7
MOV             R2, SP
LDR             R1, [R0]
LDR             R12, [R1,#0x74]
ADD             R1, SP, #0x28+var_24
BLX             R12
LDR             R0, [R5]
LDRB            R1, [R0,#0xD4]
TST             R1, #1
TSTNE           R1, #2
LDRBNE          R1, [R4,#0x99]
CMPNE           R1, #0
BEQ             loc_2AA588
LDRH            R1, [R0,#0xD0]
LDRH            R2, [R0,#0xCC]
LDRH            R3, [R0,#0xCE]
LDRH            R12, [R0,#0xD2]
SUB             R0, R1, R2
VMOV            S1, R0
SUB             R1, R3, R12
VMOV            S0, R1
VLDR            S4, =4.0
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VSTR            S1, [R4,#0x14]
VMOV.F32        S5, S1
VSTR            S0, [R4,#0x18]
VMOV.F32        S3, S0
VSTR            S16, [R4,#0x1C]
VMUL.F32        S6, S5, S5
VCMPE.F32       S5, S16
VMLA.F32        S6, S3, S3
VMLA.F32        S6, S16, S16
VSQRT.F32       S2, S6
VDIV.F32        S6, S5, S2
VDIV.F32        S7, S3, S2
VMUL.F32        S2, S6, S4
VMUL.F32        S4, S7, S4
VSTR            S2, [R4,#0x20]
VMRS            APSR_nzcv, FPSCR
VSTR            S4, [R4,#0x24]
VSTR            S16, [R4,#0x28]
VMOVGT.F32      S6, S16
VCMPEGT.F32     S2, S6
VMRSGT          APSR_nzcv, FPSCR
BGT             loc_2AA544
VMOV.F32        S6, S16
VCMPE.F32       S1, S6
VMRS            APSR_nzcv, FPSCR
VCMPECC.F32     S2, S6
VMRSCC          APSR_nzcv, FPSCR
BCS             loc_2AA54C
VNEG.F32        S2, S2
VSTR            S2, [R4,#0x20]
VMOV.F32        S2, S16
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
VCMPEGT.F32     S4, S2
VMRSGT          APSR_nzcv, FPSCR
BGT             loc_2AA578
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VCMPECC.F32     S4, S2
VMRSCC          APSR_nzcv, FPSCR
BCS             loc_2AA580
VNEG.F32        S2, S4
VSTR            S2, [R4,#0x24]
VMOV.F32        S2, S16
B               loc_2AA594
VLDR            S1, [R4,#0x14]
VLDR            S0, [R4,#0x18]
VLDR            S2, [R4,#0x1C]
LDR             R0, [R4,#0xC]
VCMP.F32        S1, S16
VLDR            S3, [R0,#0x24]
VADD.F32        S3, S3, S1
VSTR            S3, [R0,#0x24]
LDR             R0, [R4,#0xC]
VLDR            S4, [R4,#0x18]
VLDR            S3, [R0,#0x28]
VADD.F32        S3, S3, S4
VSTR            S3, [R0,#0x28]
VLDR            S3, [R4,#0x14]
VLDR            S4, [R4,#0x20]
VADD.F32        S3, S3, S4
VSTR            S3, [R4,#0x14]
VLDR            S3, [R4,#0x18]
VLDR            S4, [R4,#0x24]
VADD.F32        S3, S3, S4
VSTR            S3, [R4,#0x18]
VLDR            S3, [R4,#0x1C]
VLDR            S4, [R4,#0x28]
VADD.F32        S3, S3, S4
VMRS            APSR_nzcv, FPSCR
VSTR            S3, [R4,#0x1C]
BEQ             loc_2AA62C
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_2AA610
VLDR            S4, [R4,#0x14]
VCMPE.F32       S4, S16
VMRS            APSR_nzcv, FPSCR
BCC             loc_2AA62C
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_2AA630
VLDR            S1, [R4,#0x14]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_2AA630
VSTR            S16, [R4,#0x14]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_2AA674
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_2AA658
VLDR            S1, [R4,#0x18]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BCC             loc_2AA674
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_2AA678
VLDR            S0, [R4,#0x18]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_2AA678
VSTR            S16, [R4,#0x18]
VCMP.F32        S2, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_2AA6B4
VCMPE.F32       S2, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_2AA69C
VCMPE.F32       S3, S16
VMRS            APSR_nzcv, FPSCR
BCC             loc_2AA6B4
VCMPE.F32       S2, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_2AA6B8
VCMPE.F32       S3, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_2AA6B8
VSTR            S16, [R4,#0x1C]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
