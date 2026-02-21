PUSH            {R4-R11,LR}
ADD             R6, R0, #0x4000
ADD             R6, R6, #0xF10
MOV             R5, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x14
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_171810
LDR             R10, =off_6D1648
LDR             R0, [R10]
ADD             R0, R0, #0x4C00
ADD             R0, R0, #0x348
LDRB            R0, [R0]
CMP             R0, #2
BEQ             loc_1713F4
LDR             R0, [R10]
LDR             R4, [R0,#0x10]
LDR             R0, [R4,#8]
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
CMP             R0, #0
BEQ             loc_1713CC
LDR             R0, [R4,#8]
ADD             R1, R4, #0xC
LDR             R2, [R0]
LDR             R2, [R2]
BLX             R2
ADD             R0, R4, #0x14
BL              sub_120E7C
LDR             R0, [R10]
LDR             R1, [R0]
LDR             R1, [R1,#0xE0]
BLX             R1
LDR             R0, [R10]
ADD             R0, R0, #0x4C00
ADD             R0, R0, #0x348
LDRB            R0, [R0]
CMP             R0, #2
BNE             loc_171390
LDR             R0, [R5]
LDR             R1, [R0,#0x474]
MOV             R0, R5
BLX             R1
LDR             R0, =0x174AC
LDRB            R0, [R0,R5]
CMP             R0, #0
BEQ             loc_171450
LDR             R0, [R10]
BL              sub_1E45C8
LDR             R0, [R0,#0x890]
TST             R0, #1
BNE             loc_171588
LDR             R1, =0x40490FDB
LDR             R0, [R5,#0x474]
CMP             R0, R1
LDR             R0, [R6]
ADD             SP, SP, #0x14
MOVGT           R1, #1
VPOP            {D8-D9}
MOVLE           R1, #0
POP             {R4-R11,LR}
B               sub_54353C
ADD             R4, R5, #0x23000
ADD             R4, R4, #0x5D0
LDR             R0, [R4]
CMP             R0, #0
LDRNE           R7, [R0,#4]
LDR             R0, [R10]
MOVEQ           R7, #0
LDR             R0, [R0,#0xBC]
LDR             R1, [R0]
LDR             R11, =0xF0001FFB
MOV             R2, SP
LDR             R12, [R1,#0x74]
MOV             R3, R11
ADD             R1, SP, #0x48+var_38
BLX             R12
LDR             R1, [R4]
VLDR            S17, =0.5
MOV             R9, #0
CMP             R1, #0
ADD             R8, R5, #0x19C00
BEQ             loc_1714C4
CMP             R7, #0x300
BLE             loc_1714B8
LDR             R0, [SP,#0x48+var_48]
TST             R0, #0x300
BNE             loc_1714D0
CMP             R7, #0x2100
BGT             loc_1714D0
B               loc_171740
LDRB            R0, [R8,#0x92]
CMP             R0, #0
BEQ             loc_171588
LDR             R0, =0x174AC
MOV             R1, #1
STRB            R1, [R0,R5]
LDR             R0, [R10]
BL              sub_1E45C8
LDR             R1, [R0,#0x14]
BIC             R1, R1, #2
STR             R1, [R0,#0x14]
LDR             R0, [R10]
BL              sub_1E45C8
LDRH            R0, [R0,#0x3C]
CMP             R0, #3
BEQ             loc_171528
ADD             R7, SP, #0x48+var_40
VLDR            S0, =1.0
VSTR            S0, [SP,#0x48+var_40]
VSTR            S0, [SP,#0x48+var_3C]
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
MOV             R1, R7
NOP
BL              sub_166510
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
MOV             R1, R11
NOP
BL              sub_166500
LDRB            R1, [R8,#0x92]
ADD             R7, R5, #0x19C00
ADD             R7, R7, #0x92
CMP             R1, #0
BEQ             loc_171594
LDR             R0, [R10]
BL              sub_1E45C8
LDRH            R8, [R0,#0x3C]
LDR             R0, [R6]
LDR             R1, [R0]
LDR             R1, [R1,#0x70]
BLX             R1
CMP             R8, R0
BNE             loc_171594
STRB            R9, [R7]
LDR             R0, [R5]
LDR             R1, [R0,#0x88]
MOV             R0, R5
BLX             R1
ADD             SP, SP, #0x14
VPOP            {D8-D9}
POP             {R4-R11,PC}
STRB            R9, [R7]
LDR             R0, [R10]
BL              sub_1E45C8
LDRH            R0, [R0,#0x3C]
CMP             R0, #3
BEQ             loc_171634
ADD             R7, R5, #0x23000
ADD             R7, R7, #0x5E0
LDR             R11, =0x20070
LDR             R8, [R7]
VLDR            S16, =0.0
CMP             R8, #0
BEQ             loc_171600
LDR             R0, [R8,#4]
CMP             R0, #0
BEQ             loc_1715EC
MOV             R0, R11
BL              sub_146084
LDR             R1, [R8,#0x20]
LDR             R0, [R0]
CMP             R0, R1
BEQ             loc_1715F4
STR             R9, [R7]
B               loc_171600
LDR             R0, [R7]
CMP             R0, #0
BNE             loc_17161C
VMOV.F32        S0, S16
MOV             R2, #0
MOV             R1, R5
MOV             R0, R11
VMOV.F32        S1, S0
BL              sub_1459F8
STR             R0, [R7]
VMOV.F32        S0, S16
LDR             R0, =0x20049
MOV             R2, #0
MOV             R1, R5
VMOV.F32        S1, S0
BL              sub_1459F8
LDR             R0, [R10]
BL              sub_1E45C8
LDRH            R1, [R0,#0x3C]
MOV             R0, R5
BL              sub_359E60
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_171714
LDR             R1, [SP,#0x48+var_48]
TST             R1, #0x300
BEQ             loc_171714
BL              sub_533330
ADD             R0, R5, #0x108
STR             R9, [R4]
LDM             R0, {R1,R2}
ADD             R3, SP, #0x48+var_44
LDR             R0, [R5,#0x110]
STR             R0, [SP,#0x48+var_3C]
STM             R3, {R1,R2}
LDR             R0, [R6]
LDR             R1, [R0]
LDR             R1, [R1,#0x6C]
BLX             R1
VLDR            S1, [SP,#0x48+var_40]
VMLA.F32        S1, S0, S17
VSTR            S1, [SP,#0x48+var_40]
LDR             R0, [R5]
LDR             R1, [R0,#0x474]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BEQ             loc_1716C8
CMP             R0, #1
BEQ             loc_1716E0
CMP             R0, #2
BEQ             loc_1716FC
B               loc_171714
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
MOV             R3, #1
ADD             R2, SP, #0x48+var_44
ADD             R1, R3, #0x188
B               loc_1716F4
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
LDR             R1, =0x18A
MOV             R3, #1
ADD             R2, SP, #0x48+var_44
BL              sub_168114
B               loc_171714
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
LDR             R1, =0x18B
MOV             R3, #1
ADD             R2, SP, #0x48+var_44
BL              sub_168114
LDR             R0, [R6]
LDR             R1, [R0]
LDR             R1, [R1,#0x70]
BLX             R1
LDR             R0, [R5]
LDR             R1, [R0,#0x88]
MOV             R0, R5
BLX             R1
ADD             SP, SP, #0x14
VPOP            {D8-D9}
POP             {R4-R11,PC}
LDR             R0, [R10]
VLDR            S19, [R5,#0x108]
VLDR            S16, [R5,#0x10C]
VLDR            S18, [R5,#0x110]
BL              sub_1E45C8
LDRH            R0, [R0,#0x3C]
CMP             R0, #0
ADDEQ           R0, R5, #0x5400
ADDEQ           R0, R0, #0x9C
BEQ             loc_171798
CMP             R0, #1
ADDEQ           R0, R5, #0x5000
ADDEQ           R0, R0, #0xF90
BEQ             loc_171798
CMP             R0, #2
ADDEQ           R0, R5, #0x7000
ADDEQ           R0, R0, #0x190
BEQ             loc_171798
CMP             R0, #3
ADDEQ           R0, R5, #0xA000
MOVNE           R0, #0
ADDEQ           R0, R0, #0xC60
LDR             R1, [R0]
LDR             R1, [R1,#0x6C]
BLX             R1
VMLA.F32        S16, S0, S17
ADD             R5, R5, #0x23400
ADD             R5, R5, #0x1D4
LDR             R0, [R4]
VLDR            S0, [R5]
VLDR            S2, [R5,#4]
VLDR            S1, [R5,#8]
VSUB.F32        S0, S19, S0
VSUB.F32        S1, S18, S1
VSUB.F32        S2, S16, S2
VSTR            S0, [R0,#0x134]
VSTR            S2, [R0,#0x138]
VSTR            S1, [R0,#0x13C]
ADD             SP, SP, #0x14
VPOP            {D8-D9}
POP             {R4-R11,PC}
DCD off_6D1648
DCD 0x174AC
DCD 0x40490FDB
DCD 0xF0001FFB
DCFS 0.5
DCFS 1.0
DCD 0x20070
DCFS 0.0
DCD 0x20049
DCD 0x18A
DCD 0x18B
ADD             SP, SP, #0x14
MOV             R0, R5
VPOP            {D8-D9}
POP             {R4-R11,LR}
NOP
PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x2400
VPUSH           {D8-D9}
ADD             R0, R0, #0x36C
SUB             SP, SP, #8
LDRB            R0, [R0]
CMP             R0, #0
BNE             loc_171AB8
LDR             R0, =0x276D
LDRB            R0, [R0,R4]
CMP             R0, #0
BNE             loc_171AB8
ADD             R5, R4, #0x400
VLDR            S16, =0.0
VLDR            S0, [R5,#0x84]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_171AB8
LDRH            R0, [R5,#0x68]
CMP             R0, #5
BCS             loc_171AB8
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0x7C]
MOV             R1, SP
BLX             R2
VLDR            S1, [SP,#0x28+var_28]
VLDR            S0, [SP,#0x28+var_24]
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S17, =0.000015259
UXTH            R0, R0
VMOV            S0, R0
VLDR            S18, =360.0
LDR             R1, =0x42340000
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S18
VMOV            R0, S0
CMP             R0, R1
BLE             loc_171900
VLDR            S1, [SP,#0x28+var_28]
VLDR            S0, [SP,#0x28+var_24]
BL              sub_4643FC
ADD             R0, R0, #0x4000
LDR             R1, =0x43070000
UXTH            R0, R0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S18
VMOV            R0, S0
CMP             R1, R0
BGT             loc_17196C
VLDR            S1, [SP,#0x28+var_28]
VLDR            S0, [SP,#0x28+var_24]
BL              sub_4643FC
ADD             R0, R0, #0x4000
LDR             R1, =0x43610000
UXTH            R0, R0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S18
VMOV            R0, S0
CMP             R0, R1
BLE             loc_171968
VLDR            S1, [SP,#0x28+var_28]
VLDR            S0, [SP,#0x28+var_24]
BL              sub_4643FC
ADD             R0, R0, #0x4000
LDR             R1, =0x439D8000
UXTH            R0, R0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S18
VMOV            R0, S0
CMP             R1, R0
BGT             loc_17196C
VSTR            S16, [SP,#0x28+var_28]
VLDR            S0, [SP,#0x28+var_28]
VLDR            S1, =256.0
ADD             R0, R4, #0x400
VCMP.F32        S0, S16
ADD             R0, R0, #0x64 ; 'd'
VMRS            APSR_nzcv, FPSCR
BNE             loc_171A24
LDRH            R1, [R5,#0x68]
CMP             R1, #5; switch 5 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_171990; jumptable 00171990 default case
DCD loc_1719AC; jump table for switch statement
MOV             R6, #3; jumptable 00171990 cases 0,1
B               def_171990; jumptable 00171990 default case
MOV             R6, #4; jumptable 00171990 case 2
B               def_171990; jumptable 00171990 default case
MOV             R6, #5; jumptable 00171990 case 3
B               def_171990; jumptable 00171990 default case
MOV             R6, #6; jumptable 00171990 case 4
LDR             R1, [R4,#0x464]; jumptable 00171990 default case
BIC             R2, R1, #0xF
MOV             R1, R1,LSL#24
ORR             R1, R2, R1,LSR#28
STR             R1, [R0]
VLDR            S0, [R5,#0x70]
LDR             R0, [R4,#0x7FC]
VMUL.F32        S0, S0, S1
ADD             R0, R0, #0x10
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTH            R1, R1
BL              sub_123CE8
LDR             R0, [R4]
MOV             R3, #0
MOV             R2, #1
MOV             R1, R6
LDR             R12, [R0,#0x8C]
MOV             R0, R4
BLX             R12
ADD             SP, SP, #8
VPOP            {D8-D9}
POP             {R4-R6,PC}
VLDR            S2, [R4,#0x124]
VMUL.F32        S2, S0, S2
VCMPE.F32       S2, S16
VMRS            APSR_nzcv, FPSCR
BHI             loc_171AB8
LDRH            R1, [R5,#0x68]
CMP             R1, #5; switch 5 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_171A40; jumptable 00171A40 default case
DCD loc_171A5C; jump table for switch statement
MOV             R6, #2; jumptable 00171A40 cases 0,1
B               def_171A40; jumptable 00171A40 default case
MOV             R6, #4; jumptable 00171A40 case 2
B               def_171A40; jumptable 00171A40 default case
MOV             R6, #5; jumptable 00171A40 case 3
B               def_171A40; jumptable 00171A40 default case
MOV             R6, #6; jumptable 00171A40 case 4
VCMPE.F32       S0, S16; jumptable 00171A40 default case
LDR             R1, [R4,#0x464]
BIC             R1, R1, #0xF
VMRS            APSR_nzcv, FPSCR
ORRGT           R1, R1, #4
ORRLE           R1, R1, #0xC
CMP             R6, #2
STR             R1, [R0]
BNE             loc_1719DC
LDR             R0, [R4,#0x7FC]
MOV             R1, #0x300
ADD             R0, R0, #0x10
BL              sub_123CE8
NOP
NOP
B               loc_1719FC
ADD             SP, SP, #8
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4-R6,LR}
B               sub_174FFC
