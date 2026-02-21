PUSH            {R4-R11,LR}
MOV             R6, R0
MOV             R5, #0
MOV             R9, #1
LDR             R10, =off_6CE970
LDR             R8, =unk_6E1FD0
LDR             R11, =off_63FDB0
VPUSH           {D8-D10}
SUB             SP, SP, #0x34
VLDR            S18, =0.0
VLDR            S19, =1.0
VLDR            S20, =360.0
ADD             R0, R6, R5,LSL#2
LDR             R4, [R0,#0x40]
CMP             R4, #0
BEQ             loc_154910
LDRB            R0, [R4,#0x3F5]
CMP             R0, #0
BNE             loc_154904
MOV             R1, #1
MOV             R0, R4
BL              sub_14C9A4
STRB            R9, [R4,#0x3F6]
LDR             R0, [R10]
MOV             R1, #0x1000
BL              sub_52F368
LDR             R0, [R0,#0x18]
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0x28]
MOV             R1, SP
BLX             R3
LDRB            R0, [R4,#0x3F4]
VLDR            S1, [R8,#(flt_6E2104 - 0x6E1FD0)]
VLDR            S2, [SP,#0x70+var_6C]
VMOV            S0, R0
VLDR            S3, [R8,#(flt_6E2140 - 0x6E1FD0)]
VADD.F32        S1, S2, S1
VLDR            S5, [R8,#(flt_6E2144 - 0x6E1FD0)]
VLDR            S4, [R8,#(flt_6E213C - 0x6E1FD0)]
VLDR            S6, [R8,#(flt_6E2148 - 0x6E1FD0)]
VCVT.F32.U32    S7, S0
VADD.F32        S16, S2, S5
VCVT.F32.U32    S0, S0
LDR             R0, [R4]
MOV             R2, #0
ADD             R1, SP, #0x70+var_64
LDR             R3, [R0,#0x28]
MOV             R0, R4
VMLA.F32        S1, S3, S7
VMLA.F32        S16, S6, S0
VADD.F32        S17, S1, S4
BLX             R3
VLDR            S1, [SP,#0x70+var_60]
ADD             R2, SP, #0x70+var_58
ADD             R7, R4, #0x400
VSTM            R2, {S18-S19}
VSUB.F32        S0, S16, S1
VSUB.F32        S2, S17, S1
VSTR            S18, [SP,#0x70+var_50]
LDR             R0, [R4,#0x414]
ADD             R7, R7, #0x14
MOV             R1, #0
VLDR            S1, [R0,#0x18]
ADD             R0, R4, #0x1DC
BL              sub_5A28C4
LDR             R0, [R7]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xD
LDR             R0, [R0,#0x18]
VSTR            S18, [R4,#0x39C]
STR             R0, [R4,#0x3A0]
MOV             R0, R4
BL              sub_14C548
VSTR            S18, [SP,#0x70+var_4C]
VSTR            S18, [SP,#0x70+var_48]
VSTR            S20, [SP,#0x70+var_44]
LDR             R0, [R7]
ADD             R2, SP, #0x70+var_4C
MOV             R1, #0
VLDR            S0, [R0,#0x18]
ADD             R0, R4, #0x100
BL              sub_5A2298
LDRD            R0, R1, [R11,#(off_63FDB8 - 0x63FDB0)]
ADD             R4, R4, #0x3F8
STM             R4, {R0,R1}
ADD             R5, R5, #1
CMP             R5, #0x20 ; ' '
BCC             loc_1547D8
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8-D10}
POP             {R4-R11,PC}
