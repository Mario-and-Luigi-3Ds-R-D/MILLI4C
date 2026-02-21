PUSH            {R4-R11,LR}
MOV             R5, R0
LDR             R4, =off_6CE970
VPUSH           {D8}
SUB             SP, SP, #0x2CC
LDR             R0, [R4]
BL              sub_528E64
MOV             R11, R0
LDR             R0, [R4]
BL              sub_5EE520
MOV             R4, #0
ADD             R1, R5, #0x400
VLDR            S16, =0.0
ADD             R1, R1, #0x18
CMP             R0, #4
MOV             R10, #0xFF
MOV             R7, R4
MOV             R6, R4
MOV             R8, R4
STR             R1, [SP,#0x2F8+var_48]
STR             R4, [SP,#0x2F8+var_38]
BEQ             loc_2A5E08
CMP             R0, #5
CMPNE           R0, #6
BEQ             loc_2A5B18
CMP             R0, #7
BEQ             loc_2A604C
B               loc_2A6164
CMP             R0, #5
BEQ             loc_2A5CE0
BL              sub_50F2B8
MOV             R7, R0
ADD             R0, R11, #0x400
STR             R0, [SP,#0x2F8+var_200]
LDRB            R0, [R11,#0x495]
MOV             R8, #0
MOV             R3, #1
CMP             R0, #0
MOVEQ           R0, #1
MOVNE           R0, #2
STR             R0, [SP,#0x2F8+var_1FC]
BIC             R0, R4, #0xFF
ORR             R0, R0, R8
BIC             R1, R0, #0xFF00
LDR             R0, =off_6CE970
MOV             R2, R8,LSL#8
AND             R2, R2, #0xFF00
ORR             R9, R1, R2
LDR             R0, [R0]
STR             R8, [SP,#0x2F8+var_2F8]
LDRB            R1, [R11,#0x495]
MOV             R2, #0x3F ; '?'
BL              sub_5EEC7C
CMP             R0, #0
BEQ             loc_2A5BB0
LDR             R0, [SP,#0x2F8+var_200]
LDRB            R0, [R0,#0xA6]
CMP             R0, #0
BEQ             loc_2A5BB0
MOV             R0, #1
BIC             R1, R9, #0xFF
ORR             R1, R1, R0
MOV             R0, R0,LSL#8
BIC             R1, R1, #0xFF00
AND             R0, R0, #0xFF00
ORR             R9, R1, R0
LDRB            R1, [R11,#0x495]
LDR             R2, =0xE00D
LDR             R0, =dword_6E7CD0
MOV             R4, #0x64 ; 'd'
BL              sub_5F1164
LDR             R10, =0x51EB851F
CMP             R0, #0
BEQ             loc_2A5BEC
LDR             R0, =dword_6E30CC
MOV             R1, #0x64 ; 'd'
LDR             R0, [R0,#(dword_6E30F4 - 0x6E30CC)]
MUL             R0, R0, R1
SMULL           R1, R0, R10, R0
MOV             R1, R0,ASR#5
SUB             R4, R1, R0,ASR#31
LDR             R0, =off_6CE970
STR             R8, [SP,#0x2F8+var_1E0]
STR             R8, [SP,#0x2F8+var_1DC]
ADD             R1, SP, #0x2F8+var_1E0
LDR             R0, [R0]
STR             R1, [SP,#0x2F8+var_2F8]
LDRB            R1, [R11,#0x495]
MOV             R3, #1
MOV             R2, #0x1F
BL              sub_5EEC7C
CMP             R0, #0
NOP
BEQ             loc_2A5C48
LDR             R0, [SP,#0x2F8+var_1E0]
MOV             R1, #1
BIC             R2, R9, #0xFF00
MOV             R1, R1,LSL#8
MUL             R0, R0, R4
AND             R1, R1, #0xFF00
ORR             R9, R2, R1
SMULL           R3, R0, R10, R0
MOV             R1, R0,ASR#5
SUB             R4, R1, R0,ASR#31
MOV             R0, R9,LSL#16
ADD             R1, SP, #0x2F8+var_1D8
MOV             R0, R0,ASR#24
STM             R1, {R0,R4}
LDM             R7, {R4,R10}
CMP             R4, R10
ADDNE           R11, R11, #0x100
BEQ             loc_2A5D7C
LDRH            R0, [R4]
BL              sub_50F020
MOV             R8, R0
LDRH            R0, [R0,#0x18]
CMP             R0, #0
BEQ             loc_2A5C98
MOV             R2, #0
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_2A5D70
LDRB            R0, [R8,#5]
CMP             R0, #3
LDRNE           R1, [SP,#0x2F8+var_1FC]
CMPNE           R0, R1
BNE             loc_2A5D70
ADD             R0, R6, R6,LSL#2
ADD             R7, R5, R0,LSL#2
ADD             R7, R7, #0x620
MOV             R0, R7
BL              sub_29FBF0
LDRH            R0, [R4]
SXTB            R1, R9
CMP             R1, #0
STR             R0, [R7]
LDRB            R0, [R8,#3]
MOVNE           R0, #0
BNE             loc_2A5D04
B               loc_2A5CF4
NOP
BL              sub_50F1A4
NOP
NOP
B               loc_2A5B24
LDR             R1, [SP,#0x2F8+var_1D4]
BL              sub_586850
ANDS            R0, R0, #0xFF
MOVEQ           R0, #1
STRB            R0, [R7,#6]
LDRSH           R1, [R11,#0x4C]
CMP             R0, R1
MOVLE           R0, #1
MOVGT           R0, #0
STRB            R0, [R7,#8]
LDRB            R0, [R8,#2]
ADD             R0, R0, #2
STRB            R0, [R7,#4]
LDR             R0, =off_6CE970
LDRH            R1, [R4]
LDR             R0, [R0]
BL              sub_5EE79C
CMP             R0, #0
MOVNE           R0, #3
MOVEQ           R0, #0xFF
STRB            R0, [R7,#5]
LDRH            R0, [R4]
BL              sub_50F064
STR             R0, [R7,#0xC]
LDRH            R0, [R4]
BL              sub_50F14C
MOV             R1, #0x11
ADD             R2, R6, #1
STR             R0, [R7,#0x10]
AND             R6, R2, #0xFF
STRB            R1, [R7,#7]
ADD             R4, R4, #2
CMP             R4, R10
BNE             loc_2A5C68
LDR             R0, [SP,#0x2F8+var_200]
MOV             R1, #1
LDRB            R2, [R0,#0x95]
MOV             R0, #2
CMP             R2, #0
MOVNE           R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52B778
MOV             R8, R0
LDR             R0, [SP,#0x2F8+var_1D8]
MOV             R1, #1
STRB            R1, [R5,#0xFF]
CMP             R0, #0
MOVNE           R0, #0x13
MOV             R4, R1
MOV             R7, R1
STRNE           R0, [SP,#0x2F8+var_38]
LDR             R1, =0xC014
ADD             R0, R5, #0x210
BL              sub_2A5A0C
LDR             R1, =0xA005
LDR             R0, [SP,#0x2F8+var_48]
BL              sub_2A5A0C
NOP
NOP
B               loc_2A6164
DCD off_6CE970
DCFS 0.0
DCD 0xE00D
DCD dword_6E7CD0
DCD 0x51EB851F
DCD dword_6E30CC
DCD 0xC014
DCD 0xA005
LDR             R0, =off_6CE970
MOV             R7, #0
MOV             R3, #1
MOV             R2, #0x42 ; 'B'
LDR             R0, [R0]
STR             R7, [SP,#0x2F8+var_2F8]
LDRB            R1, [R11,#0x495]
BL              sub_5EEC7C
STR             R0, [SP,#0x2F8+var_1E8]
NOP
BL              sub_50F220
LDR             R1, [R0,#4]
LDR             R4, [R0]
MOV             R9, R0
CMP             R1, R4
BEQ             loc_2A5FF4
LDR             R7, =off_6CE970
LDRH            R1, [R4]
LDR             R0, [R7]
BL              sub_5EE478
MOVS            R8, R0
NOP
BEQ             loc_2A5FE4
LDRH            R0, [R4]
BL              sub_50EFA0
LDRH            R1, [R0,#0x18]
MOV             R10, R0
TST             R1, #2
BEQ             loc_2A5FE4
MOV             R0, #1
STR             R0, [SP,#0x2F8+var_1D8]
LDR             R0, [R7]
LDR             R2, =byte_19CF31
LDRB            R2, [R2,R0]; byte_19CF31
CMP             R2, #0
BEQ             loc_2A5EBC
LDRB            R2, [R10,#0x14]
CMP             R2, #0xF
CMPNE           R2, #0x10
BEQ             loc_2A5EB4
CMP             R2, #0x11
CMPNE           R2, #0x12
BNE             loc_2A5EBC
MOV             R2, #0
STR             R2, [SP,#0x2F8+var_1D8]
AND             R2, R1, #0x780
CMP             R2, #0x300
BNE             loc_2A5EFC
MOV             R1, #0
STR             R1, [SP,#0x2F8+var_2F8]
LDRB            R1, [R11,#0x495]
MOV             R3, #1
MOV             R2, #0x3B ; ';'
BL              sub_5EEC7C
CMP             R0, #0
NOP
BEQ             loc_2A5EFC
LDRB            R0, [R11,#0x4A5]
CMP             R0, #0
MOVNE           R0, #0
STRNE           R0, [SP,#0x2F8+var_1D8]
ADD             R0, R6, R6,LSL#2
ADD             R0, R5, R0,LSL#2
ADD             R7, R0, #0x620
MOV             R0, R7
BL              sub_29FBF0
LDRH            R0, [R10,#0x18]
MOV             R2, #2
TST             R0, #0xC
MOV             R3, R0,LSL#21
MOV             R0, R0,LSL#28
MOVEQ           R1, #1
MOVNE           R1, #0
CMP             R2, R0,LSR#30
MOV             R0, R3,LSR#28
MOVEQ           R2, #1
MOVNE           R2, #0
STRB            R0, [SP,#0x2F8+var_1E0]
MOV             R3, #0
STRB            R2, [SP,#0x2F8+var_1E0+1]
STRB            R3, [SP,#0x2F8+var_1E0+2]
LDRH            R2, [R4]
LDR             R0, [SP,#0x2F8+var_1E8]
STR             R2, [R7]
LDRB            R2, [R10,#8]
CMP             R0, #0
MOV             R0, #0xFF
ADD             R2, R2, #2
STRB            R2, [R7,#4]
STRB            R0, [R7,#5]
MOVNE           R0, #0
MOVEQ           R0, R8
STRB            R0, [R7,#6]
LDR             R0, [SP,#0x2F8+var_1D8]
CMP             R0, #0
BEQ             loc_2A5FA4
MOV             R3, #0
ADD             R2, SP, #0x2F8+var_1E0
MOV             R0, R11
BL              sub_5EC5E4
CMP             R0, #0
MOVNE           R0, #1
BNE             loc_2A5FA8
MOV             R0, #0
CMP             R8, #2
STRB            R0, [R7,#8]
LDRH            R0, [R4]
MOVCS           R1, #1
MOVCC           R1, #0
BL              sub_50EF08
STR             R0, [R7,#0xC]
LDRH            R0, [R4]
MOV             R1, #3
BL              sub_50EF08
MOV             R1, #0xFF
ADD             R2, R6, #1
STR             R0, [R7,#0x10]
AND             R6, R2, #0xFF
STRB            R1, [R7,#7]
LDR             R0, [R9,#4]
ADD             R4, R4, #2
CMP             R0, R4
BNE             loc_2A5E48
LDR             R0, =off_6CE970
MOV             R1, #0
LDR             R0, [R0]
BL              sub_52B778
LDR             R1, [SP,#0x2F8+var_1E8]
MOV             R8, R0
MOV             R0, #1
CMP             R1, #0
MOV             R7, R0
STRB            R0, [R5,#0xFF]
MOVNE           R0, #0x1D
STRNE           R0, [SP,#0x2F8+var_38]
LDR             R1, =0xC014
MOV             R4, #0
ADD             R0, R5, #0x210
BL              sub_2A5A0C
LDR             R0, [SP,#0x2F8+var_48]
NOP
BL              sub_592EDC
NOP
NOP
B               loc_2A6164
ADD             R0, SP, #0x2F8+var_1EC
MOV             R1, #3
MOV             R9, #0
STR             R0, [SP,#0x2F8+var_5C]
STR             R0, [SP,#0x2F8+var_58]
BL              sub_1CF4B8
ADD             R0, SP, #0x2F8+var_5C
LDM             R0, {R7,R8}
CMP             R7, R8
MOVNE           R11, #1
BEQ             loc_2A6128
ADD             R0, R6, R6,LSL#2
ADD             R4, R5, R0,LSL#2
ADD             R4, R4, #0x620
MOV             R0, R4
BL              sub_29FBF0
LDR             R0, [R7]
MOV             R0, R0,LSL#8
MOV             R0, R0,LSR#16
STR             R0, [R4]
LDR             R0, [R7]
AND             R0, R0, #0xFF
CMP             R0, #1
MOVEQ           R0, #0x1F
MOVNE           R0, #0x20 ; ' '
STRB            R0, [R4,#4]
LDR             R0, [R7]
MOV             R0, R0,LSL#8
MOV             R1, R0,LSR#16
LDR             R0, =dword_6E7CD0
BL              sub_5F1104
CMP             R0, #0
MOVNE           R0, #0xFF
MOVEQ           R0, #0x1E
STRB            R0, [R4,#5]
STRB            R9, [R4,#6]
STRB            R11, [R4,#8]
LDR             R1, [R7]
LDR             R0, =0xFFFEFFFE
LDR             R3, =0x138FD8
MOV             R2, #0
MOV             R1, R1,LSL#8
AND             R1, R0, R1,LSR#15
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R0, R0, R3; loc_138FD8
BL              sub_571558
STR             R0, [R4,#0xC]
ADD             R0, R6, #1
ADD             R7, R7, #4
STR             R9, [R4,#0x10]
CMP             R7, R8
AND             R6, R0, #0xFF
STRB            R10, [R4,#7]
BNE             loc_2A6078
LDR             R0, =off_6CE970
MOV             R1, #3
LDR             R0, [R0]
BL              sub_52B778
LDR             R10, =0xA002
MOV             R8, R0
MOV             R4, #0
MOV             R7, R4
MOV             R1, R10
ADD             R0, R5, #0x210
STRB            R9, [R5,#0xFF]
BL              sub_2A5A0C
LDR             R0, [SP,#0x2F8+var_48]
MOV             R1, R10
BL              sub_2A5A0C
ADD             R0, SP, #0x2F8+var_2F4
BL              sub_2A060C
ADD             R0, R5, #0x210
STR             R0, [SP,#0x2F8+var_2F4]
LDR             R0, [R5,#0x41C]
MOV             R12, #0xD
LDR             R1, =flt_6E34B0
CMP             R0, #0
LDRNE           R0, [SP,#0x2F8+var_48]
CMP             R7, #0
MOV             R9, #0xE
STR             R0, [SP,#0x2F8+var_2F0]
ADDNE           R0, R5, #0x314
MOVEQ           R0, #0
CMP             R4, #0
STR             R0, [SP,#0x2F8+var_2EC]
ADDNE           R0, R5, #0x314
MOVEQ           R0, #0
STR             R0, [SP,#0x2F8+var_2E8]
ADD             R0, R5, #0x314
STR             R0, [SP,#0x2F8+var_2E4]
LDR             R0, [SP,#0x2F8+var_38]
MOV             R3, #0x10
MOV             R7, #0
STRB            R0, [SP,#0x2F8+var_2E0]
STRB            R12, [SP,#0x2F8+var_2DF]
STRB            R9, [SP,#0x2F8+var_2DE]
STRB            R3, [SP,#0x2F8+var_2DC]
MOV             R2, #0xF
STRB            R7, [SP,#0x2F8+var_2DB]
STRB            R2, [SP,#0x2F8+var_2DD]
STRB            R7, [SP,#0x2F8+var_2D9]
STRB            R7, [SP,#0x2F8+var_2D8]
LDR             R0, [R1,#(dword_6E362C - 0x6E34B0)]
MOV             R2, #0x400
STR             R2, [SP,#0x2F8+var_2D4]
STRB            R0, [SP,#0x2F8+var_2DA]
LDR             R0, [R1,#(dword_6E3628 - 0x6E34B0)]
SUB             R12, R1, #0x30 ; '0'
ADD             R10, SP, #0x2F8+var_298
STR             R0, [SP,#0x2F8+var_2D0]
LDR             R0, [R1,#(flt_6E3630 - 0x6E34B0)]
LDR             R9, =flt_6E34B0
STR             R0, [SP,#0x2F8+var_2CC]
LDR             R0, [R1,#(dword_6E36D8 - 0x6E34B0)]
STR             R0, [SP,#0x2F8+var_2C8]
LDR             R0, [R1,#(dword_6E36DC - 0x6E34B0)]
STR             R0, [SP,#0x2F8+var_2C4]
LDR             R0, [R1,#(dword_6E36E0 - 0x6E34B0)]
STR             R0, [SP,#0x2F8+var_2C0]
VLDR            S0, [R1,#(flt_6E3634 - 0x6E34B0)]
ADD             R0, R1, #0x1C8
ADD             R1, SP, #0x2F8+var_2A8
VCVT.F32.U32    S0, S0
VSTR            S0, [SP,#0x2F8+var_2BC]
LDM             R0, {R2,R3}
ADD             R0, R12, #0x200
ADD             R12, R12, #0x200
STRD            R2, R3, [SP,#0x2F8+var_2B8]
LDM             R12, {R2,R3}
STRD            R2, R3, [SP,#0x2F8+var_2B0]
ADD             R3, R0, #8
LDR             R2, [SP,#0x2F8+var_38]
LDM             R3, {R3,R12}
CMP             R2, #0x1D
STM             R1, {R3,R12}
MOV             R1, #1
LDR             R3, =unk_6E3480
LDR             R12, =unk_6E3690
ADDEQ           R3, R3, #0x220
ADDNE           R3, R3, #0x218
LDM             R3, {R2,R3}
STRD            R2, R3, [SP,#0x2F8+var_2A0]
LDM             R12, {R3,R12}
ADD             R2, R5, #0x620
STM             R10, {R3,R12}
ADD             R3, R0, #0x28 ; '('
ADD             R10, SP, #0x2F8+var_290
LDM             R3, {R3,R12}
STM             R10, {R3,R12}
ADD             R3, R0, #0x38 ; '8'
ADD             R10, SP, #0x2F8+var_288
LDM             R3, {R3,R12}
STM             R10, {R3,R12}
ADD             R3, R0, #0x40 ; '@'
ADD             R10, SP, #0x2F8+var_280
LDM             R3, {R3,R12}
STM             R10, {R3,R12}
ADD             R3, R0, #0x48 ; 'H'
ADD             R10, SP, #0x2F8+var_278
LDM             R3, {R3,R12}
STM             R10, {R3,R12}
ADD             R3, R0, #0x50 ; 'P'
ADD             R10, SP, #0x2F8+var_270
LDM             R3, {R3,R12}
STM             R10, {R3,R12}
ADD             R3, R0, #0x64 ; 'd'
ADD             R10, SP, #0x2F8+var_2F4
LDM             R3, {R3,R12}
STR             R2, [SP,#0x2F8+var_248]
ADD             R2, SP, #0x2F8+var_250
STM             R2, {R3,R12}
STRB            R6, [SP,#0x2F8+var_244]
VLDR            S1, [R9,#(flt_6E3608 - 0x6E34B0)]
ADD             R6, R5, #0x158
VSTR            S1, [SP,#0x2F8+var_238]
VLDR            S2, [R9,#(flt_6E360C - 0x6E34B0)]
VSTR            S2, [SP,#0x2F8+var_234]
VLDR            S0, [R9,#(flt_6E3610 - 0x6E34B0)]
VSTR            S0, [SP,#0x2F8+var_230]
STRB            R7, [SP,#0x2F8+var_22C]
STRB            R1, [SP,#0x2F8+var_22B]
MOV             R1, #0xFFFFFF00
VSTR            S16, [SP,#0x2F8+var_228]
REV             R1, R1
STR             R1, [SP,#0x2F8+var_220]
STR             R1, [SP,#0x2F8+var_224]
LDR             R1, [R0,#(dword_6E36EC - 0x6E3680)]
STR             R1, [SP,#0x2F8+var_21C]
LDR             R1, [R0,#(dword_6E36F0 - 0x6E3680)]
STR             R1, [SP,#0x2F8+var_218]
LDR             R1, [R0,#(dword_6E36F4 - 0x6E3680)]
STR             R1, [SP,#0x2F8+var_214]
LDR             R1, [R0,#(dword_6E36F8 - 0x6E3680)]
STR             R1, [SP,#0x2F8+var_210]
LDR             R0, [R0,#(dword_6E36FC - 0x6E3680)]
ADD             R1, SP, #0x2F8+var_1F8
STR             R0, [SP,#0x2F8+var_20C]
ADD             R0, R9, #0x1A4
VLDM            R0, {S3-S5}
MOV             R0, R6
VADD.F32        S1, S1, S3
VADD.F32        S0, S0, S5
VADD.F32        S2, S2, S4
VSTR            S0, [SP,#0x2F8+var_1F0]
VSTM            R1, {S1-S2}
BL              sub_5A26D0
ADD             R3, SP, #0x2F8+var_1F8
LDM             R3, {R0-R2}
ADD             R3, R6, #0x1C
ADD             R6, R6, #4
STM             R3, {R0-R2}
STM             R6, {R0-R2}
ADD             R1, R9, #0x198
VLDR            S1, [R9,#(flt_6E3608 - 0x6E34B0)]
VLDR            S0, [R9,#(flt_6E360C - 0x6E34B0)]
VLDR            S2, [R9,#(flt_6E3610 - 0x6E34B0)]
ADD             R2, SP, #0x2F8+var_1F8
VLDM            R1, {S3-S5}
MOV             R1, #0
ADD             R0, R5, #0x158
VADD.F32        S1, S1, S3
VADD.F32        S0, S0, S4
VADD.F32        S2, S2, S5
VSTR            S1, [SP,#0x2F8+var_1F8]
VSTR            S0, [SP,#0x2F8+var_1F4]
VSTR            S2, [SP,#0x2F8+var_1F0]
VLDR            S0, [R9,#(flt_6E3620 - 0x6E34B0)]
BL              sub_5A2298
LDRD            R0, R1, [R8]
LDRB            R3, [SP,#0x2F8+var_244]
LDR             R12, [SP,#0x2F8+var_248]
STRD            R0, R1, [SP,#0x2F8+var_240]
LDRB            R6, [SP,#0x2F8+var_2DA]
CMP             R3, #0
STRBEQ          R7, [SP,#0x2F8+var_240+1]
ADD             R2, R10, #0xB4
STRBEQ          R7, [SP,#0x2F8+var_240]
BEQ             loc_2A64C0
ADD             R0, R3, R3,LSL#2
LDR             R10, =0x66666667
MOV             R1, R12
ADD             R8, R12, R0,LSL#2
SUB             R0, R8, R1
SMULL           R9, R0, R10, R0
MOV             R9, R0,ASR#3
SUB             R0, R9, R0,ASR#31
ADD             R9, R0, #1
CMP             R9, #1
MOV             R0, #1
BLE             loc_2A65A4
SUB             R8, R8, R1
LDR             R9, [R2,#4]
SMULL           R11, R8, R10, R8
MOV             R11, R8,ASR#3
SUB             R8, R11, R8,ASR#31
ADD             R8, R8, #1
LDR             R11, [R1]
CMP             R11, R9
BNE             loc_2A6594
SUB             R0, R1, R12
SMULL           R1, R0, R10, R0
MOV             R1, R0,ASR#3
SUB             R1, R1, R0,ASR#31
CMN             R1, #1
BEQ             loc_2A65A4
LDRB            R0, [R2,#1]
CMP             R0, R1
BEQ             loc_2A64C0
LDRB            R0, [R2]
STRB            R1, [R2,#1]
CMP             R0, R1
MOVGT           R0, R1
ADD             R12, R0, R6
CMP             R12, R3
MOVGT           R12, R3
CMP             R1, R12
ADDGE           R12, R1, #1
SUBGE           R0, R12, R6
CMP             R12, R6
SUBGE           R3, R12, R6
MOVLT           R0, #0
CMPGE           R0, R3
MOVGT           R0, R3
STRB            R0, [R2]
ADD             R1, SP, #0x2F8+var_2F4
ADD             R0, R5, #0xDF0
BL              sub_2A0198
ADD             R0, R5, #0xDF0
NOP
BL              sub_5CDFB8
ADD             R0, SP, #0x2F8+var_50
ADD             R1, SP, #0x2F8+var_50
VSTM            R0, {S0-S1}
LDR             R0, [R5,#0x208]
BL              sub_215A04
MOV             R0, #0xFFFFFFFF
LDR             R8, =flt_6E34B0
REV             R0, R0
ADD             R1, SP, #0x2F8+var_3C
STR             R0, [SP,#0x2F8+var_3C]
VLDR            S0, [R8,#(flt_6E3620 - 0x6E34B0)]
ADD             R0, R5, #0xDF0
BL              sub_29FBAC
VLDR            S0, [R8,#(flt_6E3620 - 0x6E34B0)]
ADD             R2, R8, #0x158
MOV             R1, #0
ADD             R0, R5, #0x100
BL              sub_5A2298
LDR             R1, [R5,#0x24]
LDR             R10, =byte_19D697
CMP             R4, #0
STR             R1, [R5,#0xEE0]
LDR             R1, [R5,#0x28]
STR             R1, [R5,#0xEE4]
LDR             R1, [R5,#0x2C]
STR             R1, [R5,#0xEE8]
BEQ             loc_2A6570
LDR             R9, =off_6CE970
LDR             R0, [R9]
BL              sub_5EE974
CMP             R0, #0
NOP
BEQ             loc_2A6570
LDR             R0, [R9]
BL              sub_5EE4D4
CMP             R0, #0
NOP
BEQ             loc_2A65FC
LDR             R0, =off_6CE970
STRB            R7, [R5,#0xFE]
LDR             R0, [R0]
STRB            R7, [R0,R10]; byte_19D697
MOV             R0, #3
STRB            R0, [R5,#0xFD]
ADD             SP, SP, #0x2CC
VPOP            {D8}
POP             {R4-R11,PC}
ADD             R0, R0, #1
CMP             R8, R0
ADD             R1, R1, #0x14
BGT             loc_2A6450
LDRB            R0, [R2]
ADD             R1, R0, R6
CMP             R3, R1
MOV             R8, R0
SUBLT           R0, R3, R6
LDRB            R6, [R2,#1]
CMPLT           R0, #0
SUB             R1, R3, #1
MOVLT           R0, #0
SUB             R3, R6, R8
ADD             R3, R3, R0
CMP             R3, R1
MOVGE           R3, R1
BGE             loc_2A65E4
CMP             R0, R3
MOVGE           R3, R0
STRB            R0, [R2]
ADD             R0, R3, R3,LSL#2
STRB            R3, [R2,#1]
LDR             R0, [R12,R0,LSL#2]
STR             R0, [R2,#4]
B               loc_2A64C0
LDR             R0, [R9]
ADD             R6, R5, #0x8000
ADD             R6, R6, #0x304
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xD200
LDRB            R0, [R0,#(loc_19D258 - 0x19D200)]
CMP             R0, #0
LDREQ           R0, [R6]
CMPEQ           R0, #0
BEQ             loc_2A6570
ADD             R0, R8, #0x15C
ADD             R1, R8, #0x1C0
VLDR            S2, [R8,#(flt_6E3608 - 0x6E34B0)]
VLDR            S5, [R8,#(flt_6E366C - 0x6E34B0)]
ADD             R4, R5, #0x1B0
VLDM            R0, {S0-S1}
VADD.F32        S2, S2, S5
MOV             R0, R4
VLDM            R1, {S3-S4}
ADD             R1, SP, #0x2F8+var_204
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S4
VSTR            S2, [SP,#0x2F8+var_208]
VSTM            R1, {S0-S1}
BL              sub_5A26D0
ADD             R3, SP, #0x2F8+var_208
LDM             R3, {R0-R2}
ADD             R3, R4, #0x1C
ADD             R4, R4, #4
STM             R3, {R0-R2}
STM             R4, {R0-R2}
ADD             R0, R8, #0x1B0
VLDR            S0, [R8,#(flt_6E3608 - 0x6E34B0)]
VLDR            S2, [R8,#(flt_6E360C - 0x6E34B0)]
VLDR            S1, [R8,#(flt_6E3610 - 0x6E34B0)]
ADD             R2, SP, #0x2F8+var_208
VLDM            R0, {S3-S5}
MOV             R1, #0
ADD             R0, R5, #0x1B0
VADD.F32        S0, S0, S3
VADD.F32        S2, S2, S4
VADD.F32        S1, S1, S5
VSTR            S0, [SP,#0x2F8+var_208]
VSTR            S2, [SP,#0x2F8+var_204]
VSTR            S1, [SP,#0x2F8+var_200]
VLDR            S0, [R8,#(flt_6E3620 - 0x6E34B0)]
BL              sub_5A2298
ADD             R0, R5, #0xDF0
NOP
BL              sub_29F9A4
LDR             R0, [R0]
MOV             R4, #1
UXTH            R1, R0
LDR             R0, [R6]
TST             R0, R4,LSL R1
LDRNE           R0, [R9]
MOVEQ           R0, #2
BLNE            sub_5EE79C
MOV             R1, R0
ADD             R0, R5, #0x400
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R0, #0x11C
BL              sub_11DCDC
STRB            R4, [R5,#0xFE]
LDR             R0, [R9]
STRB            R4, [R0,R10]; byte_19D697
B               loc_2A6580
