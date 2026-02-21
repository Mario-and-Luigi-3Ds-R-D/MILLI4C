PUSH            {R4-R10,LR}
MOV             R5, R0
ADD             R9, R0, #0x4C ; 'L'
LDR             R10, =off_63ED8C
VPUSH           {D8-D14}
LDM             R0, {R4,R7}
LDR             R6, [R10,#(dword_63ED90 - 0x63ED8C)]
LDR             R8, [R10]; sub_28E674
CMP             R4, R7
BEQ             loc_28E1CC
ADD             R2, R4, R6,ASR#1
TST             R6, #1
LDRNE           R0, [R2]
MOVEQ           R0, R8
MOV             R1, R9
LDRNE           R0, [R0,R8]
MOV             R3, R0
MOV             R0, R2
BLX             R3
ADD             R4, R4, #0x2C ; ','
CMP             R4, R7
BNE             loc_28E19C
ADD             R4, R5, #0x10
LDR             R6, [R10,#(dword_63ED98 - 0x63ED8C)]
LDM             R4, {R4,R7}
ADD             R9, R5, #0x4C ; 'L'
LDR             R8, [R10,#(off_63ED94 - 0x63ED8C)]; sub_28E454
CMP             R4, R7
BEQ             loc_28E218
ADD             R3, R4, R6,ASR#1
TST             R6, #1
LDRNE           R0, [R3]
MOVEQ           R0, R8
MOV             R1, R9
LDRNE           R0, [R0,R8]
MOV             R2, R0
MOV             R0, R3
BLX             R2
ADD             R4, R4, #0xC
CMP             R4, R7
BNE             loc_28E1E8
LDR             R8, [R10,#(off_63ED9C - 0x63ED8C)]!; loc_28E564
LDM             R5, {R4,R7}
ADD             R9, R5, #0x4C ; 'L'
LDR             R6, [R10,#(dword_63EDA0 - 0x63ED9C)]
CMP             R4, R7
BEQ             loc_28E260
ADD             R3, R4, R6,ASR#1
TST             R6, #1
LDRNE           R0, [R3]
MOVEQ           R0, R8
MOV             R1, R9
LDRNE           R0, [R0,R8]
MOV             R2, R0
MOV             R0, R3
BLX             R2
ADD             R4, R4, #0x2C ; ','
CMP             R4, R7
BNE             loc_28E230
LDRB            R0, [R5,#0x48]
CMP             R0, #0
BEQ             loc_28E3E0
ADD             R0, R5, #0x20 ; ' '
LDR             R1, [R5]
LDM             R0, {R0,R2}
CMP             R2, R0
BEQ             loc_28E2A0
LDM             R1, {R3,R4,R12}
MOV             R2, R0
ADD             R0, R0, #0xC
ADD             R1, R1, #0x2C ; ','
STM             R2, {R3,R4,R12}
LDR             R2, [R5,#0x24]
CMP             R2, R0
BNE             loc_28E280
LDR             R0, [R5]
LDR             R1, [R5,#0x20]
ADD             R4, R0, #0x2C ; ','
LDM             R0, {R2,R3,R12}
ADD             R7, R1, #0xC
STM             R1, {R2,R3,R12}
ADD             R3, R0, #4
LDR             R1, [R5,#0x10]
LDR             R2, [R5,#0x24]
VLDR            S19, [R0]
VLDM            R3, {S25-S26}
CMP             R2, R7
VLDR            S27, [R1,#8]
BEQ             loc_28E3B0
LDR             R6, =dword_6E1330
LDR             R8, =0xC0800001
VLDR            S28, =0.0
LDR             R0, [R5,#4]
VMOV.F32        S16, S28
CMP             R0, R4
BEQ             loc_28E3A0
VLDR            S20, [R4]
ADD             R0, R4, #4
VSUB.F32        S0, S19, S20
VLDM            R0, {S17-S18}
LDR             R0, [R6]
VSUB.F32        S1, S26, S18
TST             R0, #1
VMUL.F32        S2, S0, S0
VSUB.F32        S0, S25, S17
VMLA.F32        S2, S0, S0
VMLA.F32        S2, S1, S1
VSQRT.F32       S24, S2
BNE             loc_28E358
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_28E358
VMOV.F32        S0, S28
LDR             R0, =flt_711FE4
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
VSUB.F32        S0, S27, S16
VCMPE.F32       S24, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_28E3E8
VSUB.F32        S3, S20, S19
VDIV.F32        S1, S0, S24
VSUB.F32        S0, S18, S26
VSUB.F32        S2, S17, S25
VMOV            R0, S1
ADD             R0, R0, R8
VMLA.F32        S19, S1, S3
CMP             R0, #1
VMLA.F32        S26, S1, S0
VMLA.F32        S25, S1, S2
ADD             R0, R7, #4
ADDLS           R4, R4, #0x2C ; ','
VSTR            S19, [R7]
VSTM            R0, {S25-S26}
ADD             R7, R7, #0xC
LDR             R0, [R5,#0x24]
CMP             R0, R7
BNE             loc_28E2E4
ADD             R0, R5, #0x20 ; ' '
LDR             R1, [R5]
LDM             R0, {R0,R2}
CMP             R2, R0
BEQ             loc_28E3E0
LDM             R0!, {R3,R4,R12}
MOV             R2, R1
ADD             R1, R1, #0x2C ; ','
STM             R2, {R3,R4,R12}
LDR             R2, [R5,#0x24]
CMP             R2, R0
BNE             loc_28E3C4
VPOP            {D8-D14}
POP             {R4-R10,PC}
VADD.F32        S16, S16, S24
VMOV.F32        S19, S20
VMOV.F32        S25, S17
VMOV.F32        S26, S18
LDR             R0, [R5,#4]
ADD             R4, R4, #0x2C ; ','
CMP             R0, R4
BNE             loc_28E2F4
B               loc_28E3A0
