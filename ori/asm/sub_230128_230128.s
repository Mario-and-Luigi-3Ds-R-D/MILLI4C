PUSH            {R4-R10,LR}
CMP             R1, #0
MOV             R7, R0
MOV             R6, R2
MOV             R5, R3
VPUSH           {D8-D10}
ADD             R0, SP, #0x38+arg_0
VMOV.F32        S16, S0
VMOV.F32        S19, S1
VMOV.F64        D10, D1
VMOV.F32        S17, S4
LDM             R0, {R8,R10}
ADDNE           R0, R7, #0x10C
LDR             R4, [SP,#0x38+arg_8]
VLDR            S18, =0.0
VLDRNE          S0, [R7,#0x108]
BNE             loc_2301AC
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_2301A4
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_2301A4
LDR             R0, =flt_711FE4
VSTR            S18, [R0]
VSTR            S18, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S18, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
VLDM            R0!, {S0}
MOV             R9, #0
VLDM            R0, {S4-S5}
CMP             R5, #0
VSTR            S18, [R4,#0x14]
MOV             R2, R9
STRB            R9, [R4,#0x11]
BLS             loc_230234
ADD             R1, R2, R2,LSL#1
LDRB            R12, [R4,#0x11]
ADD             R1, R6, R1,LSL#2
LDR             R3, [R4,#0x18]
VLDR            S3, [R1]
VLDR            S2, [R1,#4]
VLDR            S1, [R1,#8]
VADD.F32        S3, S3, S0
ADD             R1, R3, R12,LSL#2
VADD.F32        S2, S2, S4
VADD.F32        S1, S1, S5
ADD             R0, R4, #0x10
ADD             R2, R2, #1
CMP             R5, R2
VSTR            S3, [R1]
LDRB            R3, [R4,#0x11]
LDR             R1, [R4,#0x1C]
ADD             R1, R1, R3,LSL#2
VSTR            S2, [R1]
LDRB            R3, [R0,#1]
LDR             R1, [R0,#0x10]
ADD             R1, R1, R3,LSL#2
VSTR            S1, [R1]
LDRB            R1, [R0,#1]
ADD             R1, R1, #1
STRB            R1, [R0,#1]
BHI             loc_2301C8
ADD             R0, R4, #0x10
BL              sub_61E81C
VCMPE.F32       S16, S18
VMRS            APSR_nzcv, FPSCR
ADDGT           R0, R4, #0x1F8
VSTMGT          R0, {S19-S21}
BGT             loc_230270
LDR             R1, [R7,#0x484]
ADD             R0, R7, #0x400
VLDR            S16, [R0,#0x7C]
STR             R1, [R4,#0x1F8]
LDR             R1, [R7,#0x48C]
STR             R1, [R4,#0x1FC]
LDR             R0, [R7,#0x494]
STR             R0, [R4,#0x200]
VLDR            S1, [R4,#0x14]
VLDR            S5, =1.0
LDRB            R0, [R4]
VDIV.F32        S0, S1, S16
LDRH            R1, [R4,#2]
BIC             R0, R0, #0xE
VLDR            S4, [R4,#0x1F8]
VLDR            S3, [R4,#0x1FC]
VLDR            S2, [R4,#0x200]
ORR             R2, R0, #1
VSTR            S17, [R4,#8]
MOV             R0, R1,LSR#13
VSTR            S17, [R4,#0xC]
MOV             R0, R0,LSL#13
ORR             R1, R2, R8,LSL#3
STRB            R9, [R4,#1]
BIC             R2, R0, #0x2000
STR             R9, [R4,#4]
VDIV.F32        S1, S5, S0
STRH            R2, [R4,#2]
BIC             R0, R1, #0x30 ; '0'
ORR             R0, R0, R10,LSL#5
BIC             R0, R0, #0xC0
VSTR            S1, [R4,#0x1F4]
STRB            R0, [R4]
MOV             R0, #1
VDIV.F32        S0, S1, S16
VMUL.F32        S1, S4, S0
VMUL.F32        S3, S3, S0
VMUL.F32        S0, S2, S0
VSTR            S1, [R4,#0x1F8]
VSTR            S3, [R4,#0x1FC]
VSTR            S0, [R4,#0x200]
VPOP            {D8-D10}
POP             {R4-R10,PC}
