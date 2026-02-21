PUSH            {R4,R5,LR}
MOV             R5, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x34
LDR             R0, [R0,#8]
LDR             R1, [R5,#4]
VLDR            S16, =0.0
LDRSH           R3, [R0]
ADD             R2, R1, #0x21000
ADD             R4, R1, #0x23000
CMP             R3, #0x1C; switch 28 cases
ADD             R2, R2, #0x15C
ADD             R4, R4, #0x4E0
LDRCC           PC, [PC,R3,LSL#2]; switch jump
B               def_1BC764; jumptable 001BC764 default case, cases 2,5-16
DCD loc_1BC7DC; jump table for switch statement
ADD             R1, R0, #0x360; jumptable 001BC764 cases 0,1,3,4,21
ADD             R0, R0, #0x10
VLDM            R1, {S2-S3}
MOV             R1, SP
VLDR            S1, =129.36
VLDR            S0, =100.0
BL              sub_5E408C
ADD             R1, SP, #0x50+var_38
VLDR            S1, [SP,#0x50+var_44]
VLDR            S2, =0.5
VLDR            S0, [SP,#0x50+var_40]
VLDM            R1, {S3-S4}
VSUB.F32        S3, S3, S1
VSUB.F32        S4, S4, S0
VMLA.F32        S1, S3, S2
VMLA.F32        S0, S4, S2
VSTR            S1, [R4,#0x28]
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x110]
STR             R0, [R4,#0x30]
LDR             R0, [R5,#4]
ADD             R1, R0, #0x17400
LDRB            R2, [R1,#0xAD]
CMP             R2, #0
LDRNE           R0, [R1,#0x1BC]
STRNE           R0, [R4,#0x2C]
BNE             def_1BC764; jumptable 001BC764 default case, cases 2,5-16
ADD             R1, R5, #0x1100
LDRSH           R2, [R1,#0xD0]
LDRSH           R1, [R1,#0xD2]
CMP             R2, R1
BGE             loc_1BC880
ADD             R1, R5, #0x1000
VLDR            S3, =0.15
VLDR            S2, =1.0
VLDR            S1, [R0,#0x10C]
VLDR            S4, [R1,#0x1D8]
VSUB.F32        S0, S0, S1
VMLS.F32        S2, S4, S3
VMUL.F32        S0, S2, S0
VADD.F32        S0, S1, S0
VSTR            S0, [R4,#0x2C]
B               def_1BC764; jumptable 001BC764 default case, cases 2,5-16
LDR             R0, =0x174AD; jumptable 001BC764 cases 17-20,22,23
VLDR            S2, =0.0039062
VLDR            S0, =2.0
LDRB            R0, [R0,R1]
CMP             R0, #0
LDR             R0, [R2,#0xA4]
VLDRNE          S0, =3.0
LDRSH           R1, [R0,#0x14]
VMOV            S1, R1
VCVT.F32.S32    S1, S1
VMUL.F32        S1, S1, S2
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1BC8DC
ADD             R0, R0, #0x10
VLDR            S1, =256.0
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTH            R1, R1
BL              sub_123CE8
LDR             R0, [R5,#4]
ADD             R2, R0, #0x17400
LDR             R1, [R0,#0x108]
LDRB            R3, [R2,#0xAD]
CMP             R3, #0
VLDRNE          S0, [R2,#0x1BC]
VCVTNE.F64.F32  D0, S0
BEQ             loc_1BC914
LDR             R0, [R0,#0x110]
STR             R1, [R4,#0x28]
VCVT.F32.F64    S0, D0
VSTR            S0, [R4,#0x2C]
STR             R0, [R4,#0x30]
B               def_1BC764; jumptable 001BC764 default case, cases 2,5-16
VLDR            S2, [R0,#0x10C]
VLDR            D0, =129.36
VCVT.F64.F32    D1, S2
VADD.F64        D0, D1, D0
B               loc_1BC8FC
ADD             R0, R5, #0x1000; jumptable 001BC764 cases 24-26
VLDR            S0, [R1,#0x108]
VLDR            S1, [R0,#0x198]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x28]
LDR             R1, [R5,#4]
VLDR            S1, [R0,#0x19C]
VLDR            S0, [R1,#0x10C]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x2C]
VSTR            S16, [R4,#0x30]
B               def_1BC764; jumptable 001BC764 default case, cases 2,5-16
ADD             R0, R0, #6; jumptable 001BC764 case 27
BL              sub_45AAB8
VLDR            S1, =3.1416
ADD             R0, R5, #0x1000
ADD             R0, R0, #0x198
VMUL.F32        S0, S0, S1
VLDR            S1, =40.744
VLDR            S19, =129.36
VLDM            R0, {S17-S18}
VMUL.F32        S0, S0, S1
BL              sub_464318
VLDR            S2, =-0.5
VLDR            S1, =0.5
VSUB.F32        S3, S16, S17
LDR             R0, [R5,#4]
VMLA.F32        S1, S0, S2
VSUB.F32        S0, S19, S18
VSUB.F32        S2, S16, S16
ADD             R0, R0, #0x108
VMLA.F32        S17, S1, S3
VMLA.F32        S18, S1, S0
VMOV.F32        S0, S16
VLDR            S3, [R0,#8]
VMLA.F32        S0, S1, S2
VLDR            S2, [R0]
VLDR            S1, [R0,#4]
VADD.F32        S2, S2, S17
VADD.F32        S1, S1, S18
VADD.F32        S0, S3, S0
VSTR            S2, [R4,#0x28]
VSTR            S1, [R4,#0x2C]
VSTR            S0, [R4,#0x30]
VSTR            S16, [R4,#0x10]; jumptable 001BC764 default case, cases 2,5-16
VSTR            S16, [R4,#0x14]
VSTR            S16, [R4,#0x18]
VSTR            S16, [R4,#0x1C]
VSTR            S16, [R4,#0x20]
VSTR            S16, [R4,#0x24]
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8-D9}
POP             {R4,R5,PC}
