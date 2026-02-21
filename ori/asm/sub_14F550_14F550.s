PUSH            {R4-R10,LR}
MOV             R7, R0
LDR             R9, =off_6CE970
LDR             R10, =0x19CF48
VPUSH           {D8}
SUB             SP, SP, #0x18
LDR             R0, [R9]
LDR             R1, [R0,R10]
TST             R1, #4
BNE             loc_14F728
TST             R1, #1
BEQ             loc_14F728
LDR             R1, [R7,#8]
ADD             R1, R1, #0x400
LDRSB           R1, [R1,#0x95]
ADD             R1, R1, #0xC000
ADD             R1, R1, #4
UXTH            R1, R1
BL              sub_52FACC
MOV             R8, R0
LDR             R0, [R0]
LDR             R1, [R0,#0x14]
MOV             R0, R8
BLX             R1
CMP             R0, #0
BNE             loc_14F728
BL              sub_4635D8
LDM             R0, {R1,R2}
MOV             R5, #0
LDR             R0, [R0,#8]
VLDR            S16, =1000.0
STR             R0, [SP,#0x40+var_38]
STMEA           SP, {R1,R2}
LDR             R0, =0x10646C
LDR             R1, [R9]
ADD             R0, R0, R1; loc_10646C
LDR             R0, [R0,#(loc_106470 - 0x10646C)]
CMP             R0, #0
BEQ             loc_14F5F8
SUBS            R0, R0, #0x1AC
ADDNE           R4, R0, #0x1AC
BNE             loc_14F5FC
MOV             R4, #0
CMP             R4, #0
MOV             R6, #0
BEQ             loc_14F698
CMP             R4, #0
LDR             R1, =byte_6CE7C8
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_5EC180
CMP             R0, #0
NOP
BEQ             loc_14F68C
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
MOV             R2, #0
LDR             R0, [R0,#0x18]
LDR             R1, [R0]
LDR             R3, [R1,#0x28]
ADD             R1, SP, #0x40+var_34
BLX             R3
VLDR            S1, [SP,#0x40+var_40]
VLDR            S0, [SP,#0x40+var_34]
ADD             R5, R5, #1
VADD.F32        S1, S1, S0
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VSTR            S1, [SP,#0x40+var_40]
VLDR            S1, [SP,#0x40+var_3C]
VLDR            S2, [SP,#0x40+var_30]
VMOVCC.F32      S16, S0
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x40+var_3C]
VLDR            S1, [SP,#0x40+var_38]
VLDR            S2, [SP,#0x40+var_2C]
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x40+var_38]
LDR             R4, [R4,#8]
CMP             R4, R6
BNE             loc_14F608
VMOV            S0, R5
VLDR            S2, =1.0
LDR             R0, =dword_6E197C
MOV             R1, SP
VCVT.F32.S32    S1, S0
VDIV.F32        S0, S2, S1
VLDR            S1, [SP,#0x40+var_38]
VMUL.F32        S0, S1, S0
VLDR            S1, =0.0
VSTR            S0, [SP,#0x40+var_38]
LDR             R0, [R0,#(dword_6E19A4 - 0x6E197C)]
VMOV            S0, R0
STR             R0, [SP,#0x40+var_34]
VADD.F32        S0, S0, S16
VSTMEA          SP, {S0-S1}
LDR             R0, [R7,#8]
LDR             R4, [R0,#0x18]
LDR             R0, [R4]
LDR             R2, [R0,#0x20]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
MOV             R2, #0
MOV             R1, R8
LDR             R3, [R0,#0x58]
MOV             R0, R4
BLX             R3
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #3
MOV             R0, R4
BL              sub_14C548
LDR             R0, [R9]
LDR             R1, [R0,R10]!
ORR             R1, R1, #4
STR             R1, [R0]
ADD             SP, SP, #0x18
VPOP            {D8}
POP             {R4-R10,PC}
