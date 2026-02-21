PUSH            {R4-R8,LR}
MOV             R5, R0
VPUSH           {D8}
SUB             SP, SP, #0x10
LDR             R0, [R0,#8]
LDR             R6, [R0,#0x18]
MOV             R0, R6
BL              sub_5C5820
CMP             R0, #0
LDREQ           R8, =off_6CE970
LDREQ           R4, [R8]
BNE             loc_150FCC
BL              sub_47FFCC
VLDR            S17, =0.0
CMP             R0, #0
BNE             loc_150E24
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R4]
CMP             R0, #0
LDREQ           R4, [R8]
BEQ             loc_150E44
LDR             R0, [R8]
BL              sub_52FC34
VLDR            S0, [R6,#0x5C]
MOV             R1, SP
BL              sub_5EC814
NOP
NOP
B               loc_150F08
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_150F08
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R4]
CMP             R0, #0
BNE             loc_150F08
LDR             R0, =0x10646C
LDR             R1, [R8]
VLDR            S16, =1000.0
ADD             R0, R0, R1
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             loc_150E90
SUBS            R0, R0, #0x1AC
ADDNE           R4, R0, #0x1AC
BNE             loc_150E94
MOV             R4, #0
CMP             R4, #0
MOV             R7, #0
BEQ             loc_150EE8
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
ADD             R1, R5, #0x58 ; 'X'
BL              sub_5EC180
CMP             R0, #0
NOP
BEQ             loc_150EDC
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
VLDR            S0, [R0,#0x1C]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S16, S0
LDR             R4, [R4,#8]
CMP             R4, R7
BNE             loc_150EA0
LDR             R0, =unk_6E1DF4
VSTR            S16, [R5,#0x54]
VLDR            S0, [R0,#(flt_6E1E70 - 0x6E1DF4)]
VADD.F32        S0, S0, S16
VSTR            S0, [SP,#0x30+var_30]
VSTR            S17, [SP,#0x30+var_2C]
LDR             R0, [R0,#(dword_6E1E74 - 0x6E1DF4)]
STR             R0, [SP,#0x30+var_28]
ADD             R0, R6, #0x24 ; '$'
VLDR            S0, [SP,#0x30+var_30]
VLDR            S2, [SP,#0x30+var_2C]
VLDR            S1, [SP,#0x30+var_28]
VLDM            R0, {S3-S5}
VSUB.F32        S0, S0, S3
VSUB.F32        S2, S2, S4
VSUB.F32        S1, S1, S5
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S2, S2
VMLA.F32        S0, S1, S1
VSQRT.F32       S1, S0
VMOV            R0, S1
CMP             R0, #0x41000000
BLE             loc_150FAC
VMOV.F32        S0, S17
LDR             R1, =unk_63FD2E
MOV             R0, R6
MOV             R2, #6
BL              sub_14DE84
MOV             R1, #1
MOV             R0, R6
BL              sub_14DCB0
LDR             R0, [R5,#0x30]
MOV             R2, SP
MOV             R1, #0
LDR             R0, [R0]
VMOV            S0, R0
ADD             R0, R6, #0x1DC
VCVT.F32.U32    S0, S0
BL              sub_5A2074
LDR             R0, =0xFFE683CC
LDR             R12, [R8]
LDRH            R1, [R6,#0x10]
LDR             R2, =0x30091
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503808
STR             R0, [R5,#0x34]
NOP
B               loc_150FC0
LDR             R0, [R6]
MOV             R1, SP
LDR             R2, [R0,#0x20]
MOV             R0, R6
BLX             R2
LDR             R1, =unk_63FC24
LDRD            R0, R1, [R1,#(off_63FC88 - 0x63FC24)]
STRD            R0, R1, [R5,#0xC]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R8,PC}
