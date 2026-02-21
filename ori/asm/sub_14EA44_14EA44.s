PUSH            {R4-R10,LR}
MOV             R5, R0
LDR             R9, =off_6CE970
VPUSH           {D8}
SUB             SP, SP, #0x10
LDR             R0, [R9]
VLDR            S0, [R5,#0x98]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S1, R0
ADD             R0, R5, #0x100
VCVT.F32.S32    S2, S1
VLDR            S1, =0.0039062
VMUL.F32        S0, S2, S0
VMUL.F32        S16, S0, S1
VMOV.F32        S0, S16
BL              sub_5A2484
LDM             R0, {R1,R2}
VMOV.F32        S0, S16
LDR             R0, [R0,#8]
ADD             R3, R5, #0x44 ; 'D'
STR             R0, [R5,#0x4C]
ADD             R0, R5, #0x158
STM             R3, {R1,R2}
BL              sub_5A2484
LDM             R0, {R1,R2}
VMOV.F32        S0, S16
LDR             R0, [R0,#8]
ADD             R3, R5, #0x5C ; '\'
STR             R0, [R5,#0x64]
ADD             R0, R5, #0x1DC
STM             R3, {R1,R2}
BL              sub_5A2484
LDM             R0, {R1,R2}
MOV             R10, #0
LDR             R0, [R0,#8]
STR             R0, [R5,#0x2C]
ADD             R0, R5, #0x24 ; '$'
STM             R0, {R1,R2}
LDR             R0, [R5,#0x3F0]
CMP             R0, #0
BEQ             loc_14EB8C
LDR             R1, [R0]
VMOV.F32        S0, S16
LDR             R1, [R1,#8]
BLX             R1
LDR             R0, [R5,#0x3F0]
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
ADD             R1, R5, #0x24 ; '$'
BLX             R2
LDR             R0, [R5,#0x3F0]
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
CMP             R0, #0
BNE             loc_14EB8C
LDR             R0, [R5,#0x3F0]
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
MOV             R1, SP
BLX             R2
VLDR            S0, [R5,#0x1F8]
VLDR            S1, [SP,#0x38+var_38]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x1F8]
VLDR            S0, [R5,#0x1FC]
VLDR            S1, [SP,#0x38+var_34]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x1FC]
VLDR            S0, [R5,#0x200]
VLDR            S1, [SP,#0x38+var_30]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x200]
LDR             R0, [R5,#0x3F0]
CMP             R0, #0
BEQ             loc_14EB8C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R10, [R5,#0x3F0]
VMOV.F32        S0, S16
ADD             R0, R5, #0x32C
BL              sub_4E625C
LDR             R0, [R0]
VMOV.F32        S0, S16
STR             R0, [R5,#0x9C]
ADD             R0, R5, #0x364
BL              sub_4E625C
LDR             R0, [R0]
VLDR            S1, =0.0
STR             R0, [R5,#0xA0]
VLDR            S0, [R5,#0x3A0]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_14EBD8
VLDR            S2, [R5,#0x39C]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_14EBE8
VMOV.F32        S2, S16
VLDR            S3, [R5,#0x39C]
VADD.F32        S2, S3, S2
VSTR            S2, [R5,#0x39C]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
VCMPENE.F32     S2, S0
VMRSNE          APSR_nzcv, FPSCR
VSTRGT          S0, [R5,#0x39C]
LDR             R6, [R5,#0x3AC]
CMP             R6, #0
BEQ             loc_14ECD8
LDRSH           R7, [R6,#0x14]
VMOV            S0, R7
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R1, R0
ADD             R0, R6, #0x10
BL              sub_123CE8
LDR             R0, [R6,#0xC]
MOV             R8, SP
CMP             R0, #0
MOVNE           R4, #0
BEQ             loc_14EC8C
ADD             R0, R4, R4,LSL#1
ADD             R1, R8, R4,LSL#1
ADD             R2, R6, R0,LSL#3
ADD             R0, R2, #0xD8
ADD             R2, R2, #0xD8
LDRSH           R0, [R0,#4]
VMOV            S0, R0
STRH            R0, [R1]
VCVT.F32.S32    S1, S0
VMOV.F32        S0, S16
VMUL.F32        S0, S1, S0
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R1, R0
MOV             R0, R2
BL              sub_123CE8
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_14EC40
MOV             R0, R6
BL              sub_592F14
MOV             R1, R7
ADD             R0, R6, #0x10
BL              sub_123CE8
LDR             R0, [R6,#0xC]
CMP             R0, #0
MOVNE           R4, #0
BEQ             loc_14ED20
ADD             R0, R4, R4,LSL#1
ADD             R1, R8, R4,LSL#1
ADD             R0, R6, R0,LSL#3
LDRSH           R1, [R1]
ADD             R0, R0, #0xD8
BL              sub_123CE8
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_14ECB0
B               loc_14ED20
LDR             R0, [R5,#0x3B0]
CMP             R0, #0
BEQ             loc_14ED20
LDRSB           R1, [R5,#0xF2]
BL              sub_4FD1C8
LDR             R0, [R5,#0x3B0]
MOV             R1, R5
BL              sub_4FD2B4
VMOV.F32        S0, S16
LDR             R0, [R5,#0x3B0]
BL              sub_4FDFC4
LDR             R1, [R5,#0x3B0]
MOV             R0, #0xFFFFFFFF
REV             R0, R0
STR             R0, [R1,#0xF0]
MOV             R0, #0
REV             R0, R0
STR             R0, [R1,#0xF4]
LDR             R0, [R9]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRB            R0, [R0,#(loc_19DEF4 - 0x19DE00)]
CMP             R0, #0
BEQ             loc_14ED48
LDR             R0, [R5]
LDR             R1, [R0,#0xC]
MOV             R0, R5
BLX             R1
MOV             R0, R5
BL              sub_14D854
LDR             R0, [R5,#0x3EC]
CMP             R0, #0
BEQ             loc_14ED98
VMOV.F32        S0, S16
MOV             R1, R5
BL              sub_148FE8
LDR             R0, [R5,#0x3EC]
NOP
BL              sub_5C408C
CMP             R0, #0
LDRNE           R0, [R5,#0x3EC]
CMPNE           R0, #0
BEQ             loc_14ED98
NOP
NOP
NOP
BL              sub_300FD4
STR             R10, [R5,#0x3EC]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R10,PC}
