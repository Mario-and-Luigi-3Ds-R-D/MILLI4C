PUSH            {R4-R8,LR}
MOV             R4, R0
LDR             R8, =off_6CDF98
VPUSH           {D8-D9}
SUB             SP, SP, #0x68
LDR             R0, [R8]
BL              sub_27B1E4
LDRB            R0, [R4,#8]
LDR             R2, =sub_10D4F0
LDR             R6, =off_6CE970
VLDR            S16, =0.0
CMP             R0, #5; switch 5 cases
MOV             R7, #0
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_27A034; jumptable 0027A034 default case
DCD loc_27A394; jump table for switch statement
LDR             R0, [R4,#4]; jumptable 0027A034 case 2
ADD             R2, SP, #0x90+var_44
ADD             R1, SP, #0x90+var_34
LDR             R3, [R0,#0xC4]!
ADD             R0, R0, #4
STR             R0, [SP,#0x90+var_44]
STR             R3, [SP,#0x90+var_48]
LDR             R3, [R0,#4]
STR             R3, [SP,#0x90+var_40]
STR             R2, [R3]
STR             R2, [R0,#4]
LDR             R0, [SP,#0x90+var_48]
LDR             R2, [R0,#0x1C]!
ADD             R0, R0, #4
STR             R0, [SP,#0x90+var_34]
STR             R2, [SP,#0x90+var_38]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x90+var_30]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x90+var_38]
LDR             R1, [SP,#0x90+var_30]
LDR             R0, [R0,#0x6C8]
CMP             R0, #0
MOVNE           R5, #0
MOVEQ           R5, #1
ADD             R0, SP, #0x90+var_34
CMP             R1, R0
BNE             loc_27A0E0
LDR             R0, [SP,#0x90+var_38]
CMP             R0, #0
BEQ             loc_27A0E0
BL              sub_273C74
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x90+var_34]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R1, [SP,#0x90+var_40]
ADD             R0, SP, #0x90+var_44
CMP             R1, R0
BNE             loc_27A118
LDR             R0, [SP,#0x90+var_48]
CMP             R0, #0
BEQ             loc_27A118
BL              sub_26CCDC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x90+var_44]
CMP             R5, #0
STR             R1, [R0,#4]
STR             R0, [R1]
BEQ             def_27A034; jumptable 0027A034 default case
LDR             R0, [R8]
MOV             R2, #0
LDR             R1, [R0,#0x168]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x12800
ADD             R0, R0, #0x194
BL              sub_14E6E0
LDR             R0, [R4,#4]
ADD             R1, R0, #0x12800
ADD             R1, R1, #0x1B8
LDR             R0, [R0,#0xC4]
VLDM            R1, {S17-S19}
ADD             R1, SP, #0x90+var_54
BL              sub_5CC270
MOV             R0, #0xFFFFFFFF
STRB            R7, [SP,#0x90+var_70]
STR             R0, [SP,#0x90+var_68]
STR             R0, [SP,#0x90+var_64]
STRB            R7, [SP,#0x90+var_70+1]
VLDR            S0, [SP,#0x90+var_50]
VSUB.F32        S0, S0, S18
VSTR            S0, [SP,#0x90+var_88]
LDR             R0, [R8]
LDR             R1, [R0,#0x124]
LDR             R1, [R1,#0x5C8]
STR             R1, [SP,#0x90+var_80]
LDR             R0, [R0,#0x124]
ADD             R0, R0, #0x400
VLDR            S1, [R0,#0x1CC]
LDR             R0, =0x300CD
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x90+var_84]
VLDR            S0, [SP,#0x90+var_54]
VLDR            S1, [SP,#0x90+var_4C]
VSUB.F32        S0, S0, S17
VSUB.F32        S1, S1, S19
VSTR            S0, [SP,#0x90+var_7C]
VSTR            S16, [SP,#0x90+var_78]
VSTR            S1, [SP,#0x90+var_74]
LDR             R1, [R4,#4]
STR             R0, [SP,#0x90+var_68]
ADD             R0, R4, #0x14
ADD             R1, R1, #0x12800
ADD             R1, R1, #0x194
STR             R1, [SP,#0x90+var_6C]
ADD             R1, SP, #0x90+var_88
BL              sub_2772C4
MOV             R0, #1
STRB            R0, [R4,#0x22]
STRB            R0, [R4,#0x21]
STRB            R7, [R4,#0x20]
LDR             R0, [R4,#4]
LDR             R3, =0x2AAAAAAB
LDR             R1, [R8]
ADD             R5, SP, #0x90+var_5C
LDR             R0, [R0,#0xC4]
LDR             R2, [R1,#0x124]
LDR             R0, [R0,#0x1C]
ADD             R0, R0, #0x580
LDM             R0, {R0,R12}
SUB             R0, R12, R0
SMULL           R3, R0, R3, R0
MOV             R3, R0,ASR#1
SUB             R0, R3, R0,ASR#31
UXTH            R0, R0
SUB             R0, R0, #2
ADD             R0, R0, R0,LSL#1
ADD             R2, R2, R0,LSL#2
LDR             R3, [R2,#0x2E8]
LDR             R0, [R2,#0x2EC]
LDR             R2, [R2,#0x2F0]
STR             R3, [SP,#0x90+var_60]
VMOV            S0, R3
STM             R5, {R0,R2}
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#0x1C]
ADD             R0, R0, #0x400
ADD             R0, R0, #0x198
VLDR            S1, [R0]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x90+var_60]
LDR             R0, [R4,#4]
VMOV            S0, R2
ADD             R2, SP, #0x90+var_60
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#0x1C]
ADD             R0, R0, #0x5A0
VLDR            S1, [R0]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x90+var_58]
LDR             R0, [R1,#0x124]
MOV             R1, #0
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0x1C8]
LDR             R0, [R6]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x330
BL              sub_5A2074
MOV             R0, #3
STRB            R0, [R4,#8]
ADD             SP, SP, #0x68 ; 'h'; jumptable 0027A034 default case
VPOP            {D8-D9}
POP             {R4-R8,PC}
LDR             R0, [R6]; jumptable 0027A034 case 3
VLDR            S1, =0.0039062
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R4, #0x14
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_277150
LDRB            R0, [R4,#0x58]
CMP             R0, #0
BEQ             def_27A034; jumptable 0027A034 default case
LDR             R0, [R4,#4]
LDR             R12, [R6]
LDR             R2, =0x300CE
ADD             R1, R0, #0x12800
LDR             R0, =0xFFE683CC
ADD             R1, R1, #0x194
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xD0]
BL              sub_27F1D0
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xC0]
LDR             R0, [R0,#-0xC]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xC4]
BL              sub_26BF08
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x10C]
BL              sub_28114C
STRB            R7, [R4,#8]
ADD             SP, SP, #0x68 ; 'h'
VPOP            {D8-D9}
POP             {R4-R8,PC}
DCD off_6CDF98
DCFS 0.0
DCD sub_10D4F0
DCD off_6CE970
DCD 0x300CD
DCD 0x2AAAAAAB
DCFS 0.0039062
DCD 0x300CE
DCD 0xFFE683CC
LDR             R0, [R4,#4]; jumptable 0027A034 case 0
LDR             R1, [R0,#0xD0]
CMP             R1, #0
BNE             loc_27A3F4
LDR             R1, [R0,#0xC4]
CMP             R1, #0
BNE             loc_27A3F4
LDR             R1, [R0,#0xC0]
LDR             R3, [R0,#0xBC]
CMP             R3, R1
BNE             loc_27A3F4
MOV             R0, #4
STRB            R0, [R4,#8]
LDR             R0, [R8]
LDR             R3, [R6]
LDR             R1, [R0,#0x124]
LDR             R0, [R3,R2]
LDR             R1, [R1,#0x65C]
ADD             R0, R0, #0x39C
VSTR            S16, [R0]
STR             R1, [R0,#4]
ADD             SP, SP, #0x68 ; 'h'
VPOP            {D8-D9}
POP             {R4-R8,PC}
LDR             R1, =0x1298C
LDRB            R1, [R1,R0]
CMP             R1, #0
BEQ             loc_27A414
ADD             SP, SP, #0x68 ; 'h'
VPOP            {D8-D9}
POP             {R4-R8,LR}
B               sub_27918C
LDR             R1, [R0,#0xC4]
MOV             R2, #0
CMP             R1, #0
BEQ             loc_27A460
ADD             R0, R0, #0xC8
STR             R0, [SP,#0x90+var_8C]
STR             R1, [SP,#0x90+var_90]
LDR             R1, [R0,#4]
STR             R1, [SP,#0x90+var_88]
LDR             R2, [SP,#0x90+var_88]
ADD             R1, SP, #0x90+var_8C
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x90+var_90]
MOV             R2, #1
LDRB            R0, [R0,#0x18]
CMP             R0, #2
MOVEQ           R5, #1
BEQ             loc_27A464
MOV             R5, #0
CMP             R2, #0
BEQ             loc_27A4A4
LDR             R1, [SP,#0x90+var_88]
ADD             R0, SP, #0x90+var_8C
CMP             R1, R0
BNE             loc_27A498
LDR             R0, [SP,#0x90+var_90]
CMP             R0, #0
BEQ             loc_27A498
BL              sub_26CCDC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x90+var_8C]
STR             R1, [R0,#4]
STR             R0, [R1]
CMP             R5, #0
LDRNE           R0, [R4,#4]
BLNE            sub_27918C
ADD             SP, SP, #0x68 ; 'h'
VPOP            {D8-D9}
POP             {R4-R8,PC}
LDR             R0, [R6]; jumptable 0027A034 case 4
LDR             R0, [R0,R2]
ADD             R0, R0, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_27A034; jumptable 0027A034 default case
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x100]
BL              sub_5CD76C
CMP             R0, #0
NOP
BEQ             loc_27A504
LDR             R0, [R4,#4]
ADD             SP, SP, #0x68 ; 'h'
VPOP            {D8-D9}
POP             {R4-R8,LR}
B               sub_27918C
ADD             SP, SP, #0x68 ; 'h'
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4-R8,LR}
B               sub_2794F4
LDR             R0, [R4,#4]; jumptable 0027A034 case 1
ADD             R2, SP, #0x90+var_7C
ADD             R1, SP, #0x90+var_70
LDR             R3, [R0,#0xC4]!
ADD             R0, R0, #4
STR             R0, [SP,#0x90+var_7C]
STR             R3, [SP,#0x90+var_80]
LDR             R3, [R0,#4]
STR             R3, [SP,#0x90+var_78]
STR             R2, [R3]
STR             R2, [R0,#4]
LDR             R0, [SP,#0x90+var_80]
LDR             R2, [R0,#0x1C]!
ADD             R0, R0, #4
STR             R0, [SP,#0x90+var_70]
STR             R2, [SP,#0x90+var_74]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x90+var_6C]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R1, [SP,#0x90+var_78]
ADD             R0, SP, #0x90+var_7C
CMP             R1, R0
BNE             loc_27A594
LDR             R0, [SP,#0x90+var_80]
CMP             R0, #0
BEQ             loc_27A594
BL              sub_26CCDC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x90+var_7C]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#4]
ADD             R1, SP, #0x90+var_8C
LDR             R2, [R0,#0x10C]!
ADD             R0, R0, #4
STR             R0, [SP,#0x90+var_8C]
STR             R2, [SP,#0x90+var_90]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x90+var_88]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x90+var_74]
LDR             R0, [R0,#0x6C8]
CMP             R0, #0
BNE             loc_27A744
LDR             R0, [SP,#0x90+var_90]
LDR             R0, [R0,#4]
CMP             R0, #0
BNE             loc_27A744
LDR             R0, [R4,#4]
MOV             R6, #0
ADD             R5, R0, #0x118
ADD             R1, R0, #0x11C
LDR             R0, [R0,#0x120]
CMP             R0, R1
BNE             loc_27A7AC
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_27A640
LDR             R2, =off_6C075C
MOV             R1, R0
STR             R2, [R0,#0x410]!
LDR             R2, [R0,#4]
CMP             R2, #0
STRNE           R7, [R2,#0x184]
STRNE           R7, [R0,#4]
ADD             R0, R1, #4
BL              sub_14F3EC
SUB             R0, R0, #4
NOP
BL              sub_300FD4
STR             R6, [R5]
LDR             R0, [R4,#4]
LDR             R3, =0x51EB851F
LDR             R1, [R0,#0x100]
LDR             R2, [R0,#0x124]
ADD             R0, R0, #0x12800
ADD             R1, R1, #0x21C00
ADD             R1, R1, #0x248
VLDR            S0, [R2,#0xCC]
LDR             R1, [R1]
VLDR            S2, [R2,#0xD0]
UMULL           R3, R1, R3, R1
MOV             R1, R1,LSR#5
VMOV            S1, R1
VCVT.F32.U32    S1, S1
VMLA.F32        S0, S2, S1
VLDR            S1, [R2,#0xD4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [R0,#0x188]
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xC0]
LDR             R0, [R0,#-0xC]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xC4]
BL              sub_26BF08
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x10C]
BL              sub_28114C
STRB            R7, [R4,#8]
LDR             R0, [R4,#4]
ADD             R1, SP, #0x90+var_64
LDR             R0, [R0,#0xC4]
LDR             R2, [R0,#0x1C]!
ADD             R0, R0, #4
STR             R0, [SP,#0x90+var_64]
STR             R2, [SP,#0x90+var_68]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x90+var_60]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x90+var_68]
ADD             R0, R0, #0x400
ADD             R0, R0, #0x198
VLDR            S0, [R0]
LDR             R0, [R4,#4]
BL              sub_27A89C
LDR             R1, [SP,#0x90+var_60]
ADD             R0, SP, #0x90+var_64
CMP             R1, R0
BNE             loc_27A738
LDR             R0, [SP,#0x90+var_68]
CMP             R0, #0
BEQ             loc_27A738
BL              sub_273C74
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x90+var_64]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R1, [SP,#0x90+var_88]
ADD             R0, SP, #0x90+var_8C
CMP             R1, R0
BNE             loc_27A804
LDR             R0, [SP,#0x90+var_90]
CMP             R0, #0
BEQ             loc_27A804
MOV             R5, R0
ADD             R4, R0, #4
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             loc_27A780
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R0, [R4,#8]
ADD             R2, R4, #4
CMP             R0, R2
BNE             loc_27A7C8
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_27A7E8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
B               loc_27A7E8
LDR             R2, [R5,#4]
ADD             R1, R5, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R5,#4]
STR             R1, [R5,#8]
B               loc_27A640
ADD             R1, R4, #4
CMP             R0, R1
BEQ             loc_27A7E8
LDR             R2, [R1]
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R1]
STR             R1, [R1,#4]
STR             R7, [R4]
LDR             R1, [R4,#4]!
LDR             R0, [R4,#4]
STR             R0, [R1,#4]
STR             R1, [R0]
MOV             R0, R5
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x90+var_8C]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [SP,#0x90+var_6C]
ADD             R1, SP, #0x90+var_70
CMP             R0, R1
BNE             loc_27A83C
LDR             R0, [SP,#0x90+var_74]
CMP             R0, #0
BEQ             loc_27A83C
BL              sub_273C74
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x90+var_70]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x68 ; 'h'
VPOP            {D8-D9}
POP             {R4-R8,PC}
