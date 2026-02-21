PUSH            {R4-R11,LR}
MOV             R5, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x1C
LDRB            R0, [R0,#0x38]
CMP             R0, #0
BEQ             loc_2AB1C4
LDRSH           R7, [R5,#0x3A]
CMP             R7, #0
UXTHGE          R0, R7
MOVLT           R0, #0
BLGE            sub_2AF718
LDR             R11, =off_6D1648
MOV             R8, R0
LDR             R0, [R11]
LDR             R6, [R0,#0xBC]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
TST             R1, #0x400000
LDREQ           R4, [R0,#4]
LDRNE           R4, [R0,#8]
LDR             R0, [R6]
LDR             R1, [R0,#0x3C]
MOV             R0, R6
BLX             R1
CMP             R0, #0
BEQ             loc_2AAF3C
LDR             R0, =0x13D40
LDR             R0, [R0,R6]
TST             R0, #1
BNE             loc_2AAF3C
LDR             R0, =0x13D04
LDR             R2, =0x8B8
LDRH            R1, [R0,R6]
LDRSH           R2, [R2,R4]
CMP             R1, R2
STRHEQ          R1, [R5,#0x3A]
LDRSH           R0, [R5,#0x3A]
MOV             R10, #0
CMP             R0, R7
BEQ             loc_2AAFD4
LDRB            R0, [R5,#0x10]
CMP             R0, #1
BNE             loc_2AAFD0
LDR             R0, [R5,#0xC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x18
LDR             R0, [R0]
CMP             R0, #0
MOVNE           R4, #0
BNE             loc_2AAF84
B               loc_2AAFD0
CMP             R4, #3
MOVEQ           R4, #4
BEQ             loc_2AAF78
LDR             R2, [R5,#0xC]
AND             R0, R4, #0xFF
MOV             R1, #1
ADD             R2, R2, #0x14400
ADD             R2, R2, #0x18
ADD             R12, R0, R0,LSL#4
LDR             R3, [R2]
ADD             R0, R12, R0,LSL#5
MOV             R2, #2
ADD             R0, R3, R0,LSL#4
MOV             R3, #0
STRB            R1, [R0,#0x199]
LDRB            R1, [R0,#0x19A]
CMP             R1, #0
MOVNE           R1, #1
BL              sub_3A2B64
ADD             R4, R4, #1
CMP             R4, #5
BLT             loc_2AAF78
STRB            R10, [R5,#0x10]
LDRB            R0, [R5,#0x10]
VLDR            S16, =0.0
MOV             R4, #1
CMP             R0, #0
MOV             R9, #3
BEQ             loc_2AB1D0
CMP             R0, #1
BEQ             loc_2AB37C
CMP             R0, #3
VLDREQ          S0, [R5,#0x14]
VCMPEQ.F32      S0, S16
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_2AB024
VLDR            S0, [R5,#0x18]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VLDREQ          S0, [R5,#0x1C]
VCMPEQ.F32      S0, S16
VMRSEQ          APSR_nzcv, FPSCR
STRBEQ          R10, [R5,#0x10]
LDRB            R0, [R5,#0x10]
CMP             R0, #0
BEQ             loc_2AB5B8
CMP             R0, #1
BEQ             loc_2AB7D0
CMP             R0, #3
BNE             loc_2AB1C4
LDR             R0, [R5,#0xC]
ADD             R1, R5, #0x14
VLDR            S0, [R5,#0x1C]
ADD             R0, R0, #0x24 ; '$'
VLDM            R1, {S1-S2}
VLDR            S3, [R0]
VCMPE.F32       S1, S16
VADD.F32        S3, S3, S1
VSTR            S3, [R0]
VLDR            S3, [R0,#4]
VLDR            S4, [R5,#0x18]
VADD.F32        S3, S3, S4
VSTR            S3, [R0,#4]
VLDR            S3, [R0,#8]
VLDR            S4, [R5,#0x1C]
VADD.F32        S3, S3, S4
VSTR            S3, [R0,#8]
VLDR            S3, [R5,#0x14]
VLDR            S4, [R5,#0x20]
VADD.F32        S3, S3, S4
VSTR            S3, [R5,#0x14]
VLDR            S3, [R5,#0x18]
VLDR            S4, [R5,#0x24]
VADD.F32        S3, S3, S4
VSTR            S3, [R5,#0x18]
VLDR            S3, [R5,#0x1C]
VLDR            S4, [R5,#0x28]
VADD.F32        S3, S3, S4
VMRS            APSR_nzcv, FPSCR
VSTR            S3, [R5,#0x1C]
BLE             loc_2AB0D4
LDR             R0, [R5,#0xC]
VLDR            S4, [R5,#0x2C]
VLDR            S3, [R0,#0x24]
VCMPE.F32       S3, S4
VMRS            APSR_nzcv, FPSCR
BGT             loc_2AB0F8
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_2AB10C
LDR             R0, [R5,#0xC]
VLDR            S3, [R5,#0x2C]
VLDR            S1, [R0,#0x24]
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
BCS             loc_2AB10C
LDR             R1, [R5,#0xC]
LDR             R0, [R5,#0x2C]
STR             R0, [R1,#0x24]
VSTR            S16, [R5,#0x14]
VSTR            S16, [R5,#0x20]
VCMPE.F32       S2, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_2AB130
LDR             R0, [R5,#0xC]
VLDR            S3, [R5,#0x30]
VLDR            S1, [R0,#0x28]
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
BGT             loc_2AB154
VCMPE.F32       S2, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_2AB168
LDR             R0, [R5,#0xC]
VLDR            S2, [R5,#0x30]
VLDR            S1, [R0,#0x28]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BCS             loc_2AB168
LDR             R1, [R5,#0xC]
LDR             R0, [R5,#0x30]
STR             R0, [R1,#0x28]
VSTR            S16, [R5,#0x18]
VSTR            S16, [R5,#0x24]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_2AB18C
LDR             R0, [R5,#0xC]
VLDR            S2, [R5,#0x34]
VLDR            S1, [R0,#0x2C]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BGT             loc_2AB1B0
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_2AB1C4
LDR             R0, [R5,#0xC]
VLDR            S1, [R5,#0x34]
VLDR            S0, [R0,#0x2C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_2AB1C4
LDR             R1, [R5,#0xC]
LDR             R0, [R5,#0x34]
STR             R0, [R1,#0x2C]
VSTR            S16, [R5,#0x1C]
VSTR            S16, [R5,#0x28]
ADD             SP, SP, #0x1C
VPOP            {D8-D9}
POP             {R4-R11,PC}
LDRSH           R0, [R5,#0x3A]
CMP             R0, R7
LDR             R0, [R11]
BEQ             loc_2AB2A0
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
TST             R1, #0x400000
LDREQ           R4, [R0,#4]
LDRNE           R4, [R0,#8]
LDR             R0, =0x8B8
LDRH            R0, [R0,R4]
BL              sub_2AF718
LDR             R1, [R5,#0xC]
MOV             R7, R0
LDR             R0, [R0]
ADD             R1, R1, #0x10000
ADD             R1, R1, #0x3D00
LDRH            R1, [R1,#4]
MOV             R0, R0,LSL#1
CMP             R1, R0,LSR#16
BNE             loc_2AB244
LDR             R0, [R5]
MOV             R3, R7
ADD             R2, R4, #0x108
ADD             R1, R5, #0x2C ; ','
LDR             R12, [R0,#0x1C]
MOV             R0, R5
BLX             R12
CMP             R8, #0
BEQ             loc_2AB288
LDR             R0, [R7]
LDR             R1, [R8]
MOV             R0, R0,LSL#1
MOV             R1, R1,LSL#1
MOV             R0, R0,LSR#16
CMP             R0, R1,LSR#16
BNE             loc_2AB288
LDR             R0, [R5]
VLDR            S0, =8.0
ADD             R1, R5, #0x2C ; ','
LDR             R2, [R0,#0x18]
MOV             R0, R5
BLX             R2
STRB            R9, [R5,#0x10]
B               loc_2AB024
ADD             R0, R5, #0x2C ; ','
LDR             R2, [R5,#0xC]
LDM             R0, {R0,R1,R3}
ADD             R2, R2, #0x24 ; '$'
STM             R2, {R0,R1,R3}
B               loc_2AB024
LDRB            R0, [R0,#0xD4]
TST             R0, #4
BEQ             loc_2AB024
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R5,#0x1C]
ADD             R0, R5, #0x14
STM             R0, {R1,R2}
STRB            R4, [R5,#0x10]
LDR             R0, [R5,#0xC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x18
LDR             R1, [R0]
CMP             R1, #0
MOVNE           R0, #0
BEQ             loc_2AB024
AND             R2, R0, #0xFF
ADD             R3, R2, R2,LSL#4
ADD             R2, R3, R2,LSL#5
ADD             R2, R1, R2,LSL#4
LDRB            R2, [R2,#0x195]
CMP             R2, #0
BNE             loc_2AB024
ADD             R0, R0, #1
CMP             R0, #5
BLT             loc_2AB2E4
MOV             R4, #0
B               loc_2AB338
DCD off_6D1648
DCD 0x13D40
DCD 0x13D04
DCD 0x8B8
DCFS 0.0
DCFS 8.0
CMP             R4, #3
MOVEQ           R4, #4
BEQ             loc_2AB32C
LDR             R0, [R5,#0xC]
AND             R3, R4, #0xFF
MOV             R1, #0
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x18
ADD             R12, R3, R3,LSL#4
LDR             R0, [R0]
ADD             R3, R12, R3,LSL#5
MOV             R2, #2
ADD             R0, R0, R3,LSL#4
MOV             R3, R1
STRB            R1, [R0,#0x199]
BL              sub_3A2B64
ADD             R4, R4, #1
CMP             R4, #5
BLT             loc_2AB32C
B               loc_2AB024
LDR             R0, [R5,#0xC]
LDR             R3, =0xF0001FFB
ADD             R2, SP, #0x50+var_44
LDR             R1, [R0]
LDR             R12, [R1,#0x74]
ADD             R1, SP, #0x50+var_48
BLX             R12
LDR             R0, [SP,#0x50+var_48]
CMP             R0, #0
BNE             loc_2AB44C
LDR             R0, [R5,#0xC]
LDR             R1, [R0]
LDR             R2, [R1,#0x7C]
MOV             R1, SP
BLX             R2
VLDR            S0, [SP,#0x50+var_50]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VLDREQ          S0, [SP,#0x50+var_4C]
VCMPEQ.F32      S0, S16
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_2AB44C
LDR             R0, [R11]
LDRB            R0, [R0,#0xD4]
TST             R0, #4
BEQ             loc_2AB534
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R5,#0x1C]
ADD             R0, R5, #0x14
STM             R0, {R1,R2}
STRB            R4, [R5,#0x10]
LDR             R0, [R5,#0xC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x18
LDR             R1, [R0]
CMP             R1, #0
MOVNE           R0, #0
BEQ             loc_2AB024
AND             R2, R0, #0xFF
ADD             R3, R2, R2,LSL#4
ADD             R2, R3, R2,LSL#5
ADD             R2, R1, R2,LSL#4
LDRB            R2, [R2,#0x195]
CMP             R2, #0
BNE             loc_2AB024
ADD             R0, R0, #1
CMP             R0, #5
BLT             loc_2AB41C
MOV             R4, #0
B               loc_2AB4F0
LDR             R0, [R5]
VLDR            S0, =16.0
ADD             R1, R5, #0x2C ; ','
LDR             R2, [R0,#0x18]
MOV             R0, R5
BLX             R2
STRB            R9, [R5,#0x10]
LDR             R0, [R5,#0xC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x18
LDR             R0, [R0]
CMP             R0, #0
MOVNE           R4, #0
BNE             loc_2AB494
B               loc_2AB024
CMP             R4, #3
MOVEQ           R4, #4
BEQ             loc_2AB488
LDR             R2, [R5,#0xC]
AND             R0, R4, #0xFF
MOV             R1, #1
ADD             R2, R2, #0x14400
ADD             R2, R2, #0x18
ADD             R12, R0, R0,LSL#4
LDR             R3, [R2]
ADD             R0, R12, R0,LSL#5
MOV             R2, #2
ADD             R0, R3, R0,LSL#4
MOV             R3, #0
STRB            R1, [R0,#0x199]
LDRB            R1, [R0,#0x19A]
CMP             R1, #0
MOVNE           R1, #1
BL              sub_3A2B64
ADD             R4, R4, #1
CMP             R4, #5
BLT             loc_2AB488
B               loc_2AB024
CMP             R4, #3
MOVEQ           R4, #4
BEQ             loc_2AB4E4
LDR             R0, [R5,#0xC]
AND             R3, R4, #0xFF
MOV             R1, #0
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x18
ADD             R12, R3, R3,LSL#4
LDR             R0, [R0]
ADD             R3, R12, R3,LSL#5
MOV             R2, #2
ADD             R0, R0, R3,LSL#4
MOV             R3, R1
STRB            R1, [R0,#0x199]
BL              sub_3A2B64
ADD             R4, R4, #1
CMP             R4, #5
BLT             loc_2AB4E4
B               loc_2AB024
TST             R0, #8
BEQ             loc_2AB024
LDR             R0, [R5,#0xC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x18
LDR             R0, [R0]
CMP             R0, #0
MOVNE           R4, #0
BEQ             loc_2AB024
B               loc_2AB568
CMP             R4, #3
MOVEQ           R4, #4
BEQ             loc_2AB55C
LDR             R2, [R5,#0xC]
AND             R0, R4, #0xFF
MOV             R1, #1
ADD             R2, R2, #0x14400
ADD             R2, R2, #0x18
ADD             R12, R0, R0,LSL#4
LDR             R3, [R2]
ADD             R0, R12, R0,LSL#5
MOV             R2, #2
ADD             R0, R3, R0,LSL#4
MOV             R3, #0
STRB            R1, [R0,#0x199]
LDRB            R1, [R0,#0x19A]
CMP             R1, #0
MOVNE           R1, #1
BL              sub_3A2B64
ADD             R4, R4, #1
CMP             R4, #5
BLT             loc_2AB55C
B               loc_2AB024
LDR             R0, [R11]
MOV             R9, #0
VLDR            S17, =43.0
VLDR            S18, =37.0
LDR             R0, [R0,#0xC4]
ADD             R7, R6, #0x10000
ADD             R8, R6, #0x10000
MOV             R4, R9
LDR             R0, [R0,#4]
MOV             R10, SP
ADD             R7, R7, #0x4300
ADD             R8, R8, #0x3D40
LDR             R1, [R0,#4]
STR             R1, [SP,#0x50+var_50]
LDR             R1, [R0,#8]
STR             R1, [SP,#0x50+var_4C]
LDR             R1, [R0,#0xC]
STR             R1, [SP,#0x50+var_48]
LDR             R0, [R0,#0x10]
STR             R0, [SP,#0x50+var_44]
LDRB            R0, [R7,#0xFC]
LDR             R6, [R10,R4,LSL#2]
CMP             R0, #0
BEQ             loc_2AB78C
LDR             R0, [R8]
TST             R0, #1
BNE             loc_2AB78C
LDR             R0, =0x8B8
LDRH            R0, [R0,R6]
BL              sub_2AF718
LDR             R1, [R5,#0xC]
LDR             R2, [R0]
MOV             R3, R0
ADD             R0, R1, #0x10000
ADD             R0, R0, #0x3D00
MOV             R1, R2,LSL#1
LDRH            R0, [R0,#4]
CMP             R0, R1,LSR#16
BNE             loc_2AB78C
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R1, [R0,#0xC4]
ADD             R0, SP, #0x50+var_48
LDR             R11, [R0,R4,LSL#2]
LDR             R0, [R1,#4]
LDR             R0, [R0,#0x14]
TST             R0, #0x10000
BEQ             def_2AB688; jumptable 002AB688 default case, case 2
LDR             R0, [SP,#0x50+var_50]
LDR             R1, [R0,#0x86C]
AND             R1, R1, #0xF
CMP             R1, #6; switch 6 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_2AB688; jumptable 002AB688 default case, case 2
DCD loc_2AB6A8; jump table for switch statement
CMP             R4, #0; jumptable 002AB688 cases 0,1,3
BNE             loc_2AB6E8
VLDR            S0, [R0,#0x10C]
LDR             R1, [R0,#0x108]
VLDR            S1, [R0,#0x110]
VADD.F32        S0, S0, S17
STR             R1, [SP,#0x50+var_40]
ADD             R1, SP, #0x50+var_3C
ADD             R2, SP, #0x50+var_40
VSTM            R1, {S0-S1}
ADD             R1, R11, #0x108
LDR             R0, [R5]
LDR             R12, [R0,#0x1C]
MOV             R0, R5
BLX             R12
B               loc_2AB76C
LDR             R1, [R5]
ADD             R2, R0, #0x108
MOV             R0, R5
LDR             R12, [R1,#0x1C]
ADD             R1, R11, #0x108
BLX             R12
B               loc_2AB76C
CMP             R4, #0; jumptable 002AB688 cases 4,5
BEQ             loc_2AB6E8
VLDR            S0, [R0,#0x10C]
LDR             R1, [R0,#0x108]
LDR             R0, [R0,#0x110]
VADD.F32        S0, S0, S18
STR             R1, [SP,#0x50+var_40]
ADD             R2, SP, #0x50+var_40
ADD             R1, R11, #0x108
VSTR            S0, [SP,#0x50+var_3C]
STR             R0, [SP,#0x50+var_38]
LDR             R0, [R5]
LDR             R12, [R0,#0x1C]
MOV             R0, R5
BLX             R12
B               loc_2AB76C
DCD 0xF0001FFB
DCFS 16.0
DCFS 43.0
DCFS 37.0
LDR             R0, [R5]; jumptable 002AB688 default case, case 2
ADD             R2, R6, #0x108
ADD             R1, R11, #0x108
LDR             R12, [R0,#0x1C]
MOV             R0, R5
BLX             R12
CMP             R9, #0
BNE             loc_2AB78C
LDR             R0, [R11,#0x108]
MOV             R9, #1
STR             R0, [R5,#0x2C]
VSTR            S16, [R5,#0x30]
LDR             R0, [R11,#0x110]
STR             R0, [R5,#0x34]
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_2AB608
LDR             R0, [R5,#0xC]
LDR             R1, =0x1428F
LDRB            R1, [R1,R0]
CMP             R1, #1
BNE             loc_2AB1C4
CMP             R9, #0
BEQ             loc_2AB1C4
ADD             R5, R5, #0x2C ; ','
ADD             R0, R0, #0x24 ; '$'
LDM             R5, {R1-R3}
STM             R0, {R1-R3}
ADD             SP, SP, #0x1C
VPOP            {D8-D9}
POP             {R4-R11,PC}
LDR             R0, [R5,#0xC]
LDR             R1, =0x14418
LDR             R1, [R1,R0]
CMP             R1, #0
BEQ             loc_2AB7F4
ADD             R1, R1, #0xF00
LDRSB           R1, [R1,#0x50]
CMN             R1, #1
BNE             loc_2AB1C4
LDR             R1, [R11]
LDRB            R2, [R1,#0xD4]
TST             R2, #1
TSTNE           R2, #2
BEQ             loc_2AB8F4
LDRH            R2, [R1,#0xD0]
LDRH            R3, [R1,#0xCC]
VLDR            S0, =0.8
LDRH            R12, [R1,#0xD2]
SUB             R2, R2, R3
VMOV            S2, R2
LDRH            R1, [R1,#0xCE]
VLDR            S3, =4.0
SUB             R1, R12, R1
VMOV            S1, R1
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S1, S1
VMUL.F32        S4, S2, S0
VMUL.F32        S2, S1, S0
VSTR            S4, [R5,#0x14]
VMOV.F32        S5, S4
VSTR            S16, [R5,#0x18]
VSTR            S2, [R5,#0x1C]
VMOV.F32        S1, S2
VMUL.F32        S6, S5, S5
VCMPE.F32       S5, S16
VMLA.F32        S6, S16, S16
VMLA.F32        S6, S1, S1
VSQRT.F32       S0, S6
VMRS            APSR_nzcv, FPSCR
VDIV.F32        S6, S5, S0
VDIV.F32        S7, S1, S0
VMUL.F32        S0, S6, S3
VMOVGT.F32      S6, S16
VMUL.F32        S3, S7, S3
VSTR            S0, [R5,#0x20]
VCMPEGT.F32     S0, S6
VSTR            S16, [R5,#0x24]
VSTR            S3, [R5,#0x28]
VMRSGT          APSR_nzcv, FPSCR
BGT             loc_2AB8B0
VMOV.F32        S6, S16
VCMPE.F32       S4, S6
VMRS            APSR_nzcv, FPSCR
VCMPECC.F32     S0, S6
VMRSCC          APSR_nzcv, FPSCR
BCS             loc_2AB8B8
VNEG.F32        S0, S0
VSTR            S0, [R5,#0x20]
VMOV.F32        S0, S16
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VCMPEGT.F32     S3, S0
VMRSGT          APSR_nzcv, FPSCR
BGT             loc_2AB8E4
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VCMPECC.F32     S3, S0
VMRSCC          APSR_nzcv, FPSCR
BCS             loc_2AB8EC
VNEG.F32        S0, S3
VSTR            S0, [R5,#0x28]
VMOV.F32        S3, S16
B               loc_2AB900
VLDR            S4, [R5,#0x14]
VLDR            S3, [R5,#0x18]
VLDR            S2, [R5,#0x1C]
VLDR            S0, [R0,#0x24]
VCMP.F32        S4, S16
VADD.F32        S0, S0, S4
VSTR            S0, [R0,#0x24]
LDR             R0, [R5,#0xC]
VLDR            S1, [R5,#0x1C]
VLDR            S0, [R0,#0x2C]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x2C]
VLDR            S0, [R5,#0x14]
VLDR            S1, [R5,#0x20]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x14]
VLDR            S0, [R5,#0x18]
VLDR            S1, [R5,#0x24]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x18]
VLDR            S0, [R5,#0x1C]
VLDR            S1, [R5,#0x28]
VADD.F32        S0, S0, S1
VMRS            APSR_nzcv, FPSCR
VSTR            S0, [R5,#0x1C]
BEQ             loc_2AB994
VCMPE.F32       S4, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_2AB978
VLDR            S1, [R5,#0x14]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BCC             loc_2AB994
VCMPE.F32       S4, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_2AB998
VLDR            S1, [R5,#0x14]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_2AB998
VSTR            S16, [R5,#0x14]
VCMP.F32        S3, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_2AB9DC
VCMPE.F32       S3, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_2AB9C0
VLDR            S1, [R5,#0x18]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BCC             loc_2AB9DC
VCMPE.F32       S3, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_2AB9E0
VLDR            S1, [R5,#0x18]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_2AB9E0
VSTR            S16, [R5,#0x18]
VCMP.F32        S2, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_2ABA1C
VCMPE.F32       S2, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_2ABA04
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BCC             loc_2ABA1C
VCMPE.F32       S2, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_2AB1C4
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_2AB1C4
VSTR            S16, [R5,#0x1C]
ADD             SP, SP, #0x1C
VPOP            {D8-D9}
POP             {R4-R11,PC}
