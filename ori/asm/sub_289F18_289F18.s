PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, R1
VPUSH           {D8}
SUB             SP, SP, #0x18
LDM             R1, {R0-R3,R7,R8,R12}
STM             R4, {R0-R3,R7,R8,R12}
MOV             R2, #0
ADD             R7, R4, #0x400
ADD             R7, R7, #0x44 ; 'D'
LDR             R0, [R4,#0x444]
LDR             R1, [R0]
ADD             R0, R4, #0x1C
BL              sub_14E6E0
MOV             R1, #0
ADD             R0, R4, #0x1C
BL              sub_14C450
MOV             R0, #3
STRB            R0, [R4,#0x10D]
MOV             R1, #0
ADD             R0, R4, #0x1C
BL              sub_14C3E8
LDR             R0, =dword_6D1F40
BL              sub_546DB0
ADD             R0, R0, R0,LSL#1
MOVS            R0, R0,LSR#16
MOVEQ           R6, #5
BEQ             loc_289F9C
CMP             R0, #1
MOVEQ           R6, #6
BEQ             loc_289F9C
CMP             R0, #2
MOVEQ           R6, #8
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, R6
ADD             R0, R4, #0x1C
BL              sub_14C548
LDR             R8, =dword_6D1F40
ADD             R0, R4, #0x1C
BL              sub_5C5724
MOV             R6, R0
MOV             R0, R8
BL              sub_546DB0
MUL             R0, R0, R6
MOV             R1, R0,LSR#16
ADD             R0, R4, #0x1C
BL              sub_14F01C
LDRB            R0, [R4,#0x112]
MOV             R8, #0
MOV             R6, #1
STRB            R0, [R4,#0x412]
LDR             R0, [R5,#0x18]
ADD             R2, R4, #0x400
ADD             R2, R2, #0x48 ; 'H'
STR             R0, [R4,#0x5C]
STRB            R8, [R4,#0x112]
STRB            R6, [R4,#0x410]
LDR             R1, [R4,#0x448]
LDR             R0, [R4,#0x10]
VLDR            S2, [R4,#8]
LDR             R3, [R1,#0x530]!
LDR             R12, [R1,#0x30]
MLA             R1, R0, R12, R8
MLA             R0, R0, R12, R6
ADD             R8, R1, R1,LSL#1
ADD             R1, R8, R1,LSL#3
ADD             R12, R0, R0,LSL#1
ADD             R0, R12, R0,LSL#3
ADD             R1, R3, R1,LSL#2
ADD             R0, R3, R0,LSL#2
VLDR            S0, [R1]
VLDR            S1, [R1,#8]
VLDR            S16, [R1,#4]
VLDM            R0, {S3-S5}
LDR             R0, [R2]
VSUB.F32        S6, S3, S0
VSUB.F32        S3, S5, S1
VSUB.F32        S4, S4, S16
ADD             R1, R0, #0x400
ADD             R1, R1, #0x1C4
ADD             R2, R0, #0x400
ADD             R2, R2, #0x1BC
VMLA.F32        S0, S2, S6
VMLA.F32        S1, S2, S3
VMLA.F32        S16, S2, S4
VLDR            S4, [R1]
ADD             R1, R0, #0x400
ADD             R1, R1, #0x1BC
VLDR            S3, [R2]
LDM             R1, {R1-R3}
VLDR            S2, [R4]
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S4
STMEA           SP, {R1-R3}
MOV             R1, SP
LDR             R0, [R0,#0x688]
LDR             R0, [R0,#0x130]
VADD.F32        S1, S1, S2
STR             R0, [SP,#0x38+var_34]
VSTR            S0, [SP,#0x38+var_38]
ADD             R0, R4, #0x1C
VSTR            S1, [SP,#0x38+var_30]
BL              sub_14E984
VLDR            S2, [R5,#0x10]
VLDR            S0, [SP,#0x38+var_34]
LDR             R0, [R4,#0x444]
VCVT.F32.U32    S2, S2
VSUB.F32        S0, S16, S0
ADD             R2, SP, #0x38+var_2C
VLDR            S3, [R0,#0xF0]
VLDR            S1, [R0,#0xEC]
MOV             R1, #1
VMLA.F32        S1, S2, S3
VLDR            S3, [R0,#0xF4]
VMOV.F32        S2, S0
ADD             R0, R4, #0x1F8
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VLDR            S16, =0.0
VMOVCC.F32      S2, S3
VLDR            S3, =1.0
VSTR            S16, [SP,#0x38+var_2C]
VSTR            S3, [SP,#0x38+var_28]
VSTR            S16, [SP,#0x38+var_24]
BL              sub_5A28C4
LDR             R0, [R4,#0x444]
VLDR            S2, =-0.5
ADD             R0, R0, #0x20 ; ' '
VLDM            R0, {S0-S1}
ADD             R0, R4, #0x400
ADD             R0, R0, #0x2C ; ','
MOV             R1, R0
VMUL.F32        S2, S0, S2
VSTR            S2, [R0]
VLDR            S2, =0.5
VSTR            S16, [R0,#4]
VSTR            S16, [R0,#8]
VMUL.F32        S0, S0, S2
LDR             R2, [R7]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x38 ; '8'
LDR             R2, [R2,#0x18]
VSTM            R0, {S0-S1}
STR             R2, [R4,#0x440]
VLDR            S1, [R1]
VLDR            S0, [R1,#4]
VLDR            S2, [R1,#8]
ADD             R1, R4, #0x44 ; 'D'
VLDR            S5, [R4,#0x40]
VLDM            R1, {S3-S4}
VADD.F32        S1, S1, S5
ADD             R1, R4, #0x400
VADD.F32        S0, S0, S3
VADD.F32        S2, S2, S4
VSTR            S1, [R1,#0x14]
VSTR            S0, [R1,#0x18]
VSTR            S2, [R1,#0x1C]
VLDR            S5, [R4,#0x40]
ADD             R4, R4, #0x44 ; 'D'
VLDR            S2, [R0,#8]
VLDR            S0, [R0]
VLDR            S1, [R0,#4]
ADD             R1, R1, #0x20 ; ' '
VLDM            R4, {S3-S4}
VADD.F32        S0, S0, S5
VADD.F32        S1, S1, S3
VADD.F32        S2, S2, S4
VSTM            R1, {S0-S2}
ADD             SP, SP, #0x18
VPOP            {D8}
POP             {R4-R8,PC}
