PUSH            {R4-R11,LR}
MOV             R7, R0
MOV             R10, #3
ADD             R11, R7, #0x8C0
LDR             R8, =off_6CE970
MOV             R9, #1
VPUSH           {D8-D10}
SUB             SP, SP, #0xB4
LDR             R0, [R0,#0x8C4]
LDR             R5, [R7,#0x8C0]
VLDR            S18, =0.0039062
VLDR            S17, =0.0
CMP             R0, R5
VLDRNE          S19, =1000.0
BEQ             loc_261F9C
LDR             R4, [R5]
LDRB            R0, [R4,#4]
CMP             R0, #0
BEQ             loc_261E40
CMP             R0, #1
BEQ             loc_261EB8
CMP             R0, #2
BNE             loc_261F8C
B               loc_261F5C
ADD             R0, R4, #0x1E4
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_261F8C
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #6
ADD             R0, R4, #8
BL              sub_14C548
LDR             R2, =0x19DEE8
LDR             R0, [R8]
LDR             R6, [R4,#0x3FC]
ADD             R1, R4, #8
ADD             R2, R2, R0; loc_19DEE8
VLDR            S0, [R2]
VLDR            S1, [R6]
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S18
VCMP.F32        S1, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_261EB0
LDR             R12, =0xFFE683CC
LDR             R2, =0x3016F
MOV             R3, #0
SUB             R0, R0, R12
BL              sub_503720
VSTR            S16, [R6]
STRB            R9, [R4,#4]
B               loc_261F8C
ADD             R0, R4, #8
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_261F8C
LDR             R2, =0x19DEE8
LDR             R0, [R8]
LDR             R6, [R4,#0x3FC]
ADD             R1, R4, #8
ADD             R2, R2, R0; loc_19DEE8
VLDR            S0, [R2]
VLDR            S1, [R6,#4]
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S18
VCMP.F32        S1, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_261F14
LDR             R12, =0xFFE683CC
LDR             R2, =0x30170
MOV             R3, #0
SUB             R0, R0, R12
BL              sub_503720
VSTR            S16, [R6,#4]
VMOV.F32        S0, S17
VSTR            S19, [SP,#0xF0+var_E4]
ADD             R2, SP, #0xF0+var_E4
MOV             R1, #0
VSTR            S0, [SP,#0xF0+var_E0]
VSTR            S0, [SP,#0xF0+var_DC]
LDR             R0, [R4]
VLDR            S0, [R0,#0x2A4]
ADD             R0, R4, #0x1E4
BL              sub_5A25D0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #7
ADD             R0, R4, #8
BL              sub_14C548
MOV             R0, #2
STRB            R0, [R4,#4]
B               loc_261F8C
MOV             R2, #0
ADD             R1, SP, #0xF0+var_E4
ADD             R0, R4, #8
BL              sub_5C4F84
LDR             R0, [SP,#0xF0+var_E4]
LDR             R1, =0x43660000
CMP             R0, R1
BGE             loc_261F88
ORR             R1, R1, R1,LSL#13
CMP             R0, R1
BCC             loc_261F8C
STRB            R10, [R4,#4]
LDR             R0, [R7,#0x8C4]
ADD             R5, R5, #0xC
CMP             R0, R5
BNE             loc_261E1C
ADD             R0, R7, #0x8C0
LDM             R0, {R0,R5}
CMP             R0, R5
BEQ             loc_261FC0
LDR             R1, [R0]
LDRB            R1, [R1,#4]
CMP             R1, #3
ADDNE           R0, R0, #0xC
BNE             loc_261FA4
CMP             R0, R5
BEQ             loc_262070
ADD             R4, R0, #0xC
CMP             R4, R5
MOV             R6, R0
BEQ             loc_26206C
LDR             R0, [R4]
LDRB            R1, [R0,#4]
CMP             R1, #3
BEQ             loc_262060
LDR             R1, [R6]
CMP             R1, R0
BEQ             loc_26205C
LDR             R2, [R6,#8]
ADD             R3, R6, #4
CMP             R2, R3
BNE             loc_262150
CMP             R1, #0
BEQ             loc_262020
ADD             R0, R1, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDR             R3, [R4]
ADD             R1, R4, #4
ADD             R0, R6, #4
CMP             R1, R0
STR             R3, [R6]
LDRNE           R2, [R1,#4]
CMPNE           R2, R0
BEQ             loc_26205C
LDM             R0, {R3,R12}
STR             R12, [R3,#4]
STR             R3, [R12]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [R1,#4]
STR             R1, [R0]
ADD             R6, R6, #0xC
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_261FD8
MOV             R0, R6
LDR             R5, [R7,#0x8C4]
CMP             R0, R5
BEQ             loc_2620F0
SUB             R1, R5, R0
LDR             R0, =0x2AAAAAAB
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R6, R5, R0,LSL#2
CMP             R6, R5
BEQ             loc_2620EC
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_2620D8
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2620D8
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_2620A0
STR             R6, [R7,#0x8C4]
ADD             R1, R7, #0x800
ADD             R1, R1, #0xCC
STR             R1, [SP,#0xF0+var_98]
LDR             R0, [R7,#0x8CC]
ADD             R1, R7, #0x8D0
STR             R1, [SP,#0xF0+var_9C]
CMP             R0, #0
BEQ             loc_2621A4
BL              sub_26376C
LDR             R0, [R7,#0x8CC]
LDRB            R1, [R0,#4]
CMP             R1, #7
BEQ             loc_26216C
B               loc_2621A4
DCFS 0.0039062
DCFS 0.0
DCD off_6CE970
DCFS 1000.0
DCD 0x19DEE8
DCD 0x3016F
DCD 0xFFE683CC
DCD 0x30170
DCD 0x43660000
DCD 0x2AAAAAAB
LDR             R1, [R6,#4]
ADD             R0, R6, #4
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R0, [R6,#4]
STR             R0, [R6,#8]
B               loc_262020
LDR             R4, [SP,#0xF0+var_98]
LDR             R2, [SP,#0xF0+var_9C]
MOV             R5, #0
LDR             R1, [R4,#8]
CMP             R1, R2
BNE             loc_2621C8
CMP             R0, #0
BEQ             loc_2621A0
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
STR             R5, [R4]
LDR             R4, [R7,#0x14]
CMP             R4, #0
BEQ             loc_2622BC
LDRB            R0, [R4]
CMP             R0, #1
BEQ             loc_2621E4
CMP             R0, #2
BNE             loc_262288
B               loc_26225C
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_2621A0
LDR             R0, [R4,#4]
MOV             R1, R0
ADD             R0, R0, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_262288
LDR             R0, =0xFFE683CC
LDR             R12, [R8]
LDR             R2, =0x30172
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
LDR             R0, [R4,#8]
LDR             R5, [R4,#4]
LDR             R0, [R0,#4]
MOV             R1, R0
LDR             R0, [R5]
MOV             R2, #0
LDR             R3, [R0,#0x58]
MOV             R0, R5
BLX             R3
LDR             R0, [R4,#4]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0
BL              sub_14C548
MOV             R0, #2
STRB            R0, [R4]
B               loc_262288
LDR             R0, [R4,#4]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_262288
LDR             R0, [R4,#4]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
BL              sub_14C548
STRB            R10, [R4]
LDR             R0, [R7,#0x14]
LDRB            R1, [R0]
CMP             R1, #3
BNE             loc_2622BC
LDR             R1, [R7,#0x1C]
ADD             R2, R7, #0x18
MOV             R5, #0
CMP             R1, R2
ADD             R4, R7, #0x14
BNE             loc_2622F4
CMP             R0, #0
BLNE            sub_300FD4
STR             R5, [R4]
LDRB            R0, [R7,#0x8A8]
CMP             R0, #0xA; switch 10 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_2622C4; jumptable 002622C4 default case, cases 3,8
DCD loc_262310; jump table for switch statement
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_2622B8
LDR             R0, [R7,#4]; jumptable 002622C4 case 0
ADD             R0, R0, #0x98
BL              sub_5CC194
CMP             R0, #0
NOP
BEQ             def_2622C4; jumptable 002622C4 default case, cases 3,8
LDR             R0, [R7,#4]
ADD             R2, SP, #0xF0+var_78
MOV             R5, #0
LDR             R1, =0x300B2
LDR             R4, [R0,#8]
STM             R2, {R5,R10}
ADD             R11, R0, #0x98
ADD             R2, SP, #0xF0+var_70
MOV             R0, #0x63 ; 'c'
STM             R2, {R0,R1,R5}
ADD             R0, SP, #0xF0+var_60
STR             R5, [SP,#0xF0+var_64]
STM             R0, {R5,R10}
LDR             R0, [R7,#4]
ADD             R0, R0, #0x98
BL              sub_5CC164
STR             R0, [SP,#0xF0+var_60]
LDR             R0, [R8]
ADD             R1, SP, #0xF0+var_78
ADD             R0, R0, #0x68 ; 'h'
STR             R0, [SP,#0xF0+var_78]
LDR             R0, [R7,#4]
ADD             R0, R0, #0x12800
ADD             R0, R0, #0x368
BL              sub_5B388C
LDR             R0, [R7,#4]
MOV             R1, #2
ADD             R0, R0, #0x12800
ADD             R0, R0, #0x368
BL              sub_14C450
LDR             R0, [R7,#4]
MOV             R2, #1
MOV             R1, R2
ADD             R0, R0, #0x12800
ADD             R0, R0, #0x368
BL              sub_14B798
LDR             R0, [R8]
VLDR            S1, [R4,#0x11C]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0xC400
VLDR            S0, [R0,#(loc_10C4EC - 0x10C400)]
LDRD            R0, R1, [R4,#0x70]
LDR             R2, [R7,#4]
VMUL.F32        S0, S0, S1
ADD             R2, R2, #0x12800
ADD             R2, R2, #0x368
STRD            R0, R1, [R2,#0x24]
MOV             R1, #0
VSTR            S0, [R2,#0x2C]
LDR             R0, [R7,#4]
ADD             R4, R0, #0x12800
ADD             R4, R4, #0x368
MOV             R0, R4
BL              sub_14C3E8
LDR             R0, [R4,#0x108]
STR             R0, [R4,#0x124]
LDR             R0, [R4,#0x104]
STR             R0, [R4,#0x120]
LDR             R1, [R4,#0x118]
CMP             R1, #0
BEQ             loc_262480
MOV             R2, #0
ADD             R0, R4, #0x128
BL              sub_14E6E0
MOV             R2, #0x8000
MOV             R1, R4
ADD             R0, R4, #0x128
BL              sub_1CF9C4
LDR             R0, [R4,#0x11C]
MOV             R3, #0x100
MOV             R2, #0
AND             R1, R0, #0xFF
ADD             R0, R4, #0x128
BL              sub_14C548
MOV             R2, #0
MOV             R1, #1
ADD             R0, R4, #0x128
BL              sub_14B798
VLDR            S1, =-2.0
VLDR            S0, =1.0
VSTR            S17, [SP,#0xF0+var_4C]
VSTR            S1, [SP,#0xF0+var_48]
ADD             R1, SP, #0xF0+var_4C
VSTR            S0, [SP,#0xF0+var_44]
ADD             R0, R4, #0x128
BL              sub_14E984
LDR             R0, [R4]
MOV             R2, #0
ADD             R1, SP, #0xF0+var_58
LDR             R3, [R0,#0x2C]
MOV             R0, R4
BLX             R3
ADD             R6, R4, #0x400
ADD             R6, R6, #0x11C
LDRD            R0, R1, [R6,#0x54]
ADD             R2, R1, R1,LSL#1
ADD             R1, R2, R1,LSL#3
ADD             R1, R0, R1,LSL#5
CMP             R1, R0
BEQ             loc_2624E0
MOV             R1, R0
ADD             R0, R0, #0x160
STRB            R9, [R1,#0x6F]
LDR             R2, [R6,#0x58]
LDR             R3, [R6,#0x54]
ADD             R1, R2, R2,LSL#1
ADD             R1, R1, R2,LSL#3
ADD             R1, R3, R1,LSL#5
CMP             R1, R0
BNE             loc_2624B8
LDR             R1, [R6,#4]
ADD             R10, SP, #0xF0+var_58
ADD             R0, R4, #0x400
ORR             R1, R1, #0x10
STR             R1, [R6,#4]
LDR             R1, [R4,#0x5B0]
ADD             R0, R0, #0x1A4
AND             R3, R1, #4
ORR             R1, R1, R3,LSL#3
STR             R1, [R4,#0x5B0]
LDM             R10, {R1-R3}
STM             R0, {R1-R3}
MOV             R0, R6
LDR             R1, [R4,#0x520]
BIC             R1, R1, #0x600
ORR             R1, R1, #0x200
STR             R1, [R4,#0x520]
BL              sub_5B7B9C
LDR             R1, [R4,#0x120]
MOV             R0, R6
BL              sub_5B7378
LDR             R0, [R7,#4]
MOV             R3, #0
MOV             R2, R3
ADD             R4, R0, #0x12400
LDR             R0, [R8]
ADD             R4, R4, #0x358
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x21E54
BL              sub_10A358
CMP             R0, #0
STR             R0, [SP,#0xF0+var_E0]
BEQ             loc_2625A4
MOV             R0, R11
BL              sub_5CC120
MOV             R10, R0
MOV             R0, R11
BL              sub_5CC164
MOV             R6, R0
MOV             R0, R11
LDR             R0, [R0,#0x14]
LDR             R2, [R7,#4]
MOV             R3, R10
LDR             R1, [R2,#8]
MOV             R2, R6
STR             R1, [SP,#0xF0+var_F0]
MOV             R1, R0
LDR             R0, [SP,#0xF0+var_E0]
BL              sub_268E1C
LDR             R1, [R4,#8]
MOV             R6, R0
ADD             R0, R4, #4
CMP             R1, R0
BNE             loc_262774
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2625D4
BL              sub_2697F0
NOP
NOP
BL              sub_300FD4
ADD             R0, R7, #0x400
ADD             R0, R0, #0x14
STR             R6, [R4]
MOV             R1, #0
MOV             R6, R0
BL              sub_14C3E8
MOV             R1, #1
MOV             R0, R6
BL              sub_14C450
LDR             R0, [R7,#4]
ADD             R0, R0, #0x98
LDR             R0, [R0]
MOV             R1, R0
MOV             R2, #0
MOV             R0, R6
BL              sub_14E6E0
STRB            R5, [R7,#0x506]
LDR             R0, [R8]
ADD             R10, SP, #0xF0+var_A4
ADD             R4, R7, #0x8B0
ADD             R0, R0, #0x100000
ADD             R0, R0, #0xE000
LDR             R0, [R0,#(loc_10E090 - 0x10E000)]
STR             R0, [R7,#0x8B0]
MOV             R0, #0xFFFFFFFF
STR             R0, [SP,#0xF0+var_84]
STR             R0, [SP,#0xF0+var_80]
ADD             R0, R7, #0x20 ; ' '
STRB            R9, [SP,#0xF0+var_B8+1]
STR             R0, [SP,#0xF0+var_AC]
STR             R6, [SP,#0xF0+var_B4]
STRB            R5, [SP,#0xF0+var_B8]
LDR             R1, [R7,#4]
ADD             R0, R7, #0x800
ADD             R0, R0, #0xAC
LDR             R2, [R1,#8]
LDR             R3, [R2,#0x1F8]
LDR             R1, [R2,#0x1FC]
LDR             R2, [R2,#0x200]
STR             R3, [SP,#0xF0+var_A8]
STM             R10, {R1,R2}
LDR             R1, [R7,#4]
LDR             R1, [R1,#8]
LDR             R2, [R1,#0x208]
LDR             R3, [R1,#0x204]
LDR             R1, [R1,#0x20C]
STR             R0, [SP,#0xF0+var_8C]
STR             R2, [SP,#0xF0+var_98]
STR             R1, [SP,#0xF0+var_94]
STR             R3, [SP,#0xF0+var_9C]
LDR             R0, [R7,#4]
ADD             R0, R0, #0x98
LDR             R0, [R0,#0xC]
LDR             R1, =0x3016E
STR             R0, [SP,#0xF0+var_90]
ADD             R0, SP, #0xF0+var_84
SUB             R2, R1, #2
STM             R0, {R1,R2}
ADD             R1, SP, #0xF0+var_B8
LDR             R0, [R7,#0x14]
LDR             R0, [R0,#4]
STR             R0, [SP,#0xF0+var_B0]
ADD             R0, R7, #0x800
ADD             R0, R0, #8
STR             R4, [SP,#0xF0+var_88]
BL              sub_260FEC
LDR             R4, =off_6CDE08
REV             R0, R5
STRB            R9, [R7,#0x8A8]
STR             R0, [SP,#0xF0+var_D8]
LDR             R0, [R4]
ADD             R1, SP, #0xF0+var_D8
LDR             R0, [R0,#8]
VLDR            S0, [R0,#0xE0]
LDR             R0, [R8]
ADD             R0, R0, #0x19C000
ADD             R0, R0, #0x1F40
BL              sub_4E665C
REV             R0, R5
ADD             R1, SP, #0xF0+var_D8
STR             R0, [SP,#0xF0+var_D8]
LDR             R0, [R4]
LDR             R2, [R8]
LDR             R0, [R0,#8]
VLDR            S0, [R0,#0xE0]
LDR             R0, =0x19DF78
ADD             R0, R0, R2; loc_19DF78
BL              sub_4E665C
LDR             R0, [R8]
LDR             R1, =0x45C
MOV             R2, #0
BL              sub_52F9B4
ADD             SP, SP, #0xB4; jumptable 002622C4 default case, cases 3,8
VPOP            {D8-D10}
POP             {R4-R11,PC}
DCD 0x30172
DCD 0x300B2
DCFS -2.0
DCFS 1.0
DCD 0x21E54
DCD 0x3016E
DCD off_6CDE08
DCD 0x19DF78
DCD 0x45C
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_2625D4
LDR             R0, [R8]; jumptable 002622C4 case 1
ADD             R0, R0, #0x180000
ADD             R0, R0, #0x1DC00
ADD             R1, R0, #0x368
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_2622C4; jumptable 002622C4 default case, cases 3,8
ADD             R0, R0, #0x3A0
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_2622C4; jumptable 002622C4 default case, cases 3,8
LDR             R0, =off_6CDE08
VMOV.F32        S16, S17
MOV             R10, #0
VLDR            S19, =50.0
LDR             R0, [R0]
VLDR            S17, =-20.0
VLDR            S18, =-140.0
VLDR            S20, =90.0
ADD             R0, R0, #0x98
LDR             R0, [R0,#0x1C]
ADD             R1, R7, #0x800
ADD             R1, R1, #0x1E8
ADD             R5, R7, #0x800
STM             R1, {R0,R10}
ADD             R5, R5, #0xDC
ADD             R0, R7, #0x800
VSTR            S16, [R5,#0x114]
VSTR            S19, [R5,#0x118]
VSTR            S16, [R5,#0x11C]
ADD             R0, R0, #0x1FC
MOV             R4, R7
VSTM            R0, {S16-S17}
MOV             R0, #0xC0
VSTR            S16, [R5,#0x128]
VSTR            S18, [R5,#0x12C]
VSTR            S20, [R5,#0x130]
VSTR            S16, [R5,#0x134]
STR             R9, [R7,#0xA14]
STR             R0, [R7,#0x9DC]
MOV             R1, #2
MOV             R0, R5
BL              sub_14C450
LDR             R0, [R8]
MOV             R1, #0
ADD             R0, R0, #0x100000
ADD             R0, R0, #0xC400
LDR             R0, [R0,#(loc_10C4EC - 0x10C400)]
VSTR            S16, [R5,#0x24]
VSTR            S16, [R5,#0x28]
STR             R0, [R5,#0x2C]
MOV             R0, R5
BL              sub_14C3E8
ADD             R4, R4, #0x800
ADD             R6, R5, #0xC00
ADD             R4, R4, #0x218
ADD             R6, R6, #0x118
MOV             R1, #2
MOV             R0, R4
BL              sub_14C450
MOV             R2, #0
MOV             R1, #1
MOV             R0, R4
BL              sub_14B798
MOV             R2, #0x8000
MOV             R1, R5
MOV             R0, R4
BL              sub_1CF9C4
ADD             R4, R4, #0x3F4
CMP             R4, R6
BNE             loc_26287C
LDR             R1, [R5,#0x13C]
ADD             R0, R5, #0x13C
LDR             R2, [R1,#0x20]
ADD             R1, R5, #0x114
BLX             R2
LDR             R1, [R5,#0x10C]
CMP             R1, #0
BEQ             loc_262900
LDR             R2, [R5,#0x13C]
ADD             R0, R5, #0x13C
LDR             R3, [R2,#0x58]
MOV             R2, #0
BLX             R3
MOV             R2, #0
ADD             R0, R5, #0x13C
MOV             R3, #0x100
MOV             R1, R2
BL              sub_14C548
STRB            R10, [R5,#0x22E]
LDR             R1, [R5,#0x100]
ADD             R0, R5, #0x530
AND             R1, R1, #0x40 ; '@'
MOVS            R1, R1,LSR#6
BEQ             loc_262924
LDR             R1, [R5,#0x138]
CMP             R1, #0
MOVEQ           R1, #1
BEQ             loc_262928
MOV             R1, #0
STRB            R1, [R0,#0xF2]
LDR             R0, [R5,#0x530]
ADD             R4, R5, #0x530
ADD             R1, R5, #0x120
LDR             R2, [R0,#0x20]
MOV             R0, R4
BLX             R2
LDR             R1, =0xC00E
LDR             R0, [R8]
BL              sub_52FACC
LDR             R1, [R4]
MOV             R2, #0
LDR             R3, [R1,#0x58]
MOV             R1, R0
MOV             R0, R4
BLX             R3
LDR             R0, [R5,#0x110]
MOV             R3, #0x100
MOV             R2, #0
CMP             R0, #0
MOVEQ           R1, #4
MOVNE           R1, #0xA
MOV             R0, R4
BL              sub_14C548
LDR             R0, [R5,#0x100]
ADD             R4, R5, #0x800
ADD             R4, R4, #0x124
TST             R0, #0x80
BEQ             loc_2629AC
LDR             R0, [R5,#0x138]
CMP             R0, #0
MOVEQ           R0, #1
BEQ             loc_2629B0
MOV             R0, #0
STRB            R0, [R4,#0xF2]
LDR             R0, [R4]
ADD             R1, R5, #0x12C
LDR             R2, [R0,#0x20]
MOV             R0, R4
BLX             R2
LDR             R1, =0xC018
LDR             R0, [R8]
BL              sub_52FACC
LDR             R1, [R4]
MOV             R2, #0
LDR             R3, [R1,#0x58]
MOV             R1, R0
MOV             R0, R4
BLX             R3
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
MOV             R0, R4
BL              sub_14C548
LDR             R0, [R8]
LDR             R1, =0x19DF40
VLDR            S1, =0.1
ADD             R2, R5, #0x104
LDR             R1, [R1,R0]
ADD             R0, R0, #0x19C000
ADD             R0, R0, #0x1F40
STR             R1, [SP,#0xF0+var_E4]
LDRB            R1, [SP,#0xF0+var_E4+3]
STRB            R10, [SP,#0xF0+var_E4+3]
VMOV            S0, R1
ADD             R1, SP, #0xF0+var_E4
VCVT.F32.U32    S0, S0
VMUL.F32        S17, S0, S1
VSTM            R2, {S16-S17}
VMOV.F32        S0, S17
BL              sub_4E665C
LDR             R0, [R8]
LDR             R2, =0x19DF78
VMOV.F32        S0, S17
ADD             R1, SP, #0xF0+var_E4
ADD             R0, R0, R2; loc_19DF78
BL              sub_4E665C
LDR             R0, [R5,#0x100]
LDR             R1, =dword_6E2378
BIC             R0, R0, #0xF
ORR             R0, R0, #1
STR             R0, [R5,#0x100]
MOV             R0, #9
STRH            R9, [R1,#(word_6E23A6 - 0x6E2378)]
B               loc_263370
LDR             R0, [R7,#0x9DC]; jumptable 002622C4 case 9
TST             R0, #0xF
BNE             def_2622C4; jumptable 002622C4 default case, cases 3,8
LDR             R0, [R7,#4]
MOV             R1, #0
ADD             R2, R7, #0x400
MOV             R5, #4
LDR             R4, [R0,#8]
MOV             R0, #0xFFFFFFFF
STR             R0, [SP,#0xF0+var_94]
STR             R0, [SP,#0xF0+var_90]
MOV             R0, #2
STRB            R0, [SP,#0xF0+var_B8]
ADD             R2, R2, #0x14
STRB            R10, [SP,#0xF0+var_B8+1]
STRB            R1, [SP,#0xF0+var_AC]
STRB            R5, [SP,#0xF0+var_B8+2]
STR             R2, [SP,#0xF0+var_B4]
LDR             R3, [R4,#0x210]
LDR             R1, =0x3016D
ADD             R9, SP, #0xF0+var_98
STR             R3, [SP,#0xF0+var_9C]
ADD             R3, R4, #0x214
SUB             R2, R1, R0
LDM             R3, {R3,R6,R12}
ADD             R0, R7, #0x800
ADD             R0, R0, #0xAC
STR             R1, [SP,#0xF0+var_90]
STM             R9, {R0,R2}
ADD             R0, SP, #0xF0+var_A8
ADD             R1, SP, #0xF0+var_B8
STM             R0, {R3,R6,R12}
LDR             R0, [R7,#0x14]
LDR             R0, [R0,#4]
STR             R0, [SP,#0xF0+var_B0]
ADD             R0, R7, #0x860
BL              sub_26152C
ADD             R0, R4, #0x1EC
VLDR            S5, [R4,#0x22C]
ADD             R2, SP, #0xF0+var_EC
VLDM            R0, {S0-S2}
ADD             R0, R4, #0x230
MOV             R1, #0
VLDM            R0, {S3-S4}
VADD.F32        S0, S0, S5
ADD             R0, SP, #0xF0+var_EC
VADD.F32        S1, S1, S3
VADD.F32        S2, S2, S4
VSTM            R0, {S0-S2}
LDR             R0, [R8]
VLDR            S0, [R4,#0x238]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x330
BL              sub_5A2298
STRB            R5, [R7,#0x8A8]
ADD             SP, SP, #0xB4
VPOP            {D8-D10}
POP             {R4-R11,PC}
DCFS 50.0
DCFS -20.0
DCFS -140.0
DCFS 90.0
DCD 0xC00E
DCD 0xC018
DCFS 0.1
DCD 0x19DF40
DCD dword_6E2378
DCD 0x3016D
LDR             R0, [R8]; jumptable 002622C4 case 4
VLDR            S20, =1.0
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R7, #0x860
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S18
BL              sub_2615A0
LDRB            R0, [R7,#0x86C]
CMP             R0, #0
BEQ             def_2622C4; jumptable 002622C4 default case, cases 3,8
LDR             R0, [R7,#4]
LDR             R1, [R0,#8]
LDR             R1, [R1,#0x2AC]
STR             R1, [SP,#0xF0+var_A8]
LDR             R1, =off_6CE970
LDR             R1, [R1]
ADD             R1, R1, #0x68 ; 'h'
STR             R1, [R7,#0x8B4]
LDR             R0, [R0,#8]
LDR             R1, [R0,#0x2AC]
ADD             R0, R7, #0x800
ADD             R0, R0, #0xB4
STR             R0, [SP,#0xF0+var_94]
BL              sub_625180
LDR             R1, [SP,#0xF0+var_A8]
MOV             R0, #0
STR             R0, [SP,#0xF0+var_AC]
CMP             R1, #0
BLS             loc_2632E0
VMOV.F32        S18, S17
ADD             R0, R7, #0x400
ADD             R0, R0, #0x38 ; '8'
STR             R0, [SP,#0xF0+var_90]
ADD             R0, SP, #0xF0+var_B4
STR             R0, [SP,#0xF0+var_E4]
LDR             R0, =off_6CE970
MOV             R3, #0
ADD             R5, SP, #0xF0+var_B8
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x400
BL              sub_10A358
CMP             R0, #0
MOVEQ           R4, #0
BEQ             loc_262D88
MOV             R4, R0
LDR             R0, [R7,#4]
LDR             R6, [SP,#0xF0+var_90]
VLDR            S16, [R0,#8]
ADD             R0, R0, #0x98
LDR             R0, [R0]
MOV             R8, R0
VLDR            S17, [R7,#8]
VSTR            S16, [R4]
ADD             R0, R4, #8
BL              sub_14F198
SUB             R4, R0, #8
VSTR            S17, [R0,#0x3F4]
MOV             R2, #0
MOV             R1, R8
BL              sub_14E6E0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #5
ADD             R0, R4, #8
BL              sub_14C548
MOV             R1, R6
ADD             R0, R4, #8
BL              sub_14E984
MOV             R1, #1
ADD             R0, R4, #8
BL              sub_14C450
MOV             R0, #1
STRB            R0, [R4,#0xF9]
MOV             R1, #0
ADD             R0, R4, #8
BL              sub_14C3E8
LDR             R0, [R4]
LDR             R2, =dword_6D1F40
ADD             R0, R0, #0x290
LDM             R0, {R0,R1}
BL              sub_47EADC
VMOV            S0, R0
LDR             R0, [R4]
LDR             R2, =dword_6D1F40
ADD             R0, R0, #0x29C
VCVT.F32.S32    S19, S0
LDM             R0, {R0,R1}
BL              sub_47EADC
VMOV            S0, R0
LDR             R0, [R4]
LDR             R2, =dword_6D1F40
ADD             R0, R0, #0x280
VCVT.F32.S32    S16, S0
LDM             R0, {R0,R1}
BL              sub_47EADC
VMOV            S0, R0
VLDR            S1, [R6,#8]
VSTR            S18, [SP,#0xF0+var_8C]
VSTR            S20, [SP,#0xF0+var_88]
VSTR            S18, [SP,#0xF0+var_84]
LDR             R0, [R4]
VCVT.F32.S32    S0, S0
ADD             R2, SP, #0xF0+var_8C
MOV             R1, #1
VLDR            S2, [R0,#0x298]
ADD             R0, R4, #0x1E4
VSUB.F32        S17, S0, S1
VLDR            S0, [R6,#4]
VMOV.F32        S1, S19
VNEG.F32        S0, S0
BL              sub_5A2954
LDR             R0, [R4,#0x20C]
ADD             R2, SP, #0xF0+var_80
MOV             R1, #0
VLDR            S0, [R0,#0x38]
VSTR            S16, [SP,#0xF0+var_80]
VSTR            S18, [SP,#0xF0+var_7C]
VSTR            S17, [SP,#0xF0+var_78]
ADD             R0, R4, #0x1E4
BL              sub_5A2B20
MOV             R0, #0
STRB            R0, [R4,#4]
ADD             R0, R5, #4
STR             R0, [SP,#0xF0+var_B0]
STR             R4, [SP,#0xF0+var_B8]
STR             R0, [SP,#0xF0+var_B4]
LDR             R2, [R11]
LDR             R1, [R11,#4]
LDR             R4, =0x2AAAAAAB
LDR             R3, [R11,#8]
SUB             R2, R1, R2
LDR             R9, [SP,#0xF0+var_94]
SMULL           R12, R2, R4, R2
MOV             R0, R11
MOV             R12, R2,ASR#1
SUB             R2, R12, R2,ASR#31
ADD             R2, R2, #1
CMP             R2, R3
BLS             loc_262E3C
ADD             R0, R9, #0xC
LDRD            R0, R1, [R0]
LDR             R2, [R9,#4]
VLDR            S0, [R9]
SUB             R0, R1, R0
CMP             R2, #1
SMULL           R0, R1, R4, R0
MOV             R0, #1
MOVHI           R0, R2
VSTR            S0, [SP,#0xF0+var_D0]
MOV             R3, R1,ASR#1
SUB             R1, R3, R1,ASR#31
ADD             R5, R1, #1
MOV             R1, #0
STRD            R0, R1, [SP,#0xF0+var_CC]
STR             R1, [SP,#0xF0+var_C4]
STR             R1, [SP,#0xF0+var_C0]
STR             R1, [SP,#0xF0+var_BC]
LDR             R0, [R9,#0x14]
MOV             R1, R0,LSL#1
CMP             R1, R5
MOVCC           R1, R5
ADD             R0, SP, #0xF0+var_D0
BL              sub_625180
CMP             R0, #0
NOP
BNE             loc_262E94
B               loc_262E7C
CMP             R1, #0
BEQ             loc_262E64
LDR             R3, [SP,#0xF0+var_B8]
ADD             R2, SP, #0xF0+var_B4
STR             R3, [R1],#4
STR             R2, [R1]
LDR             R2, [SP,#0xF0+var_B0]
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R1, [SP,#0xF0+var_B0]
LDR             R1, [R0,#4]
ADD             R1, R1, #0xC
STR             R1, [R11,#4]
B               loc_263288
DCFS 1.0
DCD dword_6D1F40
MOV             R1, R5
ADD             R0, SP, #0xF0+var_D0
BL              sub_625180
CMP             R0, #0
NOP
BEQ             loc_262F38
ADD             R8, R9, #0xC
LDR             R0, =0x2AAAAAAB
LDM             R8, {R8,R10}
SUB             R1, R10, R8
SMULL           R0, R1, R0, R1
LDR             R0, [SP,#0xF0+var_BC]
MOV             R2, R1,ASR#1
SUB             R1, R2, R1,ASR#31
CMP             R1, R0
ADD             R2, SP, #0xF0+var_C4
BHI             loc_2630CC
STR             R2, [SP,#0xF0+var_D4]
LDR             R5, [SP,#0xF0+var_C0]
LDR             R6, [SP,#0xF0+var_C4]
CMP             R8, R10
BNE             loc_263024
CMP             R6, R5
BEQ             loc_262F28
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_262F14
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_262F14
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_262EDC
LDR             R0, [SP,#0xF0+var_D4]
LDR             R1, [R0]
STR             R1, [R0,#4]
B               loc_2630CC
LDR             R5, [SP,#0xF0+var_C0]
LDR             R6, [SP,#0xF0+var_C4]
MOV             R9, #0
ADD             R8, SP, #0xF0+var_C4
CMP             R6, R5
STR             R9, [SP,#0xF0+var_BC]
BEQ             loc_262FA0
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_262F8C
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_262F8C
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_262F54
STR             R9, [R8]
STR             R9, [R8,#4]
LDR             R0, [SP,#0xF0+var_C8]
STR             R9, [SP,#0xF0+var_C8]
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R5, [SP,#0xF0+var_C0]
LDR             R6, [SP,#0xF0+var_C4]
CMP             R6, R5
BEQ             loc_263014
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_263000
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_263000
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_262FC8
LDR             R0, [SP,#0xF0+var_C8]
CMP             R0, #0
BEQ             loc_263288
B               loc_263280
CMP             R6, R5
BEQ             loc_263078
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_263064
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_263064
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_26302C
LDR             R0, [SP,#0xF0+var_D4]
CMP             R8, R10
LDR             R0, [R0]
BEQ             loc_2630C4
MOVS            R2, R0
BEQ             loc_2630B4
LDR             R1, [R8]
STR             R1, [R2]
ADD             R1, R8, #4
STR             R1, [R0,#4]
LDR             R3, [R8,#8]
ADD             R2, R0, #4
STR             R3, [R0,#8]
STR             R2, [R3]
STR             R2, [R8,#8]
ADD             R8, R8, #0xC
CMP             R8, R10
ADD             R0, R0, #0xC
BNE             loc_263088
LDR             R1, [SP,#0xF0+var_D4]
STR             R0, [R1,#4]
LDR             R2, [SP,#0xF0+var_C0]
LDR             R3, [SP,#0xF0+var_C4]
LDR             R1, =0x2AAAAAAB
LDR             R0, [SP,#0xF0+var_BC]
SUB             R2, R2, R3
SMULL           R2, R1, R1, R2
MOV             R2, R1,ASR#1
SUB             R1, R2, R1,ASR#31
ADD             R1, R1, #1
CMP             R1, R0
BHI             loc_263130
LDR             R0, [SP,#0xF0+var_C0]
CMP             R0, #0
BEQ             loc_263124
LDR             R2, [SP,#0xF0+var_B8]
ADD             R1, SP, #0xF0+var_B4
STR             R2, [R0],#4
STR             R1, [R0]
LDR             R1, [SP,#0xF0+var_B0]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0xF0+var_B0]
LDR             R0, [SP,#0xF0+var_C0]
ADD             R0, R0, #0xC
STR             R0, [SP,#0xF0+var_C0]
LDM             R9, {R3,R6}
ADD             R2, R9, #8
VLDR            S0, [SP,#0xF0+var_D0]
LDR             R5, [SP,#0xF0+var_CC]
STR             R3, [SP,#0xF0+var_D0]
STR             R6, [SP,#0xF0+var_CC]
VSTR            S0, [R9]
STR             R5, [R9,#4]
LDR             R5, [R9,#8]
VLDR            S0, [SP,#0xF0+var_C8]
ADD             R1, R9, #0xC
STR             R5, [SP,#0xF0+var_C8]
VSTR            S0, [R2]
LDR             R2, [R1]
LDR             R0, [SP,#0xF0+var_C4]
ADD             R3, R9, #0x10
STR             R2, [SP,#0xF0+var_C4]
STR             R0, [R1]
LDR             R1, [R3]
LDR             R0, [SP,#0xF0+var_C0]
ADD             R12, R9, #0x14
STR             R1, [SP,#0xF0+var_C0]
STR             R0, [R3]
LDR             R0, [SP,#0xF0+var_BC]
LDR             R1, [R12]
MOV             R4, #0
STR             R0, [R12]
LDR             R6, [SP,#0xF0+var_C0]
LDR             R8, [SP,#0xF0+var_C4]
ADD             R9, SP, #0xF0+var_C4
STR             R4, [SP,#0xF0+var_BC]
CMP             R8, R6
BEQ             loc_263200
SUB             R6, R6, #0xC
ADD             R1, R6, #4
LDR             R0, [R6,#8]
MOV             R5, R6
CMP             R0, R1
BNE             loc_2631EC
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_2631EC
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R5,#4]
CMP             R8, R6
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_2631B4
STR             R4, [R9]
STR             R4, [R9,#4]
LDR             R0, [SP,#0xF0+var_C8]
STR             R4, [SP,#0xF0+var_C8]
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R5, [SP,#0xF0+var_C0]
LDR             R6, [SP,#0xF0+var_C4]
CMP             R6, R5
BEQ             loc_263274
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_263260
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_263260
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_263228
LDR             R0, [SP,#0xF0+var_C8]
CMP             R0, #0
BEQ             loc_263288
NOP
BL              sub_2FF5D4
LDR             R0, [SP,#0xF0+var_B0]
LDR             R1, [SP,#0xF0+var_E4]
CMP             R0, R1
BNE             loc_2632B8
LDR             R0, [SP,#0xF0+var_B8]
CMP             R0, #0
BEQ             loc_2632B8
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0xF0+var_B4]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [SP,#0xF0+var_AC]
ADD             R0, R0, #1
MOV             R1, R0
STR             R0, [SP,#0xF0+var_AC]
LDR             R0, [SP,#0xF0+var_A8]
CMP             R1, R0
BCC             loc_262C24
LDR             R0, =off_6CE970
MOV             R3, #0
LDR             R4, [SP,#0xF0+var_98]
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x3FC
BL              sub_10A358
MOVS            R5, R0
NOP
BEQ             loc_263338
LDR             R0, [R7,#4]
ADD             R0, R0, #0x98
LDR             R0, [R0]
MOV             R3, R0
LDR             R0, [R7,#4]
ADD             R1, R7, #0x400
ADD             R1, R1, #0x38 ; '8'
LDR             R2, [R0,#8]
MOV             R0, R5
BL              sub_263904
MOV             R5, R0
LDR             R1, [R4,#8]
LDR             R0, [SP,#0xF0+var_9C]
CMP             R1, R0
BNE             loc_263380
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_263368
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
MOV             R0, #5
STR             R5, [R4]
STRB            R0, [R7,#0x8A8]
ADD             SP, SP, #0xB4
VPOP            {D8-D10}
POP             {R4-R11,PC}
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_263368
LDR             R1, [R7,#0x8CC]; jumptable 002622C4 case 5
LDRB            R0, [R1,#4]
CMP             R0, #3
BNE             loc_263470
LDR             R0, [R7,#4]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R0, [R0]
CMP             R0, #0
BNE             loc_263470
LDR             R0, [R1]
VLDR            S2, [R1,#0x2C]
VLDR            S1, [R1,#0x30]
ADD             R0, R0, #0x1A4
VLDR            S0, [R1,#0x34]
MOV             R3, #0
VLDM            R0, {S3-S5}
MOV             R2, R3
VADD.F32        S2, S2, S3
VADD.F32        S1, S1, S4
VADD.F32        S0, S0, S5
VSTR            S2, [SP,#0xF0+var_E0]
VSTR            S1, [SP,#0xF0+var_DC]
VSTR            S0, [SP,#0xF0+var_D8]
LDR             R0, [R7,#4]
ADD             R4, R0, #0x12400
LDR             R0, [R8]
ADD             R4, R4, #0x368
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0xE74
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_263440
LDR             R1, [R7,#4]
ADD             R1, R1, #0x12400
ADD             R1, R1, #0x364
LDR             R2, [R1]
ADD             R1, SP, #0xF0+var_E0
BL              sub_25F798
MOV             R5, R0
LDR             R1, [R4,#8]
ADD             R0, R4, #4
CMP             R1, R0
BNE             loc_2635D0
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_26346C
BL              sub_25FA40
NOP
NOP
BL              sub_300FD4
STR             R5, [R4]
LDR             R4, [R7,#0x8CC]
LDRB            R0, [R4,#4]
CMP             R0, #3
BNE             def_2622C4; jumptable 002622C4 default case, cases 3,8
ADD             R0, R4, #0x3A4
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_2622C4; jumptable 002622C4 default case, cases 3,8
LDR             R12, [R8]
LDR             R0, =0xFFE683CC
LDR             R2, =0x30171
MOV             R3, #0
ADD             R1, R4, #8
SUB             R0, R12, R0
BL              sub_503720
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0xD
ADD             R0, R4, #8
BL              sub_14C548
MOV             R0, #4
STRB            R0, [R4,#4]
LDR             R0, [R7,#4]
VLDR            S16, =1.0
ADD             R2, SP, #0xF0+var_DC
LDR             R4, [R0,#8]
LDR             R0, [R7,#0x8CC]
VLDR            S8, [R4,#0x2B8]
LDR             R1, [R0]
VLDR            S2, [R0,#0x2C]
ADD             R0, R0, #0x30 ; '0'
ADD             R1, R1, #0x1A4
VLDM            R0, {S0-S1}
LDR             R0, [R7,#4]
VLDM            R1, {S3-S5}
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
MOV             R1, #1
LDR             R0, [R0]
VADD.F32        S2, S2, S3
VADD.F32        S0, S0, S4
ADD             R5, R0, #4
LDR             R0, [R7,#0x14]
VADD.F32        S1, S1, S5
LDR             R0, [R0,#4]
VLDR            S4, [R0,#0x24]
VLDR            S3, [R0,#0x28]
VLDR            S5, [R0,#0x2C]
ADD             R0, R4, #0x2BC
VADD.F32        S4, S4, S8
VLDM            R0, {S6-S7}
ADD             R0, SP, #0xF0+var_D8
VADD.F32        S3, S3, S6
VADD.F32        S5, S5, S7
VLDR            S6, [R4,#0x12C]
VSUB.F32        S2, S4, S2
VSUB.F32        S3, S3, S6
VSUB.F32        S1, S5, S1
VSTR            S2, [SP,#0xF0+var_B8]
VSTR            S1, [SP,#0xF0+var_B0]
VSTR            S17, [SP,#0xF0+var_B4]
VSUB.F32        S0, S3, S0
VSTR            S17, [SP,#0xF0+var_DC]
VSTM            R0, {S16-S17}
ADD             R0, R5, #0x1DC
VLDR            S2, [R4,#0x2B0]
VLDR            S1, [R4,#0x2B4]
BL              sub_5A28C4
VLDR            S0, [R4,#0x2B4]
ADD             R2, SP, #0xF0+var_B8
MOV             R1, #0
ADD             R0, R5, #0x1DC
BL              sub_5A2B20
VLDR            S0, [R4,#0x2B4]
LDR             R0, [R7,#0x14]
VSUB.F32        S0, S0, S16
STRB            R9, [R0]
LDR             R0, [R0,#4]
ADD             R0, R0, #0x39C
VSTR            S17, [R0]
VSTR            S0, [R0,#4]
MOV             R0, #6
STRB            R9, [R5,#0xF3]
STRB            R0, [R7,#0x8A8]
ADD             SP, SP, #0xB4
VPOP            {D8-D10}
POP             {R4-R11,PC}
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_26346C
LDR             R0, [R7,#0x14]; jumptable 002622C4 case 6
CMP             R0, #0
BNE             def_2622C4; jumptable 002622C4 default case, cases 3,8
LDR             R0, [R7,#0x8D8]
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0x2C]
MOV             R1, SP
BLX             R3
LDR             R0, [R7,#4]
VLDR            S1, [SP,#0xF0+var_F0]
VLDR            S0, [SP,#0xF0+var_EC]
VLDR            S2, [SP,#0xF0+var_E8]
LDR             R0, [R0,#8]
MOV             R1, #0
ADD             R0, R0, #0x400
ADD             R0, R0, #0x5C ; '\'
VLDM            R0, {S3-S5}
ADD             R0, R7, #0x20 ; ' '
VADD.F32        S1, S1, S3
VADD.F32        S0, S0, S4
VADD.F32        S2, S2, S5
VSTR            S1, [SP,#0xF0+var_E4]
VSTR            S0, [SP,#0xF0+var_E0]
VSTR            S2, [SP,#0xF0+var_DC]
BL              sub_14C3E8
MOV             R1, #2
ADD             R0, R7, #0x20 ; ' '
BL              sub_14C450
LDR             R0, [R7,#4]
ADD             R0, R0, #0x98
BL              sub_5CC138
MOV             R1, R0
MOV             R2, #0
ADD             R0, R7, #0x20 ; ' '
BL              sub_14E6E0
ADD             R1, SP, #0xF0+var_E4
ADD             R0, R7, #0x20 ; ' '
BL              sub_14E984
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #4
ADD             R0, R7, #0x20 ; ' '
BL              sub_14C548
LDR             R0, [R7,#4]
MOV             R1, #0
MOV             R2, #7
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R0, [R0]
STRB            R1, [R0,#0xF7]
STRB            R2, [R7,#0x8A8]
ADD             SP, SP, #0xB4
VPOP            {D8-D10}
POP             {R4-R11,PC}
ADD             R0, R7, #0x8C0; jumptable 002622C4 case 7
LDM             R0, {R0,R1}
CMP             R0, R1
LDREQ           R0, [R7,#0x8CC]
CMPEQ           R0, #0
BNE             def_2622C4; jumptable 002622C4 default case, cases 3,8
LDR             R0, [R8]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
TST             R0, #1
BEQ             def_2622C4; jumptable 002622C4 default case, cases 3,8
MOV             R0, #0xA
STRB            R0, [R7,#0x8A8]
LDR             R0, [R7,#4]
BL              sub_264034
ADD             SP, SP, #0xB4
VPOP            {D8-D10}
POP             {R4-R11,PC}
LDR             R0, [R8]; jumptable 002622C4 case 2
ADD             R0, R0, #0x180000
ADD             R0, R0, #0x1DC00
ADD             R1, R0, #0x368
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_2622C4; jumptable 002622C4 default case, cases 3,8
ADD             R0, R0, #0x3A0
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
LDRGE           R0, [R7,#4]
BLGE            sub_263E40
ADD             SP, SP, #0xB4
VPOP            {D8-D10}
POP             {R4-R11,PC}
