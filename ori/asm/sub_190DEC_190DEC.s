PUSH            {R4-R12,LR}
CMP             R3, #0xFF
MOV             R4, R0
MOV             R6, R1
VPUSH           {D8-D9}
BEQ             loc_190EBC
LDRB            R0, [R6,#0x6F]
LDR             R10, =0xBF800000
LDR             R8, =0xE000001F
LDR             R7, [R6,#4]
VLDR            S17, =-1.0
VLDR            S18, =1.0
VLDR            S19, =1.6777e7
VLDR            S16, =0.0
TST             R0, #1
MOV             R9, #0x1FFFFFFF
BEQ             loc_190EDC
VLDR            S0, [R6,#0x4C]
CMP             R3, #0
MOVEQ           R0, #0
VNEG.F32        S0, S0
BEQ             loc_190E8C
VLDR            S1, [R4,#0x7C]
VLDR            S4, [R4,#0x78]
VLDR            S2, [R4,#0x84]
VLDR            S3, [R4,#0x80]
VMLA.F32        S1, S0, S4
VMLA.F32        S2, S0, S3
VDIV.F32        S0, S1, S2
VMOV            R0, S0
CMP             R0, R10
VMOVHI.F32      S0, S17
BHI             loc_190E7C
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S16
VADD.F32        S0, S0, S18
VMUL.F32        S0, S0, S19
VCVT.U32.F32    S0, S0
VMOV            R0, S0
CMP             R3, #0
BEQ             loc_190ED0
BIC             R1, R6, #0x60000000
ORR             R1, R1, #0xA0000000
AND             R0, R9, R0,LSL#5
AND             R1, R1, R8
ORR             R0, R0, R1
BIC             R0, R0, #0x1F
AND             R2, R7, #3
ORR             R0, R0, #4
ORR             R7, R0, R2
B               loc_190F90
LDRB            R0, [R6,#0x6D]
CMP             R0, #0
MOVNE           R3, #1
MOVEQ           R3, #0
B               loc_190E04
BIC             R1, R7, #0xFC000000
ORR             R7, R1, #0x24000000
B               loc_190F90
MOVS            R5, R3
BEQ             loc_190FF4
VLDR            S0, [R6,#0x2C]
VLDR            S1, [R6,#0x3C]
VLDR            S2, [R6,#0x4C]
CMP             R5, #0
MOVEQ           R0, #0
BEQ             loc_190F64
VLDR            S10, [R4,#0x68]
ADD             R0, R4, #0x6C ; 'l'
VLDR            S7, [R4,#0x74]
VMUL.F32        S0, S0, S10
VLDM            R0, {S8-S9}
ADD             R0, R4, #0x7C ; '|'
VLDR            S6, [R4,#0x78]
VLDR            S3, [R4,#0x84]
VLDM            R0, {S4-S5}
VMLA.F32        S0, S1, S8
VMLA.F32        S0, S2, S9
VADD.F32        S0, S7, S0
VMLA.F32        S4, S0, S6
VMLA.F32        S3, S0, S5
VDIV.F32        S0, S4, S3
VMOV            R0, S0
CMP             R0, R10
VMOVHI.F32      S0, S17
BHI             loc_190F54
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S16
VADD.F32        S0, S0, S18
VMUL.F32        S0, S0, S19
VCVT.U32.F32    S0, S0
VMOV            R0, S0
CMP             R5, #0
BEQ             loc_19103C
BIC             R1, R1, #0x60000000
ORR             R1, R1, #0xA0000000
AND             R0, R9, R0,LSL#5
AND             R1, R1, R8
ORR             R0, R0, R1
BIC             R0, R0, #0x1F
AND             R2, R7, #3
ORR             R0, R0, #4
ORR             R7, R0, R2
LDR             R0, [R4,#0x14]
LDR             R2, [R4,#8]
LDR             R1, [R4,#0x10]
MOV             R8, #0
RSB             R3, R0, R0,LSL#3
MOV             R10, #1
ADD             R5, R2, R3,LSL#2
STR             R5, [R1,R0,LSL#2]
LDR             R0, [R4,#0x14]
MOV             R9, R8
MOV             R11, R8
ADD             R0, R0, #1
STR             R0, [R4,#0x14]
LDR             R0, [R4,#0x1C]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
STRB            R10, [R5]
STR             R0, [R5,#0x18]
ADD             R0, R5, #8
STR             R7, [R5,#4]
STM             R0, {R6,R8,R9,R11}
MOV             R0, R5
VPOP            {D8-D9}
POP             {R4-R12,PC}
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_191030
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_191030
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
VLDM            R0, {S0-S2}
B               loc_190EF0
BIC             R0, R1, #0x80000000
AND             R0, R0, #0x80000000
BIC             R1, R7, #0xFC000000
ORR             R0, R0, #0x24000000
ORR             R7, R0, R1
B               loc_190F90
