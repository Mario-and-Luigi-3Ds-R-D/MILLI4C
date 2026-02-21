PUSH            {R4-R9,LR}
MOV             R5, R0
MOV             R4, R1
VPUSH           {D8}
SUB             SP, SP, #0x9C
VLDR            S17, =10000.0
BL              sub_464100
LDR             R1, [R5,#4]
MOV             R3, R0
ADD             R2, SP, #0xC0+var_A8
LDR             R0, [R1,#0x5BC]
LDR             R1, [R1,#0x5CC]
STRD            R0, R1, [SP,#0xC0+var_A8]
MOV             R1, R3
ADD             R0, SP, #0xC0+var_A0
BL              sub_4633DC
ADD             R2, SP, #0xC0+var_A0
MOV             R1, R4
MOV             R0, R2
BL              sub_4646D4
BL              sub_464100
MOV             R3, R0
LDR             R0, [R5,#4]
ADD             R2, SP, #0xC0+var_A8
ADD             R1, R0, #0x400
LDR             R0, [R0,#0x5C0]
LDR             R1, [R1,#0x1CC]
STRD            R0, R1, [SP,#0xC0+var_A8]
MOV             R1, R3
ADD             R0, SP, #0xC0+var_88
BL              sub_4633DC
ADD             R2, SP, #0xC0+var_88
MOV             R1, R4
MOV             R0, R2
BL              sub_4646D4
BL              sub_464100
MOV             R1, R0
LDR             R0, [R5,#4]
VLDR            S16, =0.0
ADD             R2, SP, #0xC0+var_A8
LDR             R0, [R0,#0x5BC]
STR             R0, [SP,#0xC0+var_A8]
VSTR            S16, [SP,#0xC0+var_A4]
ADD             R0, SP, #0xC0+var_70
BL              sub_4633DC
ADD             R2, SP, #0xC0+var_70
MOV             R1, R4
MOV             R0, R2
BL              sub_4646D4
BL              sub_464100
MOV             R1, R0
LDR             R0, [R5,#4]
ADD             R2, SP, #0xC0+var_A8
LDR             R0, [R0,#0x5C0]
STR             R0, [SP,#0xC0+var_A8]
VSTR            S16, [SP,#0xC0+var_A4]
ADD             R0, SP, #0xC0+var_58
BL              sub_4633DC
ADD             R2, SP, #0xC0+var_58
MOV             R1, R4
MOV             R0, R2
BL              sub_4646D4
LDR             R0, [R5,#4]
ADD             R7, R5, #0x800
LDR             R4, [R0,#0x610]
LDR             R1, [R4,#8]
TST             R1, #0x400
BNE             loc_23EC30
TST             R1, #1
BEQ             loc_23EC30
TST             R1, #0x800
VMOVNE.F32      S2, S17
VMOVEQ.F32      S2, S16
VLDR            S0, [R4,#0x14]
VLDR            S1, [R4,#0xC]
ADD             R2, SP, #0xC0+var_B0
VSTR            S1, [SP,#0xC0+var_40]
ADD             R3, SP, #0xC0+var_B8
VADD.F32        S0, S0, S2
VSTR            S0, [SP,#0xC0+var_3C]
LDR             R0, [R4,#8]
VLDR            S0, [R4,#0x34]
VLDR            S1, [R4,#0x2C]
TST             R0, #0x800
VMOVNE.F32      S2, S17
VMOVEQ.F32      S2, S16
VSTR            S1, [SP,#0xC0+var_38]
VADD.F32        S0, S0, S2
VSTR            S0, [SP,#0xC0+var_34]
LDRB            R0, [R5,#0xAC0]
CMP             R0, #0
ADDEQ           R0, SP, #0xC0+var_38
ADDNE           R0, SP, #0xC0+var_40
ADDEQ           R1, SP, #0xC0+var_40
ADDNE           R1, SP, #0xC0+var_38
VLDM            R0, {S0-S1}
MOV             R0, R5
VLDM            R1, {S2-S3}
VSUB.F32        S0, S0, S2
VSUB.F32        S1, S1, S3
VSTM            R2, {S0-S1}
VLDR            S0, [R7,#0x29C]
BL              sub_23D4C0
CMP             R0, #0
NOP
BEQ             loc_23EC30
LDR             R0, [SP,#0xC0+var_B8]
STR             R0, [R7,#0x29C]
ADD             SP, SP, #0x9C
MOV             R0, #1
VPOP            {D8}
POP             {R4-R9,PC}
LDR             R0, [R4]
TST             R0, #1
ADDEQ           R4, R4, #0x88
BEQ             loc_23EB74
LDR             R9, =off_6D1648
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
MOV             R6, #2
LDR             R1, [R0,#4]
LDRB            R0, [R0,#0x110]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
ADD             R8, R1, R0
CMP             R8, #2
BLE             loc_23EED8
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
CMP             R1, R6
BLE             loc_23ECAC
LDR             R0, [R0,#4]
ADD             R0, R0, R6,LSL#2
ADD             R0, R0, #0x14000
LDR             R4, [R0,#0x184]
B               loc_23ECC4
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
B               def_23ECD8; jumptable 0023ECD8 default case, case 5
DCD loc_23EECC; jump table for switch statement
LDR             R0, [R4]; jumptable 0023ECD8 default case, case 5
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
LDR             R0, [R5,#4]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDR             R1, [R5,#4]
LDRB            R0, [R4,#0xDC]
LDRB            R1, [R1,#0xDC]
CMP             R1, R0
BEQ             loc_23EECC; jumptable 0023ECD8 cases 0-4,6
LDRB            R0, [R4,#0xDE]
TST             R0, #1
BEQ             loc_23EECC; jumptable 0023ECD8 cases 0-4,6
TST             R0, #4
BNE             loc_23EECC; jumptable 0023ECD8 cases 0-4,6
LDR             R0, [R4,#0x648]
TST             R0, #1
BEQ             loc_23EECC; jumptable 0023ECD8 cases 0-4,6
LDR             R0, [R4,#0x640]
TST             R0, #3
BEQ             loc_23EECC; jumptable 0023ECD8 cases 0-4,6
ADD             R0, R4, #0x400
VLDR            S3, [R4,#0x108]
VLDR            S1, [R0,#0x224]
VLDR            S2, [R4,#0x10C]
VLDR            S0, [R0,#0x234]
VADD.F32        S1, S1, S3
ADD             R2, SP, #0xC0+var_40
VADD.F32        S0, S0, S2
ADD             R3, SP, #0xC0+var_B4
VSTR            S1, [SP,#0xC0+var_38]
VSTR            S0, [SP,#0xC0+var_34]
VLDR            S1, [R0,#0x228]
VLDR            S0, [R0,#0x234]
ADD             R0, R4, #0x108
VLDM            R0, {S2-S3}
VADD.F32        S1, S1, S2
VADD.F32        S0, S0, S3
VSTR            S1, [SP,#0xC0+var_30]
VSTR            S0, [SP,#0xC0+var_2C]
LDRB            R0, [R5,#0xAC0]
CMP             R0, #0
ADDEQ           R0, SP, #0xC0+var_30
ADDNE           R0, SP, #0xC0+var_38
ADDEQ           R1, SP, #0xC0+var_38
ADDNE           R1, SP, #0xC0+var_30
VLDM            R0, {S0-S1}
MOV             R0, R5
VLDM            R1, {S2-S3}
VSUB.F32        S0, S0, S2
VSUB.F32        S1, S1, S3
VSTM            R2, {S0-S1}
VLDR            S0, [R7,#0x29C]
BL              sub_23D4C0
CMP             R0, #0
NOP
BEQ             loc_23EECC; jumptable 0023ECD8 cases 0-4,6
CMP             R4, #0
BEQ             loc_23EEB4
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #8
BNE             loc_23EEB4
LDRB            R0, [R4,#0xAAC]
CMP             R0, #0x11
BNE             loc_23EEB4
LDR             R0, [R5,#4]
B               loc_23EE2C
DCFS 10000.0
DCFS 0.0
DCD off_6D1648
LDR             R1, [R0,#0x750]
CMP             R1, #0
BEQ             loc_23EE7C
LDR             R1, [R4,#0x4EC]
TST             R1, #0xE0
BNE             loc_23EE50
LDR             R2, [R0,#0x754]
CMP             R2, R4
BNE             loc_23EE7C
AND             R1, R1, #0xE0
CMP             R1, #0x80
BNE             loc_23EEA0
LDR             R1, [R0,#0x754]
CMP             R1, R4
BNE             loc_23EE7C
ADD             R1, R0, #0x400
LDRH            R2, [R1,#0x6C]
LDRH            R1, [R1,#0x6E]
CMP             R2, R1
BEQ             loc_23EEA0
STR             R4, [R0,#0x750]
LDR             R3, [R0,#0x658]
ADD             R1, R0, #0x400
ADD             R1, R1, #0x248
ORR             R3, R3, #0xFC0
STR             R3, [R0,#0x658]
LDR             R0, [R0,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R1]
LDR             R0, [R9]
BL              sub_1E45C8
NOP
NOP
BL              sub_2D181C
LDR             R0, [SP,#0xC0+var_B4]
STR             R0, [R7,#0x29C]
ADD             SP, SP, #0x9C
MOV             R0, #1
VPOP            {D8}
POP             {R4-R9,PC}
ADD             R6, R6, #1; jumptable 0023ECD8 cases 0-4,6
CMP             R6, R8
BLT             loc_23EC74
ADD             SP, SP, #0x9C
MOV             R0, #0
VPOP            {D8}
POP             {R4-R9,PC}
