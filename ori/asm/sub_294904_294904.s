PUSH            {R4-R9,LR}
MOV             R4, R0
ADD             R5, R4, #0xDC
LDR             R0, =off_6CE970
VLDR            S1, =0.0039062
VPUSH           {D8-D9}
SUB             SP, SP, #0xC
LDR             R0, [R0]
LDM             R5, {R5,R6}
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
CMP             R5, R6
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S1
BEQ             loc_294984
LDR             R0, [R5]
LDR             R1, [R0]
VMOV.F32        S0, S16
LDR             R1, [R1,#0x14]
BLX             R1
LDR             R0, [R5]
LDRB            R1, [R0,#0xC]
CMP             R1, #0
BEQ             loc_294978
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
ADD             R5, R5, #0xC
CMP             R5, R6
BNE             loc_294948
ADD             R0, R4, #0xDC
LDM             R0, {R0,R6}
CMP             R0, R6
BEQ             loc_2949A8
LDR             R1, [R0]
LDRB            R1, [R1,#0xC]
CMP             R1, #0
ADDEQ           R0, R0, #0xC
BEQ             loc_29498C
CMP             R0, R6
BEQ             loc_294A54
ADD             R5, R0, #0xC
CMP             R5, R6
MOV             R7, R0
BEQ             loc_294A50
LDR             R0, [R5]
LDRB            R1, [R0,#0xC]
CMP             R1, #0
BNE             loc_294A44
LDR             R2, [R7]
CMP             R2, R0
BEQ             loc_294A40
LDR             R1, [R7,#8]
ADD             R3, R7, #4
CMP             R1, R3
BNE             loc_294B60
CMP             R2, #0
MOVNE           R0, R2
BEQ             loc_294A04
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R3, [R5]
ADD             R1, R5, #4
ADD             R0, R7, #4
CMP             R1, R0
STR             R3, [R7]
LDRNE           R2, [R1,#4]
CMPNE           R2, R0
BEQ             loc_294A40
LDM             R0, {R3,R12}
STR             R12, [R3,#4]
STR             R3, [R12]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [R1,#4]
STR             R1, [R0]
ADD             R7, R7, #0xC
ADD             R5, R5, #0xC
CMP             R5, R6
BNE             loc_2949C0
MOV             R0, R7
LDR             R6, [R4,#0xE0]
LDR             R9, =0x2AAAAAAB
CMP             R0, R6
BEQ             loc_294ACC
SUB             R0, R6, R0
SMULL           R1, R0, R9, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R7, R6, R0,LSL#2
CMP             R7, R6
BEQ             loc_294AC8
SUB             R6, R6, #0xC
ADD             R1, R6, #4
LDR             R0, [R6,#8]
MOV             R5, R6
CMP             R0, R1
BNE             loc_294AB4
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_294AB4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R5,#4]
CMP             R7, R6
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_294A84
STR             R7, [R4,#0xE0]
ADD             R0, R4, #0xE4
BL              sub_2983E0
LDR             R0, =0x127D8
ADD             R6, R4, #0x12400
ADD             R6, R6, #0x3DC
LDR             R1, [R6]
LDR             R5, [R0,R4]
CMP             R1, R5
BEQ             loc_294B0C
VMOV.F32        S0, S16
LDR             R0, [R5]
BL              sub_29A328
LDR             R0, [R6]
ADD             R5, R5, #0xC
CMP             R0, R5
BNE             loc_294AF0
ADD             R8, R4, #0x12400
ADD             R8, R8, #0x3B4
LDR             R6, [R8,#0x28]
LDR             R7, [R8,#0x24]
CMP             R7, R6
BEQ             loc_294B38
LDR             R0, [R7]
BL              sub_5CDFA0
CMP             R0, #0
ADDEQ           R7, R7, #0xC
BEQ             loc_294B1C
CMP             R7, R6
ADDNE           R5, R7, #0xC
CMPNE           R5, R6
BEQ             loc_294C00
LDR             R0, [R5]
BL              sub_5CDFA0
CMP             R0, #0
NOP
BEQ             loc_294B7C
B               loc_294BF4
LDR             R2, [R7,#4]
ADD             R0, R7, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R7,#4]
STR             R0, [R7,#8]
B               loc_294A04
LDR             R0, [R7]
LDR             R1, [R5]
CMP             R0, R1
BEQ             loc_294BF0
LDR             R2, [R7,#8]
ADD             R3, R7, #4
CMP             R2, R3
BNE             loc_294CBC
CMP             R0, #0
BEQ             loc_294BB4
BL              sub_29A738
NOP
NOP
BL              sub_300FD4
LDR             R3, [R5]
ADD             R1, R5, #4
ADD             R0, R7, #4
CMP             R1, R0
STR             R3, [R7]
LDRNE           R2, [R1,#4]
CMPNE           R2, R0
BEQ             loc_294BF0
LDM             R0, {R3,R12}
STR             R12, [R3,#4]
STR             R3, [R12]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [R1,#4]
STR             R1, [R0]
ADD             R7, R7, #0xC
ADD             R5, R5, #0xC
CMP             R5, R6
BNE             loc_294B48
LDR             R6, [R8,#0x28]
CMP             R7, R6
BEQ             loc_294C78
SUB             R0, R6, R7
SMULL           R1, R0, R9, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R7, R6, R0,LSL#2
CMP             R7, R6
BEQ             loc_294C74
SUB             R6, R6, #0xC
ADD             R1, R6, #4
LDR             R0, [R6,#8]
MOV             R5, R6
CMP             R0, R1
BNE             loc_294C60
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_294C60
BL              sub_29A738
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R5,#4]
CMP             R7, R6
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_294C2C
STR             R7, [R8,#0x28]
LDR             R0, [R4,#0x4C]
CMP             R0, #0
VMOVNE.F32      S0, S16
BLNE            sub_28754C
LDR             R1, =dword_63ED64
LDR             R0, [R4,#0x30]
CMP             R0, #0
LDRDEQ          R0, R1, [R1]
LDRDNE          R0, R1, [R1,#8]
CMP             R0, #0
BNE             loc_294CE4
B               loc_294CD4
DCFS 0.0039062
DCD off_6CE970
DCD 0x2AAAAAAB
DCD 0x127D8
DCD dword_63ED64
LDR             R1, [R3]
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R3, [R3]
STR             R3, [R3,#4]
B               loc_294BB4
TST             R1, #1
BEQ             loc_294CF0
CMP             R1, #0
BEQ             loc_294CF0
VMOV.F32        S0, S16
LDR             R0, [R4,#0x30]
BL              sub_289198
LDR             R0, [R4,#8]
CMP             R0, #0
BEQ             loc_294E60
LDR             R0, [R4,#0x4C]
LDR             R0, [R0,#0x20]
MOV             R8, R0
MOV             R6, #0
LDR             R0, [R4,#0x4C]
MOV             R7, R6
VLDR            S17, =3.4028e38
LDR             R0, [R0,#0x1C]
MOV             R5, R0
LDR             R0, [R4,#0x4C]
LDR             R0, [R0,#0x20]
VLDR            S18, =0.0
CMP             R0, R5
BEQ             loc_294DB4
LDR             R1, [R4,#8]
LDR             R0, [R5]
LDR             R1, [R1,#0xC]
ADD             R0, R0, #0x24 ; '$'
ADD             R1, R1, #0x24 ; '$'
VLDR            S0, [R0]
VLDR            S1, [R1]
VLDR            S6, [R0,#4]
VLDR            S3, [R1,#4]
VSUB.F32        S2, S0, S1
VLDR            S4, [R0,#8]
VSUB.F32        S0, S6, S3
VLDR            S5, [R1,#8]
LDR             R0, [R4,#0x4C]
VSUB.F32        S1, S4, S5
VMUL.F32        S3, S2, S2
VMLA.F32        S3, S0, S0
VMLA.F32        S3, S1, S1
VSQRT.F32       S0, S3
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VCMPE.F32       S2, S18
VMOVCC.F32      S17, S0
MOVCC           R8, R5
ADD             R5, R5, #0xC
VMRS            APSR_nzcv, FPSCR
ADDGT           R6, R6, #1
ADDLE           R7, R7, #1
LDR             R0, [R0,#0x20]
CMP             R0, R5
NOP
BNE             loc_294D34
LDR             R0, [R4,#0x4C]
BL              sub_5CDAE0
CMP             R0, R7
MOVEQ           R1, #1
BEQ             loc_294E08
LDR             R0, [R4,#0x4C]
BL              sub_5CDAE0
CMP             R0, R6
MOVEQ           R1, #0
BEQ             loc_294E08
LDR             R0, [R8]
VLDR            S0, [R0,#0x24]
LDR             R0, [R4,#8]
LDR             R0, [R0,#0xC]
VLDR            S1, [R0,#0x24]
VSUB.F32        S0, S0, S1
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
MOVGT           R0, #1
MOVLE           R0, #0
EOR             R1, R0, #1
LDR             R0, [R4,#0x1C]
STRB            R1, [R0,#0x10]
VMOV.F32        S0, S16
LDR             R0, [R4,#8]
BL              sub_28EE6C
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0xA0]
CMP             R1, #4
BNE             loc_294E60
LDR             R1, [R4,#0x10]
ADD             R2, R4, #0xC
MOV             R6, #0
CMP             R1, R2
ADD             R5, R4, #8
BNE             loc_294E84
CMP             R0, #0
BEQ             loc_294E5C
BL              sub_28F9F4
NOP
NOP
BL              sub_300FD4
STR             R6, [R5]
LDR             R0, [R4,#0x40]
CMP             R0, #0
BEQ             loc_294ED4
BL              sub_281D3C
LDR             R0, [R4,#0x40]
LDRB            R1, [R0]
CMP             R1, #3
BEQ             loc_294EA0
B               loc_294ED4
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_294E5C
LDR             R1, [R4,#0x48]
ADD             R2, R4, #0x44 ; 'D'
MOV             R6, #0
CMP             R1, R2
ADD             R5, R4, #0x40 ; '@'
BNE             loc_294F8C
CMP             R0, #0
BEQ             loc_294ED0
BL              sub_283340
NOP
NOP
BL              sub_300FD4
STR             R6, [R5]
LDR             R0, =0x12804
LDR             R0, [R0,R4]
CMP             R0, #0
BLNE            sub_285C70
LDR             R0, =0x127E0
LDR             R0, [R0,R4]
CMP             R0, #0
VMOVNE.F32      S0, S16
NOP
LDR             R2, [R4,#0x58]
ADD             R0, R4, #0x58 ; 'X'
CMP             R2, #0
BEQ             loc_294F7C
ADD             R0, R0, #4
STR             R0, [SP,#0x38+var_34]
STR             R2, [SP,#0x38+var_38]
LDR             R2, [R0,#4]
ADD             R1, SP, #0x38+var_34
STR             R2, [SP,#0x38+var_30]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x38+var_38]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R1, [SP,#0x38+var_30]
ADD             R0, SP, #0x38+var_34
CMP             R1, R0
BNE             loc_294F60
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
BEQ             loc_294F60
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x38+var_34]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#0x58]
CMP             R0, #0
MOVNE           R0, #1
BNE             loc_294F80
MOV             R0, #0
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R9,PC}
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_294ED0
