PUSH            {R4-R10,LR}
MOV             R6, R1
MOV             R5, R3
MOV             R10, R2
VPUSH           {D8}
SUB             SP, SP, #0x18
BL              sub_14CB8C
LDR             R1, =off_6BBC00
STR             R1, [R0],#0x100
MOV             R4, R0
BL              sub_4635D8
MOV             R1, R0
MOV             R0, R4
BL              sub_5A2B98
LDR             R7, =off_6B7BFC
LDR             R1, =sub_5A39D0
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R7, [R0],#0x30
BLX             sub_1002F4
VLDR            S16, =0.0
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
MOV             R9, #1
VMOV.F32        S0, S16
STR             R1, [R0,#0x28]
STRB            R9, [R0,#0x2C]
ADD             R0, R0, #0x58 ; 'X'
BL              sub_5A1E10
LDR             R4, =off_6B7BEC
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
VMOV.F32        S0, S16
STR             R1, [R0,#0x10]
STRB            R9, [R0,#0x14]
ADD             R0, R0, #0x34 ; '4'
BL              sub_5A1E10
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
ADD             R8, R0, #0x34 ; '4'
STRB            R9, [R0,#0x14]
BL              sub_4635D8
MOV             R1, R0
MOV             R0, R8
BL              sub_5A2B98
LDR             R1, =sub_5A39D0
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R7, [R0],#0x30
BLX             sub_1002F4
VLDR            S17, =1.0
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
VMOV.F32        S0, S17
STR             R1, [R0,#0x28]
STRB            R9, [R0,#0x2C]
ADD             R0, R0, #0x58 ; 'X'
BL              sub_5A1E10
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
MOV             R8, #0
STRB            R9, [R0,#0x14]
STR             R8, [R0,#0x34]
STRB            R8, [R0,#0x38]
SUB             R4, R0, #0x218
STRB            R6, [R0,#0x39]
MOV             R1, #2
MOV             R0, R4
BL              sub_14C450
MOV             R2, #1
MOV             R1, R2
MOV             R0, R4
STRB            R8, [R4,#0xF1]
BL              sub_14B798
MOV             R0, #0x400
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
VLDR            S1, =70.0
MOV             R0, #0x400
VCVT.F32.U32    S0, S0
VSUB.F32        S16, S0, S1
BL              sub_485B0C
MOV             R0, R0,LSR#1
VMOV            S0, R0
VLDR            S1, =30.0
VNEG.F32        S2, S16
VCVT.F32.U32    S0, S0
VSUB.F32        S0, S0, S1
VLDR            S1, [R5]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BGE             loc_2522C4
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S16, S2
VMOVHI.F32      S16, S1
VNEG.F32        S2, S0
VSTR            S16, [SP,#0x40+var_34]
VLDR            S1, [R5,#4]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGE             loc_2522EC
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S2
VMOVHI.F32      S0, S1
VSTR            S0, [SP,#0x40+var_30]
LDR             R0, [R5,#8]
ADD             R5, R4, #0x100
STR             R0, [SP,#0x40+var_2C]
MOV             R0, R5
BL              sub_5A26D0
ADD             R3, SP, #0x40+var_34
MOV             R7, R10
LDM             R3, {R0-R2}
ADD             R3, R5, #0x1C
ADD             R5, R5, #4
STM             R3, {R0-R2}
ADD             R3, SP, #0x40+var_34
STM             R5, {R0-R2}
LDM             R3, {R0-R2}
ADD             R3, R4, #0x24 ; '$'
STM             R3, {R0-R2}
ADD             R3, SP, #0x40+var_34
LDM             R3, {R0-R2}
ADD             R3, R4, #0x254
STM             R3, {R0-R2}
MOV             R3, #0
LDR             R0, =off_6CE970
MOV             R2, R3
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x6000
LDR             R1, [R0,#(loc_1063B8 - 0x106000)]
MOV             R0, #0x104
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_252378
BL              sub_5931A8
MOV             R5, R0
MOV             R0, R7
ADD             R0, R0, #0xA0
MOV             R10, R0
MOV             R0, R7
MOV             R1, #0
BL              sub_5F0474
MOV             R2, #0x100
MOV             R1, R0
STR             R2, [SP,#0x40+var_38]
MOV             R3, #0
MOV             R2, R10
MOV             R0, R5
STR             R8, [SP,#0x40+var_40]
STR             R8, [SP,#0x40+var_3C]
BL              sub_1137FC
MOV             R0, #5
STRB            R9, [R5,#0x68]
STRB            R0, [R5,#0x6A]
STRB            R8, [R5,#0x69]
MOV             R0, #0xFF
STRB            R9, [R5,#0x6D]
STRB            R0, [R5,#0x6E]
MOV             R0, #3
STRB            R9, [R5,#0x71]
CMP             R6, #1
STRB            R0, [R5,#0x6F]
MOVEQ           R8, R0
STR             R5, [R4,#0x24C]
BEQ             loc_252400
CMP             R6, #2
MOVEQ           R8, #2
BEQ             loc_252400
CMP             R6, #3
MOVEQ           R8, R9
MOV             R1, R8
MOV             R3, #0x100
MOV             R2, #0
MOV             R0, R4
BL              sub_14C548
VLDR            S2, =1.15
VLDR            S0, [R4,#0x15C]
VLDR            S16, =8.0
ADD             R0, R4, #0x158
VSUB.F32        S2, S2, S0
VSUB.F32        S0, S17, S0
VMOV.F32        S1, S16
MOV             R1, #0
BL              sub_5A1A08
LDR             R0, =flt_6E1A54
VLDR            S0, [SP,#0x40+var_34]
ADD             R2, SP, #0x40+var_34
MOV             R1, #0
VLDR            S1, [R0]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x40+var_34]
VLDR            S1, [R0,#(flt_6E1A58 - 0x6E1A54)]
VLDR            S0, [SP,#0x40+var_30]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x40+var_30]
VLDR            S1, [R0,#(flt_6E1A5C - 0x6E1A54)]
VLDR            S0, [SP,#0x40+var_2C]
ADD             R0, R4, #0x100
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x40+var_2C]
VMOV.F32        S0, S16
BL              sub_5A2074
VLDR            S0, =6.0
MOV             R1, #0
ADD             R0, R4, #0x18C
BL              sub_5A1924
MOV             R1, #0
MOV             R0, R4
STRB            R9, [R4,#0x250]
BL              sub_14C3E8
ADD             SP, SP, #0x18
MOV             R0, R4
VPOP            {D8}
POP             {R4-R10,PC}
