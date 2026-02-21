PUSH            {R0-R11,LR}
MOV             R2, #0x3F4
MOV             R4, R1
MOV             R1, #1
MOV             R5, #0
MOV             R6, R3
MOV             R3, #2
VPUSH           {D8-D9}
SUB             SP, SP, #0x8C
STR             R1, [R0,#4]
STR             R5, [R0]
STR             R5, [R0,#8]
STR             R5, [R0,#0xC]
STR             R5, [R0,#0x10]
STR             R5, [R0,#0x14]!
LDR             R1, =sub_14F198
ADD             R0, R0, #0x14
BLX             sub_1002F4
STR             R4, [R0,#0x7EC]
STRB            R5, [R0,#-0xF]
SUB             R10, R0, #0x28 ; '('
STRB            R5, [R0,#0x7E8]
LDR             R0, [SP,#0xD0+var_2C]
LDR             R4, [R4,#8]
ADD             R3, R10, #0x1C
LDR             R11, =0xFFFF
LDM             R0, {R1,R2}
CMP             R6, #0
LDR             R0, [R0,#8]
LDR             R7, =off_6CE970
LDR             R8, =0x83C
STR             R0, [R10,#0x24]
LDR             R9, =0x2AAAAAAB
STM             R3, {R1,R2}
VLDR            S17, =0.0
STRB            R6, [R10,#0x18]
BEQ             loc_25D1FC
CMP             R6, #2
BEQ             loc_25D8BC
B               loc_25E2F4
LDR             R0, [R4,#0x2CC]
VLDR            S16, [R4,#0x2D4]
STR             R0, [SP,#0xD0+var_AC]
LDR             R0, [R7]
ADD             R0, R0, #0x68 ; 'h'
STR             R0, [R10]
LDR             R1, [SP,#0xD0+var_AC]
MOV             R0, R10
BL              sub_624FA8
LDR             R1, [SP,#0xD0+var_AC]
MOV             R0, R11
BL              sub_127F6C
STR             R0, [SP,#0xD0+var_B4]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
STR             R0, [SP,#0xD0+var_B8]
LDR             R0, [SP,#0xD0+var_AC]
STRB            R5, [SP,#0xD0+var_9B]
CMP             R0, #0
MOV             R0, #0
STR             R0, [SP,#0xD0+var_98]
BLS             loc_25E2F4
ADD             R0, SP, #0xD0+var_CC
STR             R0, [SP,#0xD0+var_84]
LDR             R0, [SP,#0xD0+var_B8]
BL              sub_464278
LDR             R0, [SP,#0xD0+var_2C]
VLDR            S18, [R0]
LDR             R0, [SP,#0xD0+var_B8]
VMLA.F32        S18, S0, S16
BL              sub_4642E0
LDR             R0, [SP,#0xD0+var_2C]
MOV             R3, #0
MOV             R4, SP
MOV             R2, R3
VLDR            S1, [R0,#8]
VSTR            S18, [SP,#0xD0+var_A8]
VSTR            S17, [SP,#0xD0+var_A4]
VMLA.F32        S1, S0, S16
VSTR            S1, [SP,#0xD0+var_A0]
LDR             R0, [SP,#0xD0+var_98]
CMP             R0, #0
MOVEQ           R0, #1
MOVNE           R0, #0
STRB            R0, [SP,#0xD0+var_9C]
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x83C
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_25D2DC
LDR             R1, [R10,#0x814]
ADD             R2, SP, #0xD0+var_A8
BL              sub_25CFA8
STR             R0, [SP,#0xD0+var_D0]
ADD             R0, R4, #4
ADD             R1, R10, #0x10
STR             R0, [SP,#0xD0+var_C8]
STR             R0, [SP,#0xD0+var_CC]
LDR             R2, [R10,#0xC]
LDM             R1, {R1,R12}
MOV             R8, R10
LDR             R5, =0x2AAAAAAB
SUB             R2, R1, R2
ADD             R0, R10, #0xC
SMULL           R3, R2, R5, R2
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
ADD             R3, R2, #1
CMP             R3, R12
BLS             loc_25D37C
LDR             R0, [R8,#4]
MOV             R1, #1
LDR             R2, [R8]
CMP             R0, #1
MOVLS           R0, R1
MOV             R1, #0
STRD            R0, R1, [SP,#0xD0+var_64]
STR             R2, [SP,#0xD0+var_68]
STR             R1, [SP,#0xD0+var_5C]
STR             R1, [SP,#0xD0+var_58]
STR             R1, [SP,#0xD0+var_54]
LDR             R0, [R8,#0x14]
MOV             R4, R3
ADD             R6, SP, #0xD0+var_68
MOV             R1, R0,LSL#1
CMP             R1, R4
MOVCC           R1, R4
MOV             R0, R6
BL              sub_624FA8
CMP             R0, #0
NOP
BNE             loc_25D3CC
B               loc_25D3B4
CMP             R1, #0
BEQ             loc_25D3A4
LDR             R3, [SP,#0xD0+var_D0]
ADD             R2, SP, #0xD0+var_CC
STR             R3, [R1],#4
STR             R2, [R1]
LDR             R2, [SP,#0xD0+var_C8]
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R1, [SP,#0xD0+var_C8]
LDR             R1, [R0,#4]
ADD             R1, R1, #0xC
STR             R1, [R0,#4]
B               loc_25D810
MOV             R1, R4
MOV             R0, R6
BL              sub_624FA8
CMP             R0, #0
NOP
BEQ             loc_25D4C8
ADD             R9, R8, #0xC
LDR             R0, =0x2AAAAAAB
LDM             R9, {R9,R11}
SUB             R1, R11, R9
SMULL           R0, R1, R0, R1
LDR             R0, [SP,#0xD0+var_54]
MOV             R2, R1,ASR#1
SUB             R1, R2, R1,ASR#31
CMP             R1, R0
ADD             R2, SP, #0xD0+var_5C
BHI             loc_25D67C
STR             R2, [SP,#0xD0+var_BC]
LDR             R5, [SP,#0xD0+var_58]
LDR             R7, [SP,#0xD0+var_5C]
CMP             R9, R11
STR             R9, [SP,#0xD0+var_90]
BNE             loc_25D598
CMP             R7, R5
MOVNE           R9, #0
BEQ             loc_25D49C
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_25D488
LDR             R6, [R4]
CMP             R6, #0
BEQ             loc_25D488
LDR             R0, [R6,#0x7EC]
CMP             R0, #0
BEQ             loc_25D454
BL              sub_533330
STR             R9, [R6,#0x7EC]
LDR             R0, [R6,#0x7F0]
CMP             R0, #0
BEQ             loc_25D468
BL              sub_533330
STR             R9, [R6,#0x7F0]
ADD             R0, R6, #0x3F8
BL              sub_14F3EC
SUB             R0, R0, #0x3F4
NOP
BL              sub_14F3EC
SUB             R0, R0, #4
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_25D41C
LDR             R0, [SP,#0xD0+var_BC]
LDR             R1, [R0]
STR             R1, [R0,#4]
B               loc_25D67C
DCD sub_14F198
DCD 0xFFFF
DCFS 0.0
DCD off_6CE970
DCD 0x83C
DCD 0x2AAAAAAB
DCD dword_6D1F40
LDR             R5, [SP,#0xD0+var_58]
LDR             R7, [SP,#0xD0+var_5C]
MOV             R8, #0
ADD             R9, R6, #0xC
CMP             R7, R5
STR             R8, [SP,#0xD0+var_54]
BEQ             loc_25D564
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_25D550
LDR             R6, [R4]
CMP             R6, #0
BEQ             loc_25D550
LDR             R0, [R6,#0x7EC]
CMP             R0, #0
BEQ             loc_25D51C
BL              sub_533330
STR             R8, [R6,#0x7EC]
LDR             R0, [R6,#0x7F0]
CMP             R0, #0
BEQ             loc_25D530
BL              sub_533330
STR             R8, [R6,#0x7F0]
ADD             R0, R6, #0x3F8
BL              sub_14F3EC
SUB             R0, R0, #0x3F4
NOP
BL              sub_14F3EC
SUB             R0, R0, #4
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_25D4E4
STR             R8, [R9]
STR             R8, [R9,#4]
LDR             R0, [SP,#0xD0+var_60]
STR             R8, [SP,#0xD0+var_60]
CMP             R0, #0
BLNE            sub_2FF5D4
MOV             R2, #0
LDRD            R0, R1, [SP,#0xD0+var_5C]
BL              sub_628F1C
LDR             R0, [SP,#0xD0+var_60]
CMP             R0, #0
BEQ             loc_25D810
B               loc_25D808
CMP             R7, R5
MOVNE           R9, #0
BEQ             loc_25D624
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_25D610
LDR             R6, [R4]
CMP             R6, #0
BEQ             loc_25D610
LDR             R0, [R6,#0x7EC]
CMP             R0, #0
BEQ             loc_25D5DC
BL              sub_533330
STR             R9, [R6,#0x7EC]
LDR             R0, [R6,#0x7F0]
CMP             R0, #0
BEQ             loc_25D5F0
BL              sub_533330
STR             R9, [R6,#0x7F0]
ADD             R0, R6, #0x3F8
BL              sub_14F3EC
SUB             R0, R0, #0x3F4
NOP
BL              sub_14F3EC
SUB             R0, R0, #4
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_25D5A4
LDR             R0, [SP,#0xD0+var_BC]
LDR             R9, [SP,#0xD0+var_90]
LDR             R0, [R0]
CMP             R9, R11
BEQ             loc_25D674
CMP             R0, #0
BEQ             loc_25D664
VLDR            S0, [R9]
ADD             R1, R9, #4
VSTR            S0, [R0]
STR             R1, [R0,#4]
LDR             R3, [R9,#8]
ADD             R2, R0, #4
STR             R3, [R0,#8]
STR             R2, [R3]
STR             R2, [R9,#8]
ADD             R9, R9, #0xC
CMP             R9, R11
ADD             R0, R0, #0xC
BNE             loc_25D638
LDR             R1, [SP,#0xD0+var_BC]
STR             R0, [R1,#4]
LDR             R2, [SP,#0xD0+var_58]
LDR             R3, [SP,#0xD0+var_5C]
LDR             R0, =0x2AAAAAAB
LDR             R1, [SP,#0xD0+var_54]
SUB             R2, R2, R3
ADD             R12, SP, #0xD0+var_68
SMULL           R2, R0, R0, R2
MOV             R2, R0,ASR#1
SUB             R0, R2, R0,ASR#31
ADD             R0, R0, #1
CMP             R0, R1
BHI             loc_25D6E4
LDR             R0, [SP,#0xD0+var_58]
CMP             R0, #0
BEQ             loc_25D6D8
LDR             R2, [SP,#0xD0+var_D0]
ADD             R1, SP, #0xD0+var_CC
STR             R2, [R0],#4
STR             R1, [R0]
LDR             R1, [SP,#0xD0+var_C8]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0xD0+var_C8]
LDR             R0, [SP,#0xD0+var_58]
ADD             R0, R0, #0xC
STR             R0, [SP,#0xD0+var_58]
ADD             R0, SP, #0xD0+var_68
LDM             R8, {R2,R7}
ADD             R9, R12, #0xC
LDM             R0, {R5,R6}
ADD             R3, R8, #0x14
STR             R2, [SP,#0xD0+var_68]
STR             R7, [SP,#0xD0+var_64]
STM             R8, {R5,R6}
MOV             R4, #0
LDR             R6, [R8,#8]
LDR             R5, [SP,#0xD0+var_60]
STR             R6, [SP,#0xD0+var_60]
STR             R5, [R8,#8]
LDR             R12, [R8,#0xC]
LDR             R1, [SP,#0xD0+var_5C]
STR             R12, [SP,#0xD0+var_5C]
STR             R1, [R8,#0xC]
LDR             R1, [R8,#0x10]
LDR             R0, [SP,#0xD0+var_58]
STR             R1, [SP,#0xD0+var_58]
STR             R0, [R8,#0x10]
LDR             R0, [SP,#0xD0+var_54]
LDR             R1, [R3]
STR             R0, [R3]
LDR             R6, [SP,#0xD0+var_58]
LDR             R8, [SP,#0xD0+var_5C]
STR             R4, [SP,#0xD0+var_54]
CMP             R8, R6
BEQ             loc_25D7D8
SUB             R6, R6, #0xC
ADD             R1, R6, #4
LDR             R0, [R6,#8]
MOV             R5, R6
CMP             R0, R1
BNE             loc_25D7C4
LDR             R7, [R5]
CMP             R7, #0
BEQ             loc_25D7C4
LDR             R0, [R7,#0x7EC]
CMP             R0, #0
BEQ             loc_25D790
BL              sub_533330
STR             R4, [R7,#0x7EC]
LDR             R0, [R7,#0x7F0]
CMP             R0, #0
BEQ             loc_25D7A4
BL              sub_533330
STR             R4, [R7,#0x7F0]
ADD             R0, R7, #0x3F8
BL              sub_14F3EC
SUB             R0, R0, #0x3F4
NOP
BL              sub_14F3EC
SUB             R0, R0, #4
NOP
BL              sub_300FD4
LDRD            R0, R1, [R5,#4]
CMP             R8, R6
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_25D758
STR             R4, [R9]
STR             R4, [R9,#4]
LDR             R0, [SP,#0xD0+var_60]
STR             R4, [SP,#0xD0+var_60]
CMP             R0, #0
BLNE            sub_2FF5D4
MOV             R2, #0
LDRD            R0, R1, [SP,#0xD0+var_5C]
BL              sub_628F1C
LDR             R0, [SP,#0xD0+var_60]
CMP             R0, #0
BEQ             loc_25D810
NOP
BL              sub_2FF5D4
LDR             R2, [SP,#0xD0+var_C8]
LDRD            R0, R1, [SP,#0xD0+var_B8]
ADD             R0, R0, R1
UXTH            R0, R0
STR             R0, [SP,#0xD0+var_B8]
LDR             R0, [SP,#0xD0+var_84]
CMP             R2, R0
BNE             loc_25D890
LDR             R0, [SP,#0xD0+var_D0]
CMP             R0, #0
BEQ             loc_25D890
MOV             R4, R0
LDR             R0, [R0,#0x7EC]
CMP             R0, #0
BEQ             loc_25D858
BL              sub_533330
MOV             R0, #0
STR             R0, [R4,#0x7EC]
LDR             R0, [R4,#0x7F0]
CMP             R0, #0
BEQ             loc_25D870
BL              sub_533330
MOV             R0, #0
STR             R0, [R4,#0x7F0]
ADD             R0, R4, #0x3F8
BL              sub_14F3EC
SUB             R0, R0, #0x3F4
NOP
BL              sub_14F3EC
SUB             R0, R0, #4
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0xD0+var_CC]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [SP,#0xD0+var_98]
ADD             R0, R0, #1
MOV             R1, R0
STR             R0, [SP,#0xD0+var_98]
LDR             R0, [SP,#0xD0+var_AC]
CMP             R1, R0
BCC             loc_25D25C
B               loc_25E2F4
LDR             R0, [R4,#0x2DC]
CMP             R0, #0
BEQ             loc_25D9F0
LDR             R0, [R7]
MOV             R1, #1
ADD             R0, R0, #0x68 ; 'h'
STR             R0, [R10]
MOV             R0, R10
BL              sub_624FA8
MOV             R11, #1
LDR             R0, [SP,#0xD0+var_2C]
STRB            R11, [SP,#0xD0+var_9B]
VLDR            S5, [R4,#0x2E0]
VLDR            S3, [R4,#0x2E8]
VLDR            S2, [R0]
VLDR            S1, [R0,#8]
VLDR            S4, [R0,#4]
VLDR            S0, [R4,#0x2E4]
VADD.F32        S2, S2, S5
VADD.F32        S1, S1, S3
VADD.F32        S0, S4, S0
ADD             R0, SP, #0xD0+var_A4
MOV             R3, #0
MOV             R6, SP
MOV             R2, R3
VSTR            S2, [SP,#0xD0+var_A8]
VSTM            R0, {S0-S1}
STRB            R11, [SP,#0xD0+var_9C]
LDR             R0, [R7]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, R8
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_25D954
LDR             R1, [R10,#0x814]
ADD             R2, SP, #0xD0+var_A8
BL              sub_25CFA8
STR             R0, [SP,#0xD0+var_D0]
ADD             R0, R6, #4
STR             R0, [SP,#0xD0+var_C8]
STR             R0, [SP,#0xD0+var_CC]
LDR             R0, [R10,#0x10]
LDR             R1, [R10,#0xC]
LDR             R3, [R10,#0x14]
SUB             R1, R0, R1
SMULL           R2, R1, R9, R1
MOV             R2, R1,ASR#1
SUB             R1, R2, R1,ASR#31
ADD             R2, R1, #1
CMP             R2, R3
BLS             loc_25E094
LDR             R0, [R10,#4]
MOV             R4, R2
ADD             R2, SP, #0xD0+var_90
CMP             R0, #1
MOVHI           R11, R0
LDR             R1, [R10]
MOV             R0, #0
MOV             R8, R5
STM             R2, {R0,R8}
ADD             R0, SP, #0xD0+var_98
STR             R5, [SP,#0xD0+var_88]
STR             R5, [SP,#0xD0+var_84]
STM             R0, {R1,R11}
MOV             R1, R4
LDR             R0, [R10,#0x14]
ADD             R7, SP, #0xD0+var_98
MOV             R0, R0,LSL#1
CMP             R0, R1
MOVCS           R1, R0
MOV             R0, R7
BL              sub_624FA8
CMP             R0, #0
NOP
BNE             loc_25E0E4
B               loc_25E0CC
LDR             R0, [R4,#0x2D0]
VLDR            S16, [R4,#0x2D8]
STRB            R5, [SP,#0xD0+var_9B]
STR             R0, [SP,#0xD0+var_D0]
LDR             R0, [R7]
ADD             R0, R0, #0x68 ; 'h'
STR             R0, [R10]
LDR             R1, [SP,#0xD0+var_D0]
MOV             R0, R10
BL              sub_624FA8
LDR             R1, [SP,#0xD0+var_D0]
MOV             R0, R11
BL              sub_127F6C
STR             R0, [SP,#0xD0+var_B0]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
STR             R0, [SP,#0xD0+var_B4]
LDR             R0, [SP,#0xD0+var_D0]
CMP             R0, #0
MOV             R0, #0
STR             R0, [SP,#0xD0+var_98]
BLS             loc_25E2F4
ADD             R0, SP, #0xD0+var_C8
STR             R0, [SP,#0xD0+var_50]
LDR             R0, [SP,#0xD0+var_B4]
BL              sub_464278
LDR             R0, [SP,#0xD0+var_2C]
VLDR            S18, [R0]
LDR             R0, [SP,#0xD0+var_B4]
VMLA.F32        S18, S0, S16
BL              sub_4642E0
LDR             R0, [SP,#0xD0+var_2C]
MOV             R3, #0
ADD             R4, SP, #0xD0+var_CC
MOV             R2, R3
VLDR            S1, [R0,#8]
VSTR            S18, [SP,#0xD0+var_A8]
VSTR            S17, [SP,#0xD0+var_A4]
VMLA.F32        S1, S0, S16
VSTR            S1, [SP,#0xD0+var_A0]
LDR             R0, [SP,#0xD0+var_98]
CMP             R0, #0
MOVEQ           R0, #1
MOVNE           R0, #0
STRB            R0, [SP,#0xD0+var_9C]
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x83C
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_25DAD0
LDR             R1, [R10,#0x814]
ADD             R2, SP, #0xD0+var_A8
BL              sub_25CFA8
STR             R0, [SP,#0xD0+var_CC]
ADD             R0, R4, #4
ADD             R1, R10, #0x10
STR             R0, [SP,#0xD0+var_C4]
STR             R0, [SP,#0xD0+var_C8]
LDR             R2, [R10,#0xC]
LDM             R1, {R1,R12}
MOV             R8, R10
LDR             R5, =0x2AAAAAAB
SUB             R2, R1, R2
ADD             R0, R10, #0xC
SMULL           R3, R2, R5, R2
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
ADD             R3, R2, #1
CMP             R3, R12
BLS             loc_25DB70
LDR             R0, [R8,#4]
MOV             R1, #1
VLDR            S0, [R8]
CMP             R0, #1
MOVLS           R0, R1
VSTR            S0, [SP,#0xD0+var_80]
MOV             R1, #0
STRD            R0, R1, [SP,#0xD0+var_7C]
STR             R1, [SP,#0xD0+var_74]
STR             R1, [SP,#0xD0+var_70]
STR             R1, [SP,#0xD0+var_6C]
LDR             R0, [R8,#0x14]
MOV             R4, R3
ADD             R6, SP, #0xD0+var_80
MOV             R1, R0,LSL#1
CMP             R1, R4
MOVCC           R1, R4
MOV             R0, R6
BL              sub_624FA8
CMP             R0, #0
NOP
BNE             loc_25DBC0
B               loc_25DBA8
CMP             R1, #0
BEQ             loc_25DB98
LDR             R3, [SP,#0xD0+var_CC]
ADD             R2, SP, #0xD0+var_C8
STR             R3, [R1],#4
STR             R2, [R1]
LDR             R2, [SP,#0xD0+var_C4]
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R1, [SP,#0xD0+var_C4]
LDR             R1, [R0,#4]
ADD             R1, R1, #0xC
STR             R1, [R0,#4]
B               loc_25DFE8
MOV             R1, R4
MOV             R0, R6
BL              sub_624FA8
CMP             R0, #0
NOP
BEQ             loc_25DCA0
ADD             R9, R8, #0xC
LDR             R0, =0x2AAAAAAB
LDM             R9, {R9,R11}
SUB             R1, R11, R9
SMULL           R0, R1, R0, R1
LDR             R0, [SP,#0xD0+var_6C]
MOV             R2, R1,ASR#1
SUB             R1, R2, R1,ASR#31
CMP             R1, R0
ADD             R2, SP, #0xD0+var_74
BHI             loc_25DE54
LDR             R5, [SP,#0xD0+var_70]
LDR             R7, [SP,#0xD0+var_74]
STR             R9, [SP,#0xD0+var_90]
CMP             R9, R11
STR             R2, [SP,#0xD0+var_B8]
BNE             loc_25DD70
CMP             R7, R5
MOVNE           R9, #0
BEQ             loc_25DC90
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_25DC7C
LDR             R6, [R4]
CMP             R6, #0
BEQ             loc_25DC7C
LDR             R0, [R6,#0x7EC]
CMP             R0, #0
BEQ             loc_25DC48
BL              sub_533330
STR             R9, [R6,#0x7EC]
LDR             R0, [R6,#0x7F0]
CMP             R0, #0
BEQ             loc_25DC5C
BL              sub_533330
STR             R9, [R6,#0x7F0]
ADD             R0, R6, #0x3F8
BL              sub_14F3EC
SUB             R0, R0, #0x3F4
NOP
BL              sub_14F3EC
SUB             R0, R0, #4
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_25DC10
LDR             R0, [SP,#0xD0+var_B8]
LDR             R1, [R0]
STR             R1, [R0,#4]
B               loc_25DE54
LDR             R5, [SP,#0xD0+var_70]
LDR             R7, [SP,#0xD0+var_74]
MOV             R8, #0
ADD             R9, R6, #0xC
CMP             R7, R5
STR             R8, [SP,#0xD0+var_6C]
BEQ             loc_25DD3C
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_25DD28
LDR             R6, [R4]
CMP             R6, #0
BEQ             loc_25DD28
LDR             R0, [R6,#0x7EC]
CMP             R0, #0
BEQ             loc_25DCF4
BL              sub_533330
STR             R8, [R6,#0x7EC]
LDR             R0, [R6,#0x7F0]
CMP             R0, #0
BEQ             loc_25DD08
BL              sub_533330
STR             R8, [R6,#0x7F0]
ADD             R0, R6, #0x3F8
BL              sub_14F3EC
SUB             R0, R0, #0x3F4
NOP
BL              sub_14F3EC
SUB             R0, R0, #4
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_25DCBC
STR             R8, [R9]
STR             R8, [R9,#4]
LDR             R0, [SP,#0xD0+var_78]
STR             R8, [SP,#0xD0+var_78]
CMP             R0, #0
BLNE            sub_2FF5D4
MOV             R2, #0
LDRD            R0, R1, [SP,#0xD0+var_74]
BL              sub_628F1C
LDR             R0, [SP,#0xD0+var_78]
CMP             R0, #0
BEQ             loc_25DFE8
B               loc_25DFE0
CMP             R7, R5
MOVNE           R9, #0
BEQ             loc_25DDFC
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_25DDE8
LDR             R6, [R4]
CMP             R6, #0
BEQ             loc_25DDE8
LDR             R0, [R6,#0x7EC]
CMP             R0, #0
BEQ             loc_25DDB4
BL              sub_533330
STR             R9, [R6,#0x7EC]
LDR             R0, [R6,#0x7F0]
CMP             R0, #0
BEQ             loc_25DDC8
BL              sub_533330
STR             R9, [R6,#0x7F0]
ADD             R0, R6, #0x3F8
BL              sub_14F3EC
SUB             R0, R0, #0x3F4
NOP
BL              sub_14F3EC
SUB             R0, R0, #4
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_25DD7C
LDR             R0, [SP,#0xD0+var_B8]
LDR             R9, [SP,#0xD0+var_90]
LDR             R0, [R0]
CMP             R9, R11
BEQ             loc_25DE4C
MOVS            R2, R0
BEQ             loc_25DE3C
LDR             R1, [R9]
STR             R1, [R2]
ADD             R1, R9, #4
STR             R1, [R0,#4]
LDR             R3, [R9,#8]
ADD             R2, R0, #4
STR             R3, [R0,#8]
STR             R2, [R3]
STR             R2, [R9,#8]
ADD             R9, R9, #0xC
CMP             R9, R11
ADD             R0, R0, #0xC
BNE             loc_25DE10
LDR             R1, [SP,#0xD0+var_B8]
STR             R0, [R1,#4]
LDR             R1, [SP,#0xD0+var_6C]
LDRD            R2, R3, [SP,#0xD0+var_74]
LDR             R0, =0x2AAAAAAB
ADD             R12, SP, #0xD0+var_80
SUB             R2, R3, R2
SMULL           R2, R0, R0, R2
MOV             R2, R0,ASR#1
SUB             R0, R2, R0,ASR#31
ADD             R0, R0, #1
CMP             R0, R1
BHI             loc_25DEB4
MOVS            R0, R3
BEQ             loc_25DEA8
LDR             R2, [SP,#0xD0+var_CC]
ADD             R1, SP, #0xD0+var_C8
STR             R2, [R0],#4
STR             R1, [R0]
LDR             R1, [SP,#0xD0+var_C4]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0xD0+var_C4]
LDR             R0, [SP,#0xD0+var_70]
ADD             R0, R0, #0xC
STR             R0, [SP,#0xD0+var_70]
LDM             R8, {R2,R6}
ADD             R9, R12, #0xC
LDR             R5, [SP,#0xD0+var_80]
VLDR            S0, [SP,#0xD0+var_7C]
STR             R2, [SP,#0xD0+var_80]
STR             R6, [SP,#0xD0+var_7C]
STR             R5, [R8]
VSTR            S0, [R8,#4]
LDR             R6, [R8,#8]
LDR             R5, [SP,#0xD0+var_78]
ADD             R2, R8, #0x10
STR             R6, [SP,#0xD0+var_78]
STR             R5, [R8,#8]
LDR             R12, [R8,#0xC]
LDR             R1, [SP,#0xD0+var_74]
ADD             R3, R8, #0x14
STR             R12, [SP,#0xD0+var_74]
STR             R1, [R8,#0xC]
LDR             R0, [R8,#0x10]
VLDR            S0, [SP,#0xD0+var_70]
MOV             R4, #0
STR             R0, [SP,#0xD0+var_70]
VSTR            S0, [R2]
LDR             R0, [SP,#0xD0+var_6C]
LDR             R1, [R3]
STR             R0, [R3]
LDR             R6, [SP,#0xD0+var_70]
LDR             R8, [SP,#0xD0+var_74]
STR             R4, [SP,#0xD0+var_6C]
CMP             R8, R6
BEQ             loc_25DFB0
SUB             R6, R6, #0xC
ADD             R1, R6, #4
LDR             R0, [R6,#8]
MOV             R5, R6
CMP             R0, R1
BNE             loc_25DF9C
LDR             R7, [R5]
CMP             R7, #0
BEQ             loc_25DF9C
LDR             R0, [R7,#0x7EC]
CMP             R0, #0
BEQ             loc_25DF68
BL              sub_533330
STR             R4, [R7,#0x7EC]
LDR             R0, [R7,#0x7F0]
CMP             R0, #0
BEQ             loc_25DF7C
BL              sub_533330
STR             R4, [R7,#0x7F0]
ADD             R0, R7, #0x3F8
BL              sub_14F3EC
SUB             R0, R0, #0x3F4
NOP
BL              sub_14F3EC
SUB             R0, R0, #4
NOP
BL              sub_300FD4
LDRD            R0, R1, [R5,#4]
CMP             R8, R6
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_25DF30
STR             R4, [R9]
STR             R4, [R9,#4]
LDR             R0, [SP,#0xD0+var_78]
STR             R4, [SP,#0xD0+var_78]
CMP             R0, #0
BLNE            sub_2FF5D4
MOV             R2, #0
LDRD            R0, R1, [SP,#0xD0+var_74]
BL              sub_628F1C
LDR             R0, [SP,#0xD0+var_78]
CMP             R0, #0
BEQ             loc_25DFE8
NOP
BL              sub_2FF5D4
LDR             R2, [SP,#0xD0+var_C4]
LDRD            R0, R1, [SP,#0xD0+var_B4]
ADD             R0, R0, R1
UXTH            R0, R0
STR             R0, [SP,#0xD0+var_B4]
LDR             R0, [SP,#0xD0+var_50]
CMP             R2, R0
BNE             loc_25E068
LDR             R0, [SP,#0xD0+var_CC]
CMP             R0, #0
BEQ             loc_25E068
MOV             R4, R0
LDR             R0, [R0,#0x7EC]
CMP             R0, #0
BEQ             loc_25E030
BL              sub_533330
MOV             R0, #0
STR             R0, [R4,#0x7EC]
LDR             R0, [R4,#0x7F0]
CMP             R0, #0
BEQ             loc_25E048
BL              sub_533330
MOV             R0, #0
STR             R0, [R4,#0x7F0]
ADD             R0, R4, #0x3F8
BL              sub_14F3EC
SUB             R0, R0, #0x3F4
NOP
BL              sub_14F3EC
SUB             R0, R0, #4
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0xD0+var_C8]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [SP,#0xD0+var_98]
ADD             R0, R0, #1
MOV             R1, R0
STR             R0, [SP,#0xD0+var_98]
LDR             R0, [SP,#0xD0+var_D0]
CMP             R1, R0
BCC             loc_25DA50
B               loc_25E2F4
CMP             R0, #0
BEQ             loc_25E0BC
LDR             R1, [SP,#0xD0+var_D0]
STR             R1, [R0],#4
ADD             R1, R6, #4
STR             R1, [R0]
LDR             R1, [SP,#0xD0+var_C8]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0xD0+var_C8]
LDR             R0, [R10,#0x10]
ADD             R1, R0, #0xC
STR             R1, [R10,#0x10]
B               loc_25E2BC
MOV             R1, R4
MOV             R0, R7
BL              sub_624FA8
CMP             R0, #0
NOP
BEQ             loc_25E128
LDRD            R4, R5, [R10,#0xC]
ADD             R7, R7, #0xC
SUB             R0, R5, R4
SMULL           R1, R0, R9, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
LDR             R1, [SP,#0xD0+var_84]
CMP             R0, R1
BHI             loc_25E1C0
LDRD            R0, R1, [SP,#0xD0+var_8C]
CMP             R4, R5
MOV             R2, #0
BNE             loc_25E16C
BL              sub_628F1C
LDR             R0, [SP,#0xD0+var_8C]
STR             R0, [SP,#0xD0+var_88]
B               loc_25E1C0
STR             R8, [SP,#0xD0+var_84]
MOV             R2, #0
LDRD            R0, R1, [SP,#0xD0+var_8C]
BL              sub_628F1C
LDR             R0, [SP,#0xD0+var_90]
STR             R8, [SP,#0xD0+var_8C]
STR             R8, [SP,#0xD0+var_88]
CMP             R0, #0
STR             R8, [SP,#0xD0+var_90]
BLNE            sub_2FF5D4
MOV             R2, #0
LDRD            R0, R1, [SP,#0xD0+var_8C]
BL              sub_628F1C
LDR             R0, [SP,#0xD0+var_90]
CMP             R0, #0
BEQ             loc_25E2BC
B               loc_25E2B4
NOP
BL              sub_628F1C
LDR             R0, [SP,#0xD0+var_8C]
CMP             R4, R5
BEQ             loc_25E1BC
CMP             R0, #0
BEQ             loc_25E1AC
LDR             R1, [R4]
ADD             R2, R0, #4
STR             R1, [R0]
ADD             R1, R4, #4
STR             R1, [R0,#4]
LDR             R3, [R4,#8]
STR             R3, [R0,#8]
STR             R2, [R3]
STR             R2, [R4,#8]
ADD             R4, R4, #0xC
CMP             R4, R5
ADD             R0, R0, #0xC
BNE             loc_25E180
STR             R0, [R7,#4]
LDR             R0, [SP,#0xD0+var_88]
LDR             R1, [SP,#0xD0+var_8C]
SUB             R0, R0, R1
SMULL           R1, R0, R9, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
LDR             R1, [SP,#0xD0+var_84]
ADD             R0, R0, #1
CMP             R0, R1
BHI             loc_25E220
LDR             R0, [SP,#0xD0+var_88]
CMP             R0, #0
BEQ             loc_25E214
LDR             R1, [SP,#0xD0+var_D0]
STR             R1, [R0],#4
ADD             R1, R6, #4
STR             R1, [R0]
LDR             R2, [R6,#8]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [R6,#8]
LDR             R0, [SP,#0xD0+var_88]
ADD             R0, R0, #0xC
STR             R0, [SP,#0xD0+var_88]
ADD             R4, SP, #0xD0+var_98
LDM             R10, {R3,R12}
MOV             R0, R10
LDM             R4, {R1,R2}
STM             R4, {R3,R12}
STM             R10, {R1,R2}
LDR             R2, [R10,#8]
LDR             R1, [SP,#0xD0+var_90]
STR             R2, [SP,#0xD0+var_90]
STR             R1, [R10,#8]
LDR             R2, [R10,#0xC]
LDR             R1, [SP,#0xD0+var_8C]
STR             R2, [SP,#0xD0+var_8C]
STR             R1, [R10,#0xC]
LDR             R2, [R10,#0x10]
LDR             R1, [SP,#0xD0+var_88]
STR             R2, [SP,#0xD0+var_88]
STR             R1, [R0,#0x10]
LDR             R1, [SP,#0xD0+var_84]
LDR             R2, [R0,#0x14]
MOV             R2, #0
STR             R1, [R10,#0x14]
STR             R8, [SP,#0xD0+var_84]
LDRD            R0, R1, [SP,#0xD0+var_8C]
BL              sub_628F1C
LDR             R0, [SP,#0xD0+var_90]
STR             R8, [SP,#0xD0+var_8C]
STR             R8, [SP,#0xD0+var_88]
CMP             R0, #0
STR             R8, [SP,#0xD0+var_90]
BLNE            sub_2FF5D4
MOV             R2, #0
LDRD            R0, R1, [SP,#0xD0+var_8C]
BL              sub_628F1C
LDR             R0, [SP,#0xD0+var_90]
CMP             R0, #0
BEQ             loc_25E2BC
NOP
BL              sub_2FF5D4
LDR             R0, [SP,#0xD0+var_C8]
ADD             R1, SP, #0xD0+var_CC
CMP             R0, R1
BNE             loc_25E2E8
LDR             R0, [SP,#0xD0+var_D0]
CMP             R0, #0
BEQ             loc_25E2E8
BL              sub_25D10C
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0xD0+var_CC]
STR             R1, [R0,#4]
STR             R0, [R1]
MOV             R0, #1
STRB            R0, [R10,#0x1A]
ADD             SP, SP, #0x8C
MOV             R0, R10
VPOP            {D8-D9}
ADD             SP, SP, #0x10
POP             {R4-R11,PC}
