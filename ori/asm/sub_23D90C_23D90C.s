PUSH            {R4-R9,LR}
MOV             R5, R0
MOV             R4, R1
VPUSH           {D8-D10}
SUB             SP, SP, #0xD4
VLDR            S17, =10000.0
BL              sub_464100
LDR             R3, [R5,#4]
MOV             R1, R0
ADD             R2, SP, #0x108+var_F8
LDR             R0, [R3,#0x5BC]
LDR             R3, [R3,#0x5CC]
STM             R2, {R0,R3}
ADD             R0, SP, #0x108+var_C8
BL              sub_4633DC
ADD             R2, SP, #0x108+var_C8
MOV             R1, R4
MOV             R0, R2
BL              sub_4646D4
BL              sub_464100
LDR             R3, [R5,#4]
MOV             R1, R0
ADD             R2, SP, #0x108+var_F8
LDR             R0, [R3,#0x5C0]
LDR             R3, [R3,#0x5CC]
STM             R2, {R0,R3}
ADD             R0, SP, #0x108+var_A8
BL              sub_4633DC
ADD             R2, SP, #0x108+var_A8
MOV             R1, R4
MOV             R0, R2
BL              sub_4646D4
BL              sub_464100
MOV             R1, R0
LDR             R0, [R5,#4]
VLDR            S16, =0.0
ADD             R2, SP, #0x108+var_F8
LDR             R0, [R0,#0x5BC]
STR             R0, [SP,#0x108+var_F8]
VSTR            S16, [SP,#0x108+var_F4]
ADD             R0, SP, #0x108+var_88
BL              sub_4633DC
ADD             R2, SP, #0x108+var_88
MOV             R1, R4
MOV             R0, R2
BL              sub_4646D4
BL              sub_464100
MOV             R1, R0
LDR             R0, [R5,#4]
ADD             R2, SP, #0x108+var_F8
LDR             R0, [R0,#0x5C0]
STR             R0, [SP,#0x108+var_F8]
VSTR            S16, [SP,#0x108+var_F4]
ADD             R0, SP, #0x108+var_70
BL              sub_4633DC
ADD             R2, SP, #0x108+var_70
MOV             R1, R4
MOV             R0, R2
BL              sub_4646D4
LDR             R0, [R5,#4]
ADD             R7, R5, #0x800
LDR             R4, [R0,#0x610]
LDR             R0, [R4,#8]
TST             R0, #0x400
BNE             loc_23DAC4
TST             R0, #1
BEQ             loc_23DAC4
LDRB            R0, [R5,#0xAC0]
CMP             R0, #0
LDR             R0, [R4,#8]
BEQ             loc_23DA48
VLDR            S0, [R4,#0xC]
TST             R0, #0x800
VMOVEQ.F32      S3, S16
VMOVNE.F32      S3, S17
VMOV.F32        S2, S0
VLDR            S1, [R4,#0x14]
VLDR            S19, [R4,#0x10]
B               loc_23DA64
VLDR            S0, [R4,#0x2C]
TST             R0, #0x800
VMOVNE.F32      S3, S17
VMOVEQ.F32      S3, S16
VMOV.F32        S2, S0
VLDR            S1, [R4,#0x34]
VLDR            S19, [R4,#0x30]
LDR             R0, [R4]
ADD             R3, SP, #0x108+var_100
VADD.F32        S1, S1, S3
TST             R0, #2
VMOVEQ.F32      S19, S16
VSUB.F32        S3, S2, S0
ADD             R0, SP, #0x108+var_E8
ADD             R2, SP, #0x108+var_E0
ADD             R1, SP, #0x108+var_E8
VSUB.F32        S2, S19, S1
VSTR            S3, [SP,#0x108+var_E0]
VSTR            S2, [SP,#0x108+var_DC]
VSTM            R0, {S0-S1}
MOV             R0, R5
VLDR            S0, [R7,#0x29C]
BL              sub_23D4C0
CMP             R0, #0
BEQ             loc_23DAC4
LDR             R0, [SP,#0x108+var_100]
STR             R0, [R7,#0x29C]
ADD             SP, SP, #0xD4
MOV             R0, #1
VPOP            {D8-D10}
POP             {R4-R9,PC}
LDR             R0, [R4]
TST             R0, #1
ADDEQ           R4, R4, #0x88
BEQ             loc_23DA04
LDR             R8, =off_6D1648
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
MOV             R6, #2
LDR             R1, [R0,#4]
LDRB            R0, [R0,#0x110]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
ADD             R9, R1, R0
CMP             R9, #2
VLDRGT          S17, =0.5
VLDRGT          S18, =-40.744
BLE             loc_23DED4
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
CMP             R1, R6
BLE             loc_23DB48
LDR             R0, [R0,#4]
ADD             R0, R0, R6,LSL#2
ADD             R0, R0, #0x14000
LDR             R4, [R0,#0x184]
B               loc_23DB60
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R2, [R1,#0x28D]
SUB             R1, R6, R2
ADD             R0, R0, R1,LSL#2
LDR             R4, [R0,#0x10]
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #7; switch 7 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_23DB74; jumptable 0023DB74 default case, case 5
DCD loc_23DEC8; jump table for switch statement
LDR             R0, [R4]; jumptable 0023DB74 default case, case 5
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
LDR             R0, [R5,#4]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDR             R0, [R5,#4]
LDRB            R1, [R4,#0xDC]
LDRB            R0, [R0,#0xDC]
CMP             R0, R1
BEQ             loc_23DEC8; jumptable 0023DB74 cases 0-4,6
LDRB            R0, [R4,#0xDE]
TST             R0, #1
BEQ             loc_23DEC8; jumptable 0023DB74 cases 0-4,6
TST             R0, #4
BNE             loc_23DEC8; jumptable 0023DB74 cases 0-4,6
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #8
BNE             loc_23DD54
LDRB            R0, [R4,#0xAAC]
CMP             R0, #9
CMPNE           R0, #0xA
BNE             loc_23DD54
LDR             R0, [R4,#0xAA8]
LDRH            R2, [R0,#0xE]
LDRH            R1, [R0,#0x10]
RSB             R2, R2, #0
VMOV            S0, R2
VMOV            S1, R1
ADD             R1, SP, #0x108+var_100
VCVT.F32.S32    S0, S0
VCVT.F32.U32    S1, S1
VMUL.F32        S0, S0, S17
VSTM            R1, {S0-S1}
LDRH            R1, [R0,#0xE]
LDRH            R0, [R0,#0x10]
VLDR            S0, [R4,#0xF8]
VMOV            S1, R1
ADD             R1, SP, #0x108+var_B0
VMUL.F32        S0, S0, S18
VCVT.F32.U32    S2, S1
VMOV            S1, R0
ADD             R0, SP, #0x108+var_AC
VCVT.F32.U32    S20, S1
VMUL.F32        S19, S2, S17
BL              sub_462B20
ADD             R0, SP, #0x108+var_B0
VLDM            R0, {S0-S1}
ADD             R0, SP, #0x108+var_100
VLDM            R0, {S3-S4}
VMOV.F32        S5, S0
VNEG.F32        S2, S1
VMUL.F32        S5, S5, S3
VMUL.F32        S6, S2, S3
VMOV.F32        S3, S0
VMUL.F32        S2, S2, S19
VMLA.F32        S5, S1, S4
VMLA.F32        S6, S3, S4
VMOV.F32        S3, S16
VMOV.F32        S4, S16
VMLA.F32        S2, S0, S20
VADD.F32        S3, S5, S3
VMOV.F32        S5, S0
VADD.F32        S4, S6, S4
VMOV.F32        S0, S16
VMUL.F32        S5, S5, S19
VSTM            R0, {S3-S4}
ADD             R0, R4, #0x108
VMLA.F32        S5, S1, S20
VMOV.F32        S1, S16
VADD.F32        S1, S2, S1
VLDR            S2, [R4,#0x108]
VADD.F32        S0, S5, S0
VLDR            S5, [R4,#0x10C]
VADD.F32        S3, S3, S2
VADD.F32        S2, S4, S5
VSTR            S3, [SP,#0x108+var_100]
VSTR            S2, [SP,#0x108+var_FC]
VLDM            R0, {S4-S5}
VADD.F32        S0, S0, S4
VADD.F32        S1, S1, S5
VSUB.F32        S0, S0, S3
VSUB.F32        S1, S1, S2
B               loc_23DD10
DCFS 10000.0
DCFS 0.0
DCD off_6D1648
DCFS 0.5
DCFS -40.744
ADD             R0, SP, #0x108+var_48
ADD             R3, SP, #0x108+var_8C
VSTM            R0, {S0-S1}
ADD             R2, SP, #0x108+var_48
VLDR            S0, [R7,#0x29C]
ADD             R1, SP, #0x108+var_100
MOV             R0, R5
BL              sub_23D4C0
CMP             R0, #0
NOP
BEQ             loc_23DD54
LDR             R0, [SP,#0x108+var_8C]
STR             R0, [R7,#0x29C]
ADD             SP, SP, #0xD4
MOV             R0, #1
VPOP            {D8-D10}
POP             {R4-R9,PC}
LDR             R0, [R4,#0x648]
TST             R0, #1
BEQ             loc_23DEC8; jumptable 0023DB74 cases 0-4,6
LDR             R0, [R4,#0x640]
TST             R0, #3
BEQ             loc_23DEC8; jumptable 0023DB74 cases 0-4,6
VLDR            S1, [R4,#0x108]
VLDR            S0, [R4,#0x10C]
LDRB            R0, [R5,#0xAC0]
VMOV.F32        S3, S1
VMOV.F32        S2, S0
CMP             R0, #0
ADD             R0, R4, #0x400
BEQ             loc_23DE00
VLDR            S6, [R0,#0x224]
VLDR            S5, [R0,#0x234]
VADD.F32        S1, S6, S1
VADD.F32        S0, S5, S0
VADD.F32        S3, S6, S3
ADD             R3, SP, #0x108+var_F0
ADD             R2, SP, #0x108+var_50
ADD             R1, SP, #0x108+var_58
MOV             R0, R5
VSTR            S1, [SP,#0x108+var_58]
VSTR            S0, [SP,#0x108+var_54]
VSUB.F32        S2, S2, S0
VSUB.F32        S3, S3, S1
VSTR            S3, [SP,#0x108+var_50]
VSTR            S2, [SP,#0x108+var_4C]
VLDR            S0, [R7,#0x29C]
BL              sub_23D4C0
CMP             R0, #0
NOP
BEQ             loc_23DEC8; jumptable 0023DB74 cases 0-4,6
CMP             R4, #0
BEQ             loc_23DEB0
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #8
BEQ             loc_23DE18
B               loc_23DEB0
VLDR            S6, [R0,#0x228]
VLDR            S5, [R0,#0x234]
VADD.F32        S1, S6, S1
VADD.F32        S0, S5, S0
VADD.F32        S3, S6, S3
B               loc_23DDA0
LDRB            R0, [R4,#0xAAC]
CMP             R0, #0x11
BNE             loc_23DEB0
LDR             R0, [R5,#4]
LDR             R1, [R0,#0x750]
CMP             R1, #0
BEQ             loc_23DE78
LDR             R1, [R4,#0x4EC]
TST             R1, #0xE0
BNE             loc_23DE4C
LDR             R2, [R0,#0x754]
CMP             R2, R4
BNE             loc_23DE78
AND             R1, R1, #0xE0
CMP             R1, #0x80
BNE             loc_23DE9C
LDR             R1, [R0,#0x754]
CMP             R1, R4
BNE             loc_23DE78
ADD             R1, R0, #0x400
LDRH            R2, [R1,#0x6C]
LDRH            R1, [R1,#0x6E]
CMP             R2, R1
BEQ             loc_23DE9C
STR             R4, [R0,#0x750]
LDR             R3, [R0,#0x658]
ADD             R1, R0, #0x400
ADD             R1, R1, #0x248
ORR             R3, R3, #0xFC0
STR             R3, [R0,#0x658]
LDR             R0, [R0,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R1]
LDR             R0, [R8]
BL              sub_1E45C8
NOP
NOP
BL              sub_2D181C
LDR             R0, [SP,#0x108+var_F0]
STR             R0, [R7,#0x29C]
ADD             SP, SP, #0xD4
MOV             R0, #1
VPOP            {D8-D10}
POP             {R4-R9,PC}
ADD             R6, R6, #1; jumptable 0023DB74 cases 0-4,6
CMP             R6, R9
BLT             loc_23DB10
ADD             SP, SP, #0xD4
MOV             R0, #0
VPOP            {D8-D10}
POP             {R4-R9,PC}
