PUSH            {R0-R2,R4-R11,LR}
MOV             R4, R0
ADD             R0, R0, #0x2600
ADD             R0, R0, #0x86
VPUSH           {D8-D14}
SUB             SP, SP, #0xE8
LDRB            R1, [R0]
VLDR            S20, =0.0
CMP             R1, #2
MOVEQ           R1, #0x19
MOVNE           R1, #0x14
VMOV            S0, R1
LDRB            R1, [R4,#0xDE]
VCVT.F32.U32    S16, S0
VMOVEQ.F32      S0, S20
VLDRNE          S0, =0.15
TST             R1, #1
BEQ             loc_16EB54
LDR             R1, =0x26C1
LDRB            R1, [R1,R4]
CMP             R1, #0
BNE             loc_16EB54
VLDR            S2, [R4,#0x108]
VLDR            S1, [R4,#0x10C]
LDRB            R0, [R0]
VSUB.F32        S22, S2, S16
VADD.F32        S24, S1, S16
VADD.F32        S23, S2, S16
VSUB.F32        S25, S1, S16
LDR             R2, =0x2698
CMP             R0, #1
LDR             R1, [SP,#0x150+var_28]
LDR             R7, [SP,#0x150+var_2C]
LDRB            R0, [R2,R4]
BNE             loc_16E31C
CMP             R0, #0
BEQ             loc_16E31C
CMP             R0, #1
BEQ             loc_16E348
CMP             R0, #2
BEQ             loc_16E334
CMP             R0, #3
BNE             loc_16E380
B               loc_16E360
VMOV.F32        S2, S1
VLDR            S1, [R4,#0x11C]
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_16E374
B               loc_16E37C
VLDR            S2, [R4,#0x11C]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLS             loc_16E374
B               loc_16E37C
VMOV.F32        S1, S2
VLDR            S2, [R4,#0x118]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BGE             loc_16E374
B               loc_16E37C
VMOV.F32        S1, S2
VLDR            S2, [R4,#0x118]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BHI             loc_16E37C
MOV             R11, #1
B               loc_16E380
MOV             R11, #0
SXTB            R0, R11
CMP             R0, #0
MOVEQ           R7, R1
CMP             R7, #0
BEQ             loc_16EB54
ADD             R0, R4, #0x400
VLDR            S1, =2.0
ADD             R0, R0, #0x248
STR             R0, [SP,#0x150+var_78]
VMUL.F32        S26, S0, S1
ADD             R0, R4, #0x400
ADD             R0, R0, #0x258
STR             R0, [SP,#0x150+var_AC]
VLDR            S27, =-1.0
VLDR            S28, =0.95
ADD             R0, R4, #0x400
MOV             R10, #0
ADD             R6, SP, #0x150+var_138
STR             R0, [SP,#0x150+var_7C]
ADD             R1, SP, #0x150+var_74
ADD             R0, SP, #0x150+var_CC
STRD            R0, R1, [SP,#0x150+var_150]
LDR             R0, [R4]
ADD             R3, SP, #0x150+var_C8
ADD             R2, SP, #0x150+var_C4
MOV             R1, R7
LDR             R12, [R0,#0x430]
MOV             R0, R4
BLX             R12
CMP             R0, #0
BEQ             loc_16EB3C
ADD             R0, R7, #0x400
STR             R0, [SP,#0x150+var_A8]
VLDR            S2, [R0,#0x224]
VLDR            S1, [R7,#0x108]
VLDR            S4, [R0,#0x228]
VLDR            S3, [R0,#0x234]
VADD.F32        S2, S2, S1
VADD.F32        S1, S4, S1
VLDR            S0, [R7,#0x10C]
VADD.F32        S3, S3, S0
VCMPE.F32       S22, S1
VMRS            APSR_nzcv, FPSCR
BGT             loc_16EB3C
VCMPE.F32       S23, S2
VMRS            APSR_nzcv, FPSCR
VCMPECS.F32     S24, S0
VMRSCS          APSR_nzcv, FPSCR
BCC             loc_16EB3C
VCMPE.F32       S25, S3
VMRS            APSR_nzcv, FPSCR
BGT             loc_16EB3C
STR             R10, [SP,#0x150+var_138]
STR             R10, [SP,#0x150+var_134]
STR             R10, [SP,#0x150+var_130]
STR             R10, [SP,#0x150+var_12C]
STR             R10, [SP,#0x150+var_128]
STR             R10, [SP,#0x150+var_124]
STR             R10, [SP,#0x150+var_120]
STR             R10, [SP,#0x150+var_11C]
STR             R10, [SP,#0x150+var_118]
STR             R10, [SP,#0x150+var_114]
STR             R10, [SP,#0x150+var_110]
STR             R10, [SP,#0x150+var_10C]
VSTR            S1, [SP,#0x150+var_12C]
ADD             R0, SP, #0x150+var_138
VMOV.F32        S19, S27
VSTM            R0, {S2-S3}
MOV             R8, #0
VSTR            S3, [SP,#0x150+var_128]
VSTR            S1, [SP,#0x150+var_120]
VSTR            S0, [SP,#0x150+var_11C]
VSTR            S2, [SP,#0x150+var_114]
VSTR            S0, [SP,#0x150+var_110]
MOV             R5, #0
ADD             R1, R5, #1
ADD             R0, R5, R5,LSL#1
MOV             R2, R1,ASR#31
ADD             R0, R6, R0,LSL#2
ADD             R2, R1, R2,LSR#30
BIC             R2, R2, #3
SUB             R1, R1, R2
VLDR            S2, [R0]
ADD             R1, R1, R1,LSL#1
ADD             R2, R0, #4
ADD             R1, R6, R1,LSL#2
VLDM            R2, {S0-S1}
ADD             R2, R1, #4
VLDR            S5, [R1]
VCMP.F32        S2, S5
VMRS            APSR_nzcv, FPSCR
VLDM            R2, {S3-S4}
VCMPEQ.F32      S0, S3
VMRSEQ          APSR_nzcv, FPSCR
VCMPEQ.F32      S1, S4
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_16E564
VLDR            S10, [R4,#0x108]
VSUB.F32        S8, S5, S2
VLDR            S9, [R4,#0x10C]
VSUB.F32        S10, S10, S2
VSUB.F32        S6, S3, S0
VSUB.F32        S9, S9, S0
VLDR            S11, [R4,#0x110]
VSUB.F32        S7, S4, S1
ADD             R2, R4, #0x10C
VSUB.F32        S11, S11, S1
VLDM            R2, {S17-S18}
VSUB.F32        S12, S2, S5
VLDR            S15, [R4,#0x108]
VMUL.F32        S21, S8, S10
VSUB.F32        S13, S0, S3
VSUB.F32        S14, S1, S4
VSUB.F32        S15, S15, S5
VSUB.F32        S17, S17, S3
VSUB.F32        S18, S18, S4
VMLA.F32        S21, S6, S9
VMLA.F32        S21, S7, S11
VCMPE.F32       S20, S21
VMRS            APSR_nzcv, FPSCR
BLE             loc_16E5AC
VLDR            S3, [R4,#0x108]
ADD             R2, R4, #0x10C
VSUB.F32        S3, S2, S3
VLDM            R2, {S4-S5}
VSUB.F32        S2, S0, S4
VSUB.F32        S0, S1, S5
VMUL.F32        S1, S3, S3
VMLA.F32        S1, S2, S2
VMLA.F32        S1, S0, S0
VSQRT.F32       S0, S1
B               loc_16E62C
DCFS 0.0
DCFS 0.15
DCD 0x26C1
DCD 0x2698
DCFS 2.0
DCFS -1.0
DCFS 0.95
VMUL.F32        S0, S12, S15
VMLA.F32        S0, S13, S17
VMLA.F32        S0, S14, S18
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
BCS             loc_16E5F0
VLDR            S2, [R4,#0x108]
ADD             R2, R4, #0x10C
VSUB.F32        S2, S5, S2
VLDM            R2, {S0-S1}
VSUB.F32        S0, S3, S0
VSUB.F32        S1, S4, S1
VMUL.F32        S2, S2, S2
VMLA.F32        S2, S0, S0
VMLA.F32        S2, S1, S1
VSQRT.F32       S0, S2
B               loc_16E62C
VMUL.F32        S0, S6, S11
VMUL.F32        S1, S7, S10
VMUL.F32        S2, S8, S9
VMLS.F32        S0, S7, S9
VMLS.F32        S1, S8, S11
VMLS.F32        S2, S6, S10
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S1, S1
VMLA.F32        S0, S2, S2
VSQRT.F32       S1, S0
VMUL.F32        S0, S8, S8
VMLA.F32        S0, S6, S6
VMLA.F32        S0, S7, S7
VSQRT.F32       S2, S0
VDIV.F32        S0, S1, S2
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BHI             loc_16E6F8
VSTR            S20, [SP,#0x150+var_E8]
VLDR            S0, [R1]
ADD             LR, SP, #0x150+var_14C
VSTR            S0, [SP,#0x150+var_F4]
VLDR            S0, [R1,#4]
ADD             R12, SP, #0x150+var_F4
VSTR            S0, [SP,#0x150+var_F0]
VLDR            S0, [R1,#8]
ADD             R9, SP, #0x150+var_100
VSTR            S0, [SP,#0x150+var_EC]
VLDR            S0, [R0]
ADD             R3, R4, #0x108
VSTR            S0, [SP,#0x150+var_100]
VLDR            S0, [R0,#4]
ADD             R2, R4, #0x118
VSTR            S0, [SP,#0x150+var_FC]
VLDR            S0, [R0,#8]
ADD             R0, SP, #0x150+var_E8
VSTR            S0, [SP,#0x150+var_F8]
LDRSB           R1, [SP,#0x150+var_C4]
STR             R10, [SP,#0x150+var_150]
VMOV.F32        S0, S16
STM             LR, {R0,R1,R10}
MOV             R1, R12
MOV             R0, R9
BL              sub_597B78
CMP             R0, #0
MOVEQ           R8, #0x10
BEQ             loc_16E6F8
VLDR            S0, [SP,#0x150+var_E8]
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
VCMPECS.F32     S19, S20
VMRSCS          APSR_nzcv, FPSCR
BCS             loc_16E6F8
VMOV.F32        S19, S0
CMP             R5, #0
MOVEQ           R8, #0x10
MOVEQ           R5, #1
BEQ             loc_16E4AC
CMP             R5, #1
MOVEQ           R8, #2
BEQ             loc_16E6F8
CMP             R5, #2
MOVEQ           R8, #0x20 ; ' '
BEQ             loc_16E6F8
CMP             R5, #3
MOVEQ           R8, #8
ADD             R5, R5, #1
CMP             R5, #4
BLT             loc_16E4AC
CMP             R8, #0
BEQ             loc_16EB3C
LDRB            R0, [SP,#0x150+var_C4]
CMP             R0, #0
BNE             loc_16E728
LDRSB           R0, [SP,#0x150+var_C8]
LDRSB           R1, [SP,#0x150+var_CC]
BICS            R0, R0, R1
BEQ             loc_16E754
CMP             R8, #2
MOVEQ           R8, #8
BEQ             loc_16E754
CMP             R8, #8
MOVEQ           R8, #2
BEQ             loc_16E754
CMP             R8, #0x10
MOVEQ           R8, #0x20 ; ' '
BEQ             loc_16E754
CMP             R8, #0x20 ; ' '
MOVEQ           R8, #0x10
LDRB            R0, [SP,#0x150+var_C8]
CMP             R0, #0
BEQ             loc_16E808
MOV             R1, R4
MOV             R3, R8
MOV             R2, R7
MOV             R0, R1
BL              sub_16DE6C
CMP             R0, #0
NOP
BNE             loc_16E808
LDR             R2, [R4,#0x750]
MOV             R3, R4
MOV             R1, R7
CMP             R2, #0
BEQ             loc_16E7D8
LDR             R12, [R1,#0x4EC]
TST             R12, #0xE0
BNE             loc_16E7AC
LDR             R2, [R3,#0x754]
CMP             R2, R1
BNE             loc_16E7D8
AND             R12, R12, #0xE0
CMP             R12, #0x80
BNE             loc_16E808
LDR             R2, [R3,#0x754]
CMP             R2, R1
BNE             loc_16E7D8
LDR             R2, [SP,#0x150+var_7C]
LDRH            R12, [R2,#0x6E]
LDRH            R2, [R2,#0x6C]
CMP             R2, R12
BEQ             loc_16E808
STR             R7, [R3,#0x750]
LDR             R2, [R3,#0x658]
LDR             R12, [SP,#0x150+var_AC]
MOV             R1, #0xFC0
AND             R0, R1, R8,LSL#6
BIC             R1, R2, #0xFC0
LDR             R5, [SP,#0x150+var_78]
ORR             R0, R0, R1
STR             R0, [R12]
LDR             R0, [R4,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R5]
LDRB            R0, [SP,#0x150+var_74]
CMP             R0, #0
BEQ             loc_16E8BC
MOV             R2, R4
MOV             R3, R8
MOV             R1, R7
MOV             R0, R2
BL              sub_16DE6C
CMP             R0, #0
NOP
BNE             loc_16E8BC
LDR             R3, [R7,#0x750]
MOV             R0, R7
MOV             R2, R4
CMP             R3, #0
BEQ             loc_16E88C
LDR             R12, [R2,#0x4EC]
TST             R12, #0xE0
BNE             loc_16E860
LDR             R3, [R0,#0x754]
CMP             R3, R2
BNE             loc_16E88C
AND             R12, R12, #0xE0
CMP             R12, #0x80
BNE             loc_16E8BC
LDR             R3, [R0,#0x754]
CMP             R3, R2
BNE             loc_16E88C
LDR             R3, [SP,#0x150+var_A8]
LDRH            R12, [R3,#0x6E]
LDRH            R3, [R3,#0x6C]
CMP             R3, R12
BEQ             loc_16E8BC
STR             R4, [R0,#0x750]
LDR             R12, [R0,#0x658]
MOV             R3, #0xFC0
AND             R1, R3, R8,LSL#6
BIC             R3, R12, #0xFC0
ORR             R1, R1, R3
ADD             R2, R0, #0x400
STR             R1, [R0,#0x658]
LDR             R0, [R7,#0x648]
ADD             R2, R2, #0x248
BIC             R0, R0, #0x180000
STR             R0, [R2]
LDRB            R0, [SP,#0x150+var_C4]
CMP             R0, #0
BEQ             loc_16EB3C
VMOV.F32        S17, S27
VSTR            S20, [SP,#0x150+var_EC]
MOV             R5, #0
MOV             R9, #1
ADD             R0, R5, R5,LSL#1
ADD             R12, SP, #0x150+var_14C
ADD             R2, R6, R0,LSL#2
ADD             R0, SP, #0x150+var_E0
VLDR            S0, [R2]
ADD             R1, SP, #0x150+var_A4
VSTR            S0, [SP,#0x150+var_E0]
VLDR            S0, [R2,#4]
VSTR            S0, [SP,#0x150+var_DC]
VLDR            S0, [R2,#8]
ADD             R2, R5, #1
VSTR            S0, [SP,#0x150+var_D8]
MOV             R3, R2,ASR#31
ADD             R3, R2, R3,LSR#30
BIC             R3, R3, #3
SUB             R2, R2, R3
ADD             R3, SP, #0x150+var_F8
ADD             R2, R2, R2,LSL#1
ADD             R2, R6, R2,LSL#2
VLDR            S0, [R2]
VSTR            S0, [SP,#0x150+var_A4]
VLDR            S0, [R2,#4]
VSTR            S0, [SP,#0x150+var_A0]
VLDR            S0, [R2,#8]
ADD             R2, SP, #0x150+var_EC
VSTR            S0, [SP,#0x150+var_9C]
STR             R3, [SP,#0x150+var_150]
VMOV.F32        S0, S16
STM             R12, {R2,R9,R10}
ADD             R3, R4, #0x108
ADD             R2, R4, #0x118
BL              sub_597B78
CMP             R0, #0
NOP
BEQ             loc_16E990
VLDR            S0, [SP,#0x150+var_EC]
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BCC             loc_16E980
VCMPE.F32       S20, S17
VMRS            APSR_nzcv, FPSCR
BLE             loc_16E990
ADD             R0, SP, #0x150+var_F8
VMOV.F32        S17, S0
VLDM            R0, {S18-S19}
VLDR            S21, [SP,#0x150+var_F0]
ADD             R5, R5, #1
CMP             R5, #4
BLT             loc_16E8D8
VCMPE.F32       S20, S17
VMRS            APSR_nzcv, FPSCR
BHI             loc_16EB3C
ADD             R5, R4, #0x650
LDRB            R2, [R7,#0xDC]
LDM             R5, {R5,R9}
MOV             R0, #1
MOV             R1, #0
BL              sub_300CF8
ADD             R3, R4, #0x650
ORR             R0, R0, R5
ORR             R1, R1, R9
STM             R3, {R0,R1}
AND             R2, R8, #0x3F ; '?'
LDR             R0, [R4,#0x658]
ORR             R0, R0, R2
STR             R0, [R4,#0x658]
LDRB            R0, [SP,#0x150+var_CC]
CMP             R0, #0
BEQ             loc_16EA40
AND             R0, R8, #8
AND             R2, R8, #2
MOV             R0, R0,LSR#2
ORR             R0, R0, R2,LSL#2
AND             R1, R8, #0x10
AND             R2, R8, #0x20 ; ' '
ORR             R0, R0, R1,LSL#1
ADD             R5, R7, #0x650
ORR             R9, R0, R2,LSR#1
LDM             R5, {R5,R8}
MOV             R0, #1
LDRB            R2, [R4,#0xDC]
MOV             R1, #0
BL              sub_300CF8
ADD             R2, R7, #0x650
ORR             R0, R0, R5
ORR             R1, R1, R8
STM             R2, {R0,R1}
LDR             R0, [R7,#0x658]
ORR             R0, R0, R9
STR             R0, [R7,#0x658]
LDR             R0, [R4]
LDR             R1, [R0,#0x2E8]
MOV             R0, R4
BLX             R1
LDR             R1, [SP,#0x150+var_A8]
LDRH            R1, [R1,#0x6C]
CMP             R0, R1
BEQ             loc_16EB3C
LDR             R0, [R7]
LDR             R1, [R0,#0x2E8]
MOV             R0, R7
BLX             R1
LDR             R1, [SP,#0x150+var_7C]
LDRH            R1, [R1,#0x6C]
CMP             R0, R1
BEQ             loc_16EB3C
VSTR            S21, [R4,#0x110]
ADD             R0, R4, #0x108
VMOV.F32        S3, S28
VSTM            R0, {S18-S19}
LDR             R0, [SP,#0x150+var_7C]
VLDR            S4, [R4,#0x11C]
VLDR            S5, [R4,#0x118]
VLDR            S0, [R4,#0x120]
VSUB.F32        S1, S19, S4
VLDR            S4, [R0,#0xC4]
VSUB.F32        S2, S18, S5
VSUB.F32        S0, S21, S0
VMUL.F32        S3, S4, S3
VSTR            S3, [R0,#0xC4]
VCMPE.F32       S26, S3
VMRS            APSR_nzcv, FPSCR
BGT             loc_16EAE0
VMUL.F32        S2, S2, S2
VMLA.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VSQRT.F32       S0, S2
VCMPE.F32       S0, S26
VMRS            APSR_nzcv, FPSCR
BHI             loc_16EAF8
LDR             R0, [R4]
LDR             R1, [R0,#0x220]
MOV             R0, R4
BLX             R1
LDR             R0, [SP,#0x150+var_7C]
VSTR            S20, [R0,#0xC4]
VCMPE.F32       S17, S20
VMRS            APSR_nzcv, FPSCR
BLE             loc_16EB3C
LDR             R0, [R4]
LDR             R1, [R0,#0x288]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0x28C]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
ADD             R5, SP, #0x150+var_2C
LDM             R5, {R1,R2}
LDR             R3, [R0,#0x438]
MOV             R0, R4
BLX             R3
SXTB            R0, R11
CMP             R0, #0
LDRNE           R7, [R7,#0xC]
LDREQ           R7, [R7,#0x10]
CMP             R7, #0
BNE             loc_16E3CC
ADD             SP, SP, #0xE8
VPOP            {D8-D14}
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
