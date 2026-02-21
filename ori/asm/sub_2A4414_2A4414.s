PUSH            {R3-R5,LR}
CMP             R1, #0
BEQ             loc_2A442C
POP             {R3-R5,LR}
AND             R1, R1, #0xFF
B               loc_2A464C
MOV             R4, R0
MOV             R0, #0xFF
LDRB            R1, [R4,#0x104]
CMP             R1, #0
BEQ             locret_2A44AC
MOV             R1, #0x108
STRH            R0, [R1,R4]
LDRB            R0, [R4,#0x104]
CMP             R0, #3
BEQ             locret_2A44AC
ADD             R0, R4, #0x33C
VLDR            S0, =8.0
VLDM            R0, {S1-S2}
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_2A448C
LDRB            R0, [R4,#0x317]
VLDR            S3, =255.0
VLDR            S2, =0.0039216
VMOV            S1, R0
VCVT.F32.U32    S1, S1
VSUB.F32        S1, S3, S1
VMUL.F32        S1, S1, S2
VMUL.F32        S0, S1, S0
MOV             R0, #0xFFFFFF00
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x10+var_10]
ADD             R0, R4, #0x314
BL              sub_4E665C
MOV             R0, #3
STRB            R0, [R4,#0x104]
POP             {R3-R5,PC}
DCFS 8.0
DCFS 255.0
DCFS 0.0039216
PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =dword_6E1330
MOV             R5, #0
LDR             R0, [R0]
TST             R0, #1
BNE             loc_2A4504
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_2A4504
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
STRB            R5, [R4,#0x34C]
LDM             R0, {R1,R2}
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [R4,#0x358]
ADD             R4, R4, #0x350
STM             R4, {R1,R2}
POP             {R4-R6,PC}
DCD dword_6E1330
DCFS 0.0
DCD flt_711FE4
MOV             R3, #1
MOV             R2, R3
B               sub_14B490
PUSH            {R4-R11,LR}
SUB             SP, SP, #0x14
MOV             R7, R0
STR             R1, [R0,#0x100]
LDR             R0, =off_6CE970
LDR             R1, =0xC00F
LDR             R0, [R0]
BL              sub_52FACC
MOV             R5, #0
MOV             R6, R0
MOV             R9, R5
MOV             R11, #1
MOV             R10, #5
MOV             R0, R6
MOV             R1, #1
BL              sub_5F0474
MOV             R8, R0
MOV             R0, R6
ADD             R0, R0, #0xA0
STR             R0, [SP,#0xC]
MOV             R0, R6
MOV             R1, #0
BL              sub_5F0474
MOV             R1, R0
ADD             R0, R5, R5,LSL#6
MOV             R2, #0x100
ADD             R4, R7, R0,LSL#2
STR             R2, [SP,#8]
LDR             R2, [SP,#0xC]
ADD             R0, R4, #0x10C
MOV             R3, R8
STR             R9, [SP,#0x38+var_38]
STR             R9, [SP,#4]
BL              sub_1137FC
STRB            R11, [R4,#0x174]
STRB            R10, [R4,#0x176]
STRB            R9, [R4,#0x175]
MOV             R2, #0xFF
STRB            R11, [R4,#0x179]
STRB            R2, [R4,#0x17A]
MOV             R3, #3
ADD             R5, R5, #1
STRB            R9, [R4,#0x17D]
CMP             R5, #2
STRB            R3, [R4,#0x17B]
BLT             loc_2A4570
MOV             R0, #0xFFFFFF00
ADD             R4, R7, #0x314
REV             R5, R0
MOV             R0, R4
BL              sub_4E63E0
STR             R5, [R4,#4]
STR             R5, [R4]
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
DCD 0xC00F
DCD off_6CE970
PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R4, #0
ADD             R0, R4, R4,LSL#6
ADD             R0, R5, R0,LSL#2
ADD             R0, R0, #0x10C
BL              sub_592EDC
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_2A462C
POP             {R4-R6,PC}
PUSH            {R4-R7,LR}
MOV             R4, R0
ADD             R5, R4, #0x100
VPUSH           {D8-D9}
SUB             SP, SP, #0xAC
LDRB            R0, [R0,#0x104]
VLDR            S16, =8.0
VLDR            S17, =0.0039216
CMP             R0, #1
CMPNE           R0, #2
BEQ             loc_2A4684
CMP             R0, #3
BEQ             loc_2A4704
B               loc_2A4714
LDRH            R2, [R5,#6]
CMP             R2, R1
CMPNE           R0, #0
BEQ             def_2A4728; jumptable 002A4728 default case, case 0
STRH            R1, [R5,#8]
LDRB            R0, [R4,#0x104]
CMP             R0, #3
BEQ             def_2A4728; jumptable 002A4728 default case, case 0
ADD             R0, R4, #0x33C
VMOV.F32        S0, S16
VLDM            R0, {S1-S2}
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_2A46D8
LDRB            R0, [R4,#0x317]
VLDR            S2, =255.0
VMOV            S1, R0
VCVT.F32.U32    S1, S1
VSUB.F32        S1, S2, S1
VMUL.F32        S1, S1, S17
VMUL.F32        S0, S1, S0
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0xD0+var_C8
REV             R0, R0
STR             R0, [SP,#0xD0+var_C8]
ADD             R0, R4, #0x314
BL              sub_4E665C
MOV             R0, #3
STRB            R0, [R4,#0x104]
ADD             SP, SP, #0xAC; jumptable 002A4728 default case, case 0
VPOP            {D8-D9}
POP             {R4-R7,PC}
LDRH            R0, [R5,#6]
CMP             R0, R1
STRHNE          R1, [R5,#8]
BNE             def_2A4728; jumptable 002A4728 default case, case 0
MOV             R0, #0xFF
STRH            R1, [R5,#6]
CMP             R1, #6; switch 6 cases
MOV             R6, #0xFFFFFFFF
STRH            R0, [R5,#8]
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_2A4728; jumptable 002A4728 default case, case 0
DCD def_2A4728; jump table for switch statement
CMP             R1, #3; jumptable 002A4728 cases 1,3,5
LDR             R0, =unk_656592
MOVEQ           R6, #4
B               loc_2A4764
LDR             R0, =unk_656594; jumptable 002A4728 cases 2,4
CMP             R1, #4
MOVEQ           R6, #6
LDR             R1, [R4,#0x100]
MOV             R3, #0x100
MOV             R2, #0
ADD             R1, R1, #0x400
LDRSB           R1, [R1,#0x95]
LDRB            R1, [R0,R1]
ADD             R0, R4, #0x10C
BL              sub_11DCDC
LDR             R1, =off_6CE970
LDR             R0, =dword_119814
LDR             R1, [R1]
LDR             R1, [R1,R0]; dword_119814
ADD             R0, R4, #0x11C
BL              sub_485780
CMP             R6, #0
NOP
BLT             loc_2A47BC
AND             R1, R6, #0xFF
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R4, #0x210
BL              sub_11DCDC
LDRB            R0, [R4,#0x317]
ADD             R1, SP, #0xD0+var_28
RSB             R0, R0, #0xFF
VMOV            S0, R0
MOV             R0, #0xFFFFFFFF
REV             R0, R0
STR             R0, [SP,#0xD0+var_28]
VCVT.F32.U32    S0, S0
ADD             R0, R4, #0x314
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S16
BL              sub_4E665C
LDR             R1, [R4,#0xC]
MOV             R0, #1
STRB            R0, [R4,#0x104]
CMP             R1, #0
BNE             loc_2A480C
MOV             R1, #0
MOV             R0, R4
BL              sub_14C3E8
LDRB            R0, [R4,#0x34C]
CMP             R0, #0
BEQ             loc_2A4828
CMP             R0, #1
BEQ             loc_2A4A24
CMP             R0, #2
BNE             def_2A4728; jumptable 002A4728 default case, case 0
MOV             R0, #0
BL              sub_58F1A0
MOV             R1, R0
ADD             R0, SP, #0xD0+var_CC
BL              sub_21445C
LDR             R0, [R4,#0x100]
MOV             R2, #0
LDR             R0, [R0,#0x18]
LDR             R1, [R0]
LDR             R3, [R1,#0x24]
ADD             R1, SP, #0xD0+var_50
BLX             R3
LDRB            R0, [R4,#0x34C]
VLDR            S19, =0.0
ADD             R7, SP, #0xD0+var_CC
CMP             R0, #2
ADDEQ           R0, R4, #0x350
ADD             R6, SP, #0xD0+var_5C
VLDMEQ          R0, {S16-S18}
BEQ             loc_2A48EC
LDRH            R0, [R5,#6]
CMP             R0, #6; switch 6 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_2A4880; jumptable 002A4880 default case, case 0
DCD def_2A4880; jump table for switch statement
LDR             R0, [R4,#0x100]; jumptable 002A4880 cases 1,2,5
LDR             R1, =unk_6E3318
ADD             R0, R0, #0x400
LDRSB           R0, [R0,#0x95]
ADD             R0, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#2
B               loc_2A48C0
LDR             R0, =unk_6E3330; jumptable 002A4880 cases 3,4
VLDM            R0, {S16-S18}
ADD             R3, R7, #0x30 ; '0'; jumptable 002A4880 default case, case 0
MOV             R2, R7
ADD             R1, SP, #0xD0+var_50
ADD             R0, SP, #0xD0+var_38
STR             R6, [SP,#0xD0+var_D0]
BL              sub_47EB04
VLDR            S0, [SP,#0xD0+var_38]
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
VNEGGT.F32      S16, S16
ADD             R0, SP, #0xD0+var_CC
VLDR            S5, [SP,#0xD0+var_BC]
ADD             R1, SP, #0xD0+var_50
VLDM            R0, {S0-S2}
ADD             R0, SP, #0xD0+var_B8
VMUL.F32        S5, S5, S17
VLDM            R0, {S3-S4}
VMUL.F32        S0, S0, S16
VMUL.F32        S1, S1, S16
VMUL.F32        S2, S2, S16
VMUL.F32        S3, S3, S17
VMUL.F32        S4, S4, S17
ADD             R3, R7, #0x30 ; '0'
ADD             R2, SP, #0xD0+var_CC
MOV             R0, R1
VADD.F32        S0, S0, S5
VLDR            S5, [SP,#0xD0+var_A8]
VADD.F32        S3, S1, S3
VLDR            S1, [SP,#0xD0+var_AC]
VMUL.F32        S5, S5, S18
VADD.F32        S2, S2, S4
VMUL.F32        S1, S1, S18
VLDR            S4, [SP,#0xD0+var_A4]
VMUL.F32        S4, S4, S18
VADD.F32        S1, S0, S1
VADD.F32        S0, S3, S5
VLDR            S3, [SP,#0xD0+var_50]
VADD.F32        S2, S2, S4
VADD.F32        S1, S3, S1
VSTR            S1, [SP,#0xD0+var_50]
VLDR            S1, [SP,#0xD0+var_4C]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0xD0+var_4C]
VLDR            S0, [SP,#0xD0+var_48]
VADD.F32        S0, S0, S2
VSTR            S0, [SP,#0xD0+var_48]
STR             R6, [SP,#0xD0+var_D0]
BL              sub_47EB04
VLDR            S2, =0.5
VLDR            S3, [SP,#0xD0+var_50]
VLDR            S1, =-0.5
VMOV.F32        S0, S2
VCMPE.F32       S3, S19
ADD             R1, SP, #0xD0+var_50
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S1
VADD.F32        S0, S3, S0
VCVT.S32.F32    S0, S0
VCVT.F32.S32    S0, S0
VSTR            S0, [SP,#0xD0+var_50]
VLDR            S3, [SP,#0xD0+var_4C]
VMOV.F32        S0, S2
VCMPE.F32       S3, S19
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S1
VADD.F32        S0, S3, S0
VCVT.S32.F32    S0, S0
VCVT.F32.S32    S0, S0
VSTR            S0, [SP,#0xD0+var_4C]
LDR             R0, [R4]
LDR             R2, [R0,#0x20]
MOV             R0, R4
BLX             R2
ADD             SP, SP, #0xAC
VPOP            {D8-D9}
POP             {R4-R7,PC}
DCFS 8.0
DCFS 0.0039216
DCFS 255.0
DCD unk_656592
DCD unk_656594
DCD dword_119814
DCD off_6CE970
DCFS 0.0
DCD unk_6E3318
DCD unk_6E3330
DCFS 0.5
DCFS -0.5
LDR             R0, [R4]
ADD             R1, R4, #0x350
LDR             R2, [R0,#0x20]
MOV             R0, R4
BLX             R2
ADD             SP, SP, #0xAC
VPOP            {D8-D9}
POP             {R4-R7,PC}
