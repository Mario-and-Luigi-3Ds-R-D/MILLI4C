PUSH            {R0-R2,R4-R11,LR}
ADD             R0, R0, R1,LSL#3
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x368
VPUSH           {D8-D9}
LDR             R0, [R0]
CMP             R0, #0
SUBSNE          R5, R0, #0x104
BEQ             loc_188F00
VLDR            S19, =-1.0
VLDR            S16, =0.0
VLDR            S17, =1.0
VLDR            S18, =1.6777e7
LDRB            R0, [R5,#0x110]
CMP             R0, #0
BEQ             loc_188EF0
LDRB            R1, [R5,#0x6D]
LDR             R0, [SP,#0x40+var_28]
LDR             R4, [R5,#4]
MOVS            R7, R1
LDRB            R1, [R5,#0x6F]
MOVNE           R7, #1
ADD             R6, R0, #4
TST             R1, #1
BEQ             loc_188DC8
VLDR            S0, [R5,#0x4C]
CMP             R7, #0
MOVEQ           R0, #0
VNEG.F32        S0, S0
BEQ             loc_188D90
VLDR            S1, [R6,#0x7C]
VLDR            S4, [R6,#0x78]
VLDR            S2, [R6,#0x84]
VLDR            S3, [R6,#0x80]
VMLA.F32        S1, S0, S4
LDR             R1, =0xBF800000
VMLA.F32        S2, S0, S3
VDIV.F32        S0, S1, S2
VMOV            R0, S0
CMP             R0, R1
VMOVHI          R0, S19
BHI             loc_188D7C
VMOV            S0, R0
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVGT          R0, S16
VMOV            S0, R0
VADD.F32        S0, S0, S17
VMUL.F32        S0, S0, S18
VCVT.U32.F32    S0, S0
VMOV            R0, S0
CMP             R7, #0
BEQ             loc_188F5C
BIC             R2, R1, #0x60000000
LDR             R1, =0xE000001F
MOV             R3, #0x1FFFFFFF
ORR             R2, R2, #0xC0000000
AND             R0, R3, R0,LSL#5
AND             R1, R1, R2
ORR             R0, R0, R1
BIC             R0, R0, #0x1F
AND             R12, R4, #3
ORR             R0, R0, #4
ORR             R7, R0, R12
B               loc_188E90
CMP             R7, #0
BEQ             loc_188F0C
VLDR            S0, [R5,#0x2C]
VLDR            S2, [R5,#0x3C]
VLDR            S1, [R5,#0x4C]
CMP             R7, #0
MOVEQ           R0, #0
BEQ             loc_188E5C
VLDR            S10, [R6,#0x68]
VLDR            S5, [R6,#0x6C]
VLDR            S9, [R6,#0x70]
VMUL.F32        S0, S0, S10
VLDR            S8, [R6,#0x74]
VLDR            S4, [R6,#0x7C]
VLDR            S7, [R6,#0x78]
VLDR            S3, [R6,#0x84]
VLDR            S6, [R6,#0x80]
LDR             R1, =0xBF800000
VMLA.F32        S0, S2, S5
VMLA.F32        S0, S1, S9
VADD.F32        S0, S8, S0
VMLA.F32        S4, S0, S7
VMLA.F32        S3, S0, S6
VDIV.F32        S0, S4, S3
VMOV            R0, S0
CMP             R0, R1
VMOVHI          R0, S19
BHI             loc_188E48
VMOV            S0, R0
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVGT          R0, S16
VMOV            S0, R0
VADD.F32        S0, S0, S17
VMUL.F32        S0, S0, S18
VCVT.U32.F32    S0, S0
VMOV            R0, S0
CMP             R7, #0
BEQ             loc_188F5C
LDR             R2, =0xE000001F
BIC             R1, R1, #0x60000000
MOV             R3, #0x1FFFFFFF
ORR             R1, R1, #0xC0000000
AND             R0, R3, R0,LSL#5
AND             R1, R1, R2
ORR             R0, R0, R1
BIC             R0, R0, #0x1F
AND             R12, R4, #3
ORR             R0, R0, #4
ORR             R7, R0, R12
MOV             R0, R6
MOV             R9, #0
LDR             R1, [R0,#0x14]
LDR             R3, [R0,#8]
LDR             R2, [R0,#0x10]
MOV             R8, R5
RSB             R12, R1, R1,LSL#3
MOV             R10, #1
ADD             R4, R3, R12,LSL#2
STR             R4, [R2,R1,LSL#2]
LDR             R1, [R0,#0x14]
MOV             R11, R9
MOV             R6, R9
ADD             R1, R1, #1
STR             R1, [R0,#0x14]
LDR             R0, [R0,#0x1C]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
STRB            R10, [R4]
STR             R6, [R4,#0x14]
STR             R0, [R4,#0x18]
ADD             R4, R4, #4
STM             R4, {R7-R9,R11}
LDR             R0, [R5,#0x10C]
CMP             R0, #0
SUBSNE          R5, R0, #0x104
BNE             loc_188CF8
VPOP            {D8-D9}
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_188F48
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_188F48
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
VLDR            S0, [R0]
VLDR            S2, [R0,#(flt_711FE8 - 0x711FE4)]
VLDR            S1, [R0,#(flt_711FEC - 0x711FE4)]
B               loc_188DDC
BIC             R0, R1, #0x80000000
AND             R0, R0, #0x80000000
BIC             R1, R4, #0xFC000000
ORR             R0, R0, #0x44000000
ORR             R7, R0, R1
B               loc_188E90
