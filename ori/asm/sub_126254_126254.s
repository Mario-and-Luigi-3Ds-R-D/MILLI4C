PUSH            {R4-R11,LR}
SUB             SP, SP, #0x1C
MOV             R9, R0
MOV             R11, #1
LDR             R0, =off_6D48F8
LDR             R4, [R0]
ADD             R0, SP, #0x40+var_2C
STR             R11, [SP,#0x40+var_2C]
BL              sub_131278
BL              sub_131338
MOV             R8, #0
TST             R9, #0x80000000
STR             R8, [SP,#0x40+var_30]
LDRBNE          R0, [R4,#0x64F]
MOV             R7, R8
MOV             R5, R8
CMPNE           R0, #0
MOV             R6, R8
MOV             R10, R8
BEQ             loc_1262D0
LDR             R2, =dword_6D2418
LDR             R0, =dword_6D241C
LDR             R1, [R2]
LDR             R0, [R0]
CMP             R0, R1
BLS             loc_1262D0
LDR             R3, =0xF0063
ADD             R12, R1, #8
STR             R3, [R1,#4]
STR             R11, [R1]
STR             R12, [R2]
TST             R9, #0x100
LDRBNE          R0, [R4,#0x691]
CMPNE           R0, #0
BEQ             loc_126324
LDR             R0, [R4,#0x68C]
CMP             R0, #0
LDREQ           R5, [R4,#0x680]
MOVEQ           R6, #0x10
BEQ             loc_126320
CMP             R0, #2
LDREQ           R5, [R4,#0x67C]
MOVEQ           R6, #0x18
BEQ             loc_126320
CMP             R0, #3
BNE             loc_1263F8
ADD             R0, R4, #0x400
ADD             R0, R0, #0x278
MOV             R6, #0x20 ; ' '
LDM             R0, {R0,R1}
ORR             R5, R1, R0,LSL#24
MOV             R7, #1
TST             R9, #0x4000
LDRBNE          R0, [R4,#0x690]
CMPNE           R0, #0
BEQ             loc_1263B4
ADD             R0, R4, #0x400
VLDR            S0, =255.0
VLDR            S4, [R0,#0x260]
VLDR            S1, [R0,#0x26C]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x264
VMUL.F32        S4, S4, S0
VLDM            R0, {S2-S3}
VMUL.F32        S5, S1, S0
ADD             R8, R4, #0x400
ADD             R8, R8, #0x288
VMUL.F32        S2, S2, S0
VMUL.F32        S3, S3, S0
VCVT.U32.F32    S0, S4
VCVT.U32.F32    S1, S2
VCVT.U32.F32    S2, S3
VCVT.U32.F32    S3, S5
VMOV            R0, S0
VMOV            R3, S1
VMOV            R2, S2
VMOV            R1, S3
ORR             R0, R0, R3,LSL#8
ORR             R0, R0, R2,LSL#16
ORR             R0, R0, R1,LSL#24
LDR             R1, [R4,#0x688]
BL              sub_130DB8
STR             R0, [SP,#0x40+var_30]
LDR             R0, [R8]
MOV             R8, #1
CMP             R0, #0
MOVNE           R10, #0x10
MOVEQ           R10, #0x20 ; ' '
ORRS            R0, R7, R8
BEQ             loc_1263F8
BL              sub_1164E4
CMP             R7, #0
LDRNE           R1, [R4,#0x80C]
LDR             R0, [R4,#0x814]
MOVEQ           R1, #0
ADD             R2, SP, #0x40+var_3C
STR             R1, [SP,#0x40+var_40]
STM             R2, {R0,R5,R6}
CMP             R8, #0
LDR             R1, [R4,#0x818]
LDRNE           R0, [R4,#0x810]
LDR             R2, [SP,#0x40+var_30]
MOVEQ           R0, #0
MOV             R3, R10
BL              sub_130C94
ADD             SP, SP, #0x1C
POP             {R4-R11,PC}
