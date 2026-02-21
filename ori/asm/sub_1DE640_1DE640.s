PUSH            {R4-R11,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0xC
BL              sub_1DBFA4
LDRB            R0, [R4,#0x4C]
LDR             R9, =flt_6E34B0
LDR             R10, =off_6CE970
CMP             R0, #0
MOV             R11, #0
BEQ             loc_1DE6B0
LDR             R0, [R10]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
MOV             R1, R0,ASR#31
ADD             R0, R0, R1,LSR#24
LDRH            R1, [R4,#0x4A]
ADD             R0, R1, R0,ASR#8
UXTH            R0, R0
STRH            R0, [R4,#0x4A]
LDR             R1, [R9,#(flt_6E34F0 - 0x6E34B0)]
CMP             R0, R1
BCC             loc_1DE6F4
STRH            R11, [R4,#0x4A]
STRB            R11, [R4,#0x4C]
STRH            R11, [R4,#0x48]
B               loc_1DE6F4
LDRB            R0, [R4,#0x50]
CMP             R0, #0
BEQ             loc_1DE6F4
LDR             R0, [R10]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
MOV             R1, R0,ASR#31
ADD             R0, R0, R1,LSR#24
LDRH            R1, [R4,#0x48]
ADD             R0, R1, R0,ASR#8
UXTH            R0, R0
STRH            R0, [R4,#0x48]
LDR             R1, [R9,#(flt_6E34EC - 0x6E34B0)]
CMP             R0, R1
SUBCS           R0, R0, R1
STRHCS          R0, [R4,#0x48]
MOV             R5, #0
ADD             R0, R5, R5,LSL#1
ADD             R0, R4, R0,LSL#2
ADD             R0, R0, #0x20800
ADD             R0, R0, #0x2C4
BL              sub_2E9A6C
ADD             R5, R5, #1
CMP             R5, #2
BLT             loc_1DE6F8
ADD             R0, R4, #0x20C00
ADD             R0, R0, #0x2E4
ADD             R5, R4, #0x20800
LDRB            R1, [R0,#0x20]
ADD             R5, R5, #0x2E4
CMP             R1, #0
BEQ             loc_1DE7CC
LDRB            R0, [R0,#0x21]
CMP             R0, #0
ADDEQ           R6, R5, #0x420
BNE             loc_1DE7CC
LDR             R7, [R5]
CMP             R7, #0
BEQ             loc_1DE7C0
LDR             R0, [R5,#8]
CMP             R0, #0
BNE             loc_1DE7C0
LDR             R0, [R7]
LDR             R1, [R0,#0x28]
MOV             R0, R7
BLX             R1
CMP             R0, #0
BEQ             loc_1DE7C0
MOV             R0, R7
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_1DE7C0
MOV             R0, R7
BL              sub_5EC730
CMP             R0, #0
NOP
BNE             loc_1DE7C0
LDR             R0, [R7,#0x18]
CMP             R0, #0
BEQ             loc_1DE7C0
LDRB            R0, [R5,#0xC]
ADD             R0, R0, #1
AND             R1, R0, #0xFF
MOV             R0, R5
BL              sub_29F314
STRB            R0, [R5,#0xC]
ADD             R5, R5, #0x10
CMP             R5, R6
BNE             loc_1DE744
ADD             R7, R4, #0x20800
ADD             R7, R7, #0x2BC
ADD             R6, R4, #0x20000
LDR             R1, [R7]
ADD             R6, R6, #0xAC0
CMP             R1, #0
BNE             loc_1DE7FC
LDR             R0, [R6]
TST             R0, #1
BEQ             loc_1DE81C
CMP             R0, #0
BEQ             loc_1DE81C
LDR             R0, [R6]
TST             R0, #1
ADD             R2, R4, R0,ASR#1
BEQ             loc_1DE814
LDR             R0, [R2]
LDR             R1, [R0,R1]
MOV             R0, R2
BLX             R1
LDR             R0, [R10]
VLDR            S16, =0.0039062
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R4, #0x20000
ADD             R0, R0, #0xF20
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
BL              sub_4E625C
LDR             R0, =0x20F10
ADD             R5, R4, #0x20C00
ADD             R5, R5, #0x358
LDRB            R0, [R0,R4]
CMP             R0, #0
BEQ             loc_1DE86C
CMP             R0, #1
BNE             loc_1DE958
B               loc_1DE8C8
LDR             R0, [R10]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
MOV             R0, R5
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
BL              sub_4E625C
ADD             R0, R4, #0x20000
ADD             R0, R0, #0xF80
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_1DE958
MOV             R2, #0
LDR             R0, [R10]
VLDR            S0, =0.0
MOV             R1, R2
BL              sub_52B884
NOP
NOP
B               loc_1DE958
LDR             R0, [R10]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R4, #0x20C00
ADD             R0, R0, #0x314
MOV             R8, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
BL              sub_4E7C68
MOV             R0, R8
NOP
BL              sub_5EC024
VLDR            S1, [R9,#(flt_6E35D4 - 0x6E34B0)]
BIC             R1, R8, #0xFF
VCVT.F32.U32    S1, S1
VMUL.F32        S0, S0, S1
VCVT.U32.F32    S0, S0
VMOV            R0, S0
AND             R0, R0, #0xFF
MOV             R2, R0,LSL#8
MOV             R3, R0,LSL#16
ORR             R0, R0, R1
AND             R2, R2, #0xFF00
BIC             R0, R0, #0xFF00
ORR             R0, R0, R2
AND             R1, R3, #0xFF0000
BIC             R0, R0, #0xFF0000
ORR             R0, R0, R1
BIC             R0, R0, #0xFF000000
ORR             R8, R0, R11,LSL#24
MOV             R0, R5
BL              sub_4E63E0
STR             R8, [R5,#4]
STR             R8, [R5]
ADD             R0, R4, #0x20000
ADD             R0, R0, #0xF00
ADD             R2, SP, #0x38+var_34
LDR             R1, [R0,#0x20]
STR             R1, [SP,#0x38+var_38]
LDR             R0, [R0,#0x58]
MOV             R1, SP
STR             R0, [SP,#0x38+var_34]
LDR             R0, [R10]
BL              sub_52A494
LDR             R0, [R7]
CMP             R0, #0
BNE             loc_1DEA14
LDR             R0, [R6]
TST             R0, #1
BEQ             loc_1DE9A0
CMP             R0, #0
BNE             loc_1DEA14
LDR             R1, =0xFFFDF53B
MOV             R0, #0
ADD             R2, R0, R0,LSL#1
ADD             R2, R4, R2,LSL#2
SUB             R2, R2, R1
LDRB            R2, [R2]
CMP             R2, #1
BNE             loc_1DEA14
ADD             R0, R0, #1
CMP             R0, #2
BLT             loc_1DE9A8
LDR             R0, =0x19DFE8
LDR             R1, [R10]
LDR             R0, [R1,R0]
BL              sub_5EA91C
CMP             R0, #0
NOP
BEQ             loc_1DEA18
LDR             R0, [R10]
LDR             R1, =0x1A0048
LDRB            R1, [R1,R0]
CMP             R1, #0
BNE             loc_1DEA14
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_58F534
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_1DEA24
MOV             R0, #0
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R11,PC}
ADD             R0, R4, R5,LSL#2
ADD             R0, R0, #0x20800
ADD             R0, R0, #0x2DC
LDR             R0, [R0]
CMP             R0, #0
BLNE            sub_533330
ADD             R5, R5, #1
CMP             R5, #2
BLT             loc_1DEA24
ADD             SP, SP, #0xC
MOV             R0, #1
VPOP            {D8}
POP             {R4-R11,PC}
