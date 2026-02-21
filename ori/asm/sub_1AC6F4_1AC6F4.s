PUSH            {R4-R11,LR}
MOV             R8, R0
VPUSH           {D8}
SUB             SP, SP, #0x9C
VLDR            S16, =0.0
ADD             R1, SP, #0xC8+var_80
ADD             R2, SP, #0xC8+var_94
ADD             R5, SP, #0xC8+var_48
ADD             R4, SP, #0xC8+var_74
BL              sub_1B1B9C
MOV             R2, R4
MOV             R1, R5
MOV             R0, R8
BL              sub_1AD930
VLDR            S0, [SP,#0xC8+var_94]
VLDR            S1, =50.0
MOV             R5, #0
VLDR            S17, =100000.0
VADD.F32        S0, S0, S1
MOV             R6, R5
ADD             R9, SP, #0xC8+var_88
ADD             R10, SP, #0xC8+var_70
ADD             R11, SP, #0xC8+var_A0
ADD             R7, R8, #0x3800
VSTR            S0, [SP,#0xC8+var_94]
VLDR            S2, [SP,#0xC8+var_80]
VLDR            S3, [SP,#0xC8+var_74]
VLDR            S1, [SP,#0xC8+var_7C]
VMLA.F32        S2, S0, S3
VSTR            S2, [SP,#0xC8+var_B0]
VLDR            S2, [SP,#0xC8+var_48]
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0xC8+var_AC]
LDR             R0, [R8,#4]
LDR             R4, [R0,#0x610]
LDR             R0, [R4]
TST             R0, #2
BNE             loc_1AC798
CMP             R5, #0
MOVEQ           R5, R4
MOV             R6, R4
LDR             R0, [R4,#8]
TST             R0, #0x400
BNE             loc_1AC940
TST             R0, #1
BEQ             loc_1AC940
LDRD            R0, R1, [SP,#0xC8+var_B0]
ADD             R2, R4, #0xC
ADD             R3, SP, #0xC8+var_88
STRD            R0, R1, [SP,#0xC8+var_90]
VLDR            S0, [SP,#0xC8+var_7C]
LDR             R0, [SP,#0xC8+var_80]
ADD             R12, SP, #0xC8+var_70
VADD.F32        S0, S0, S16
STR             R0, [SP,#0xC8+var_68]
VSTR            S0, [SP,#0xC8+var_64]
LDR             R0, [R4,#8]
TST             R0, #0x800
VMOVNE.F32      S0, S17
LDR             R0, [R4,#0xC]
VLDREQ          S0, [R4,#0x14]
STR             R0, [SP,#0xC8+var_60]
VSTR            S0, [SP,#0xC8+var_5C]
LDR             R1, [R4,#8]
LDR             R0, [R4,#0x2C]
TST             R1, #0x800
VMOVNE.F32      S0, S17
VLDREQ          S0, [R4,#0x34]
STR             R0, [SP,#0xC8+var_58]
ADD             R1, SP, #0xC8+var_40
VSTR            S0, [SP,#0xC8+var_54]
LDM             R2, {R0,R2}
VMOV.F32        S0, S16
STM             R3, {R0,R2}
ADD             R2, R4, #0x2C ; ','
ADD             R3, SP, #0xC8+var_58
LDM             R2, {R0,R2}
STR             R1, [SP,#0xC8+var_BC]
ADD             R1, SP, #0xC8+var_68
STM             R12, {R0,R2}
ADD             R2, SP, #0xC8+var_60
ADD             R0, SP, #0xC8+var_90
STMEA           SP, {R9-R11}
BL              sub_45A300
CMP             R0, #0
NOP
BEQ             loc_1AC88C
ADD             R0, SP, #0xC8+var_A0
VLDR            S3, [SP,#0xC8+var_90]
VLDR            S0, [SP,#0xC8+var_8C]
VLDM            R0, {S1-S2}
MOV             R0, #1
VSUB.F32        S1, S1, S3
VSUB.F32        S0, S2, S0
VMUL.F32        S1, S1, S1
VMLA.F32        S1, S0, S0
VSQRT.F32       S0, S1
VNEG.F32        S0, S0
VSTR            S0, [R7,#0x19C]
ADD             SP, SP, #0x9C
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R0, [R4]
TST             R0, #1
BEQ             loc_1AC940
VLDR            S0, [SP,#0xC8+var_B0]
VLDR            S2, [R5,#0x78]
VLDR            S1, [R6,#0x7C]
VSUB.F32        S3, S0, S16
VADD.F32        S0, S0, S16
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
VCMPECS.F32     S1, S0
VMRSCS          APSR_nzcv, FPSCR
MOVCC           R0, #1
BCC             loc_1AC880
LDR             R9, =off_6D1648
MOV             R5, #2
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
LDRB            R0, [R0,#0x110]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
ADD             R6, R1, R0
CMP             R6, #2
BLE             loc_1ACEF8
ADD             R0, R8, #0x3800
VLDR            S17, =1.0
ADD             R0, R0, #0x1A4
STR             R0, [SP,#0xC8+var_4C]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
CMP             R1, R5
BLE             loc_1AC948
LDR             R0, [R0,#4]
ADD             R0, R0, R5,LSL#2
ADD             R0, R0, #0x14000
LDR             R4, [R0,#0x184]
B               loc_1AC960
ADD             R4, R4, #0x88
B               loc_1AC780
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R2, [R1,#0x28D]
SUB             R1, R5, R2
ADD             R0, R0, R1,LSL#2
LDR             R4, [R0,#0x10]
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #4
BLS             loc_1ACEE8
LDRB            R0, [R4,#0xDE]
TST             R0, #1
BEQ             loc_1ACEE8
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #8
BNE             loc_1ACA60
LDRB            R0, [R4,#0xAAC]
CMP             R0, #3
CMPNE           R0, #0
BNE             loc_1ACA60
ADD             R10, R4, #0x400
MOV             R11, R4
LDRH            R1, [R10,#0xB6]
MOV             R0, R1,LSL#30
MOV             R1, R1,LSL#29
MOV             R0, R0,LSR#31
MOV             R1, R1,LSR#31
STR             R0, [SP,#0xC8+var_9C]
STR             R1, [SP,#0xC8+var_C0]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x13800
LDR             R0, [R11]
ADD             R1, R1, #0x3A4
LDR             R2, [R0,#0x74]
MOV             R0, R11
BLX             R2
LDR             R0, [SP,#0xC8+var_9C]
LDRH            R12, [R10,#0xB6]
LDR             R1, [SP,#0xC8+var_C0]
MOV             R2, #2
AND             R0, R2, R0,LSL#1
MOV             R3, #4
BIC             R2, R12, #2
AND             R1, R3, R1,LSL#2
ORR             R0, R0, R2
MOV             R3, R12,LSL#30
BIC             R0, R0, #4
ORR             R0, R0, R1
MOVS            R2, R3,LSR#31
STRH            R0, [R10,#0xB6]
BNE             loc_1ACEE8
LDR             R0, [SP,#0xC8+var_4C]
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_1ACEE8
LDRB            R1, [R0,#0xDC]
LDRB            R0, [R4,#0xDC]
CMP             R1, R0
BNE             loc_1ACEE8
LDRB            R0, [R4,#0xAAC]
CMP             R0, #0
BEQ             loc_1ACAA4
CMP             R0, #3
BEQ             loc_1ACBB0
LDRB            R0, [R4,#0x648]
CMP             R0, #0
BEQ             loc_1ACDA0
LDR             R0, [R4,#0x648]
TST             R0, #1
BEQ             loc_1ACDA0
LDR             R0, [R4,#0x640]
TST             R0, #7
BEQ             loc_1ACDA0
TST             R0, #3
BEQ             loc_1ACC3C
B               loc_1ACC44
DCFS 0.0
DCFS 50.0
DCFS 100000.0
DCD off_6D1648
DCFS 1.0
ADD             R0, SP, #0xC8+var_B0
ADD             LR, SP, #0xC8+var_A0
LDM             R0, {R11,R12}
ADD             R3, SP, #0xC8+var_58
ADD             R0, SP, #0xC8+var_38
ADD             R1, SP, #0xC8+var_60
STM             LR, {R11,R12}
ADD             R11, SP, #0xC8+var_80
ADD             R2, SP, #0xC8+var_90
VLDM            R11, {S0-S1}
ADD             R11, SP, #0xC8+var_70
VSTM            R11, {S0-S1}
ADD             R11, SP, #0xC8+var_40
VLDR            S1, [R4,#0x108]
VLDR            S3, [R10,#0x224]
VLDR            S0, [R4,#0x10C]
VLDR            S2, [R10,#0x234]
VADD.F32        S1, S1, S3
VADD.F32        S0, S0, S2
VSTR            S1, [SP,#0xC8+var_68]
VSTR            S0, [SP,#0xC8+var_64]
VLDR            S1, [R4,#0x10C]
VLDR            S2, [R10,#0x234]
VLDR            S0, [R4,#0x108]
VLDR            S3, [R10,#0x228]
VADD.F32        S1, S1, S2
VADD.F32        S0, S0, S3
VSTM            R11, {S0-S1}
VLDR            S0, [R4,#0x108]
VLDR            S2, [R10,#0x224]
VLDR            S1, [R4,#0x10C]
VADD.F32        S0, S0, S2
VSTM            R3, {S0-S1}
VLDR            S1, [R10,#0x228]
VLDR            S0, [R4,#0x108]
LDR             R12, [R4,#0x10C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xC8+var_90]
VMOV.F32        S0, S16
STR             R3, [SP,#0xC8+var_C8]
STR             R0, [SP,#0xC8+var_BC]
STR             R1, [SP,#0xC8+var_C0]
STR             R2, [SP,#0xC8+var_C4]
ADD             R3, SP, #0xC8+var_40
ADD             R2, SP, #0xC8+var_68
ADD             R1, SP, #0xC8+var_70
ADD             R0, SP, #0xC8+var_A0
STR             R12, [SP,#0xC8+var_8C]
BL              sub_45A300
CMP             R0, #0
NOP
BEQ             loc_1ACEE8
VLDR            S1, [SP,#0xC8+var_60]
VLDR            S3, [SP,#0xC8+var_A0]
VLDR            S0, [SP,#0xC8+var_5C]
VLDR            S2, [SP,#0xC8+var_9C]
VSUB.F32        S1, S1, S3
MOV             R0, #2
VSUB.F32        S0, S0, S2
VMUL.F32        S1, S1, S1
VMLA.F32        S1, S0, S0
VSQRT.F32       S0, S1
VNEG.F32        S0, S0
VSTR            S0, [R7,#0x19C]
ADD             SP, SP, #0x9C
VPOP            {D8}
POP             {R4-R11,PC}
ADD             R3, SP, #0xC8+var_80
LDR             R0, [R4,#0xAA8]
LDM             R3, {R1,R2}
ADD             R3, SP, #0xC8+var_C0
STMEA           SP, {R1,R2}
VLDR            S0, [R4,#0x10C]
VLDR            S1, [R0,#0x250]
LDR             R1, [R4,#0x108]
ADD             R2, SP, #0xC8+var_90
VADD.F32        S0, S0, S1
STR             R1, [SP,#0xC8+var_90]
MOV             R1, SP
VSTR            S0, [SP,#0xC8+var_8C]
VLDR            S0, [R0,#0x250]
ADD             R0, SP, #0xC8+var_B0
VADD.F32        S0, S0, S17
BL              sub_45A8A4
CMP             R0, #0
NOP
BEQ             loc_1ACEE8
ADD             R0, SP, #0xC8+var_B0
VLDR            S3, [SP,#0xC8+var_C0]
VLDR            S2, [SP,#0xC8+var_BC]
VLDM            R0, {S0-S1}
MOV             R0, #3
VSUB.F32        S0, S0, S3
VSUB.F32        S1, S1, S2
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S1, S1
VSQRT.F32       S1, S0
VNEG.F32        S0, S1
VSTR            S0, [R7,#0x19C]
ADD             SP, SP, #0x9C
VPOP            {D8}
POP             {R4-R11,PC}
MOVS            R0, R0,LSL#5
BMI             loc_1ACDA0
MOV             R10, #1
LDRD            R0, R1, [SP,#0xC8+var_B0]
ADD             R3, SP, #0xC8+var_68
ADD             R2, SP, #0xC8+var_88
STRD            R0, R1, [SP,#0xC8+var_A0]
VLDR            S0, [SP,#0xC8+var_7C]
LDR             R1, [SP,#0xC8+var_80]
ADD             R0, R4, #0x400
VADD.F32        S0, S0, S16
STR             R1, [SP,#0xC8+var_58]
ADD             R1, R4, #0x108
VSTR            S0, [SP,#0xC8+var_54]
VLDR            S2, [R0,#0x234]
VLDR            S3, [R0,#0x224]
VLDM            R1, {S0-S1}
ADD             R1, SP, #0xC8+var_38
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S2
VSTM            R1, {S0-S1}
ADD             R1, SP, #0xC8+var_90
VLDR            S2, [R4,#0x10C]
VLDR            S1, [R0,#0x234]
VLDR            S0, [R4,#0x108]
VLDR            S3, [R0,#0x228]
VADD.F32        S1, S2, S1
VADD.F32        S0, S0, S3
VSTM            R1, {S0-S1}
ADD             R1, R4, #0x108
VLDR            S2, [R0,#0x224]
VLDM            R1, {S0-S1}
ADD             R1, SP, #0xC8+var_70
VADD.F32        S0, S0, S2
VSTM            R1, {S0-S1}
ADD             R1, SP, #0xC8+var_40
VLDR            S1, [R4,#0x108]
VLDR            S2, [R0,#0x228]
VLDR            S0, [R4,#0x10C]
ADD             R0, SP, #0xC8+var_70
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0xC8+var_40]
VSTR            S0, [SP,#0xC8+var_3C]
STMEA           SP, {R0-R3}
VMOV.F32        S0, S16
ADD             R3, SP, #0xC8+var_90
ADD             R2, SP, #0xC8+var_38
ADD             R1, SP, #0xC8+var_58
ADD             R0, SP, #0xC8+var_A0
BL              sub_45A300
CMP             R0, #0
NOP
BEQ             loc_1ACEE8
LDR             R0, [R4,#0x648]
TST             R0, #4
BEQ             loc_1ACEA4
VLDR            S1, [SP,#0xC8+var_90]
VLDR            S0, [SP,#0xC8+var_68]
MOV             R11, #0
LDR             R0, [R4]
VCMP.F32        S0, S1
LDR             R1, [R0,#8]
MOV             R0, R4
VMRS            APSR_nzcv, FPSCR
VLDR            S2, [SP,#0xC8+var_8C]
VLDR            S1, [SP,#0xC8+var_64]
MOVEQ           R11, #8
VCMP.F32        S1, S2
VMRS            APSR_nzcv, FPSCR
VLDR            S2, [SP,#0xC8+var_70]
ORREQ           R11, R11, #0x20 ; ' '
VCMP.F32        S0, S2
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [SP,#0xC8+var_6C]
ORREQ           R11, R11, #2
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
ORREQ           R11, R11, #0x10
BLX             R1
CMP             R0, #7
BEQ             loc_1ACDB4
LDR             R1, [R8,#4]
LDR             R0, [R1,#0x750]
CMP             R0, #0
BEQ             loc_1ACE7C
LDR             R0, [R4,#0x4EC]
TST             R0, #0xE0
BEQ             loc_1ACE44
B               loc_1ACE50
LDR             R0, [R4,#0x648]
MOV             R10, #0
TST             R0, #4
BEQ             loc_1ACEE8
B               loc_1ACC48
TST             R11, #0x10
BEQ             loc_1ACEA4
LDR             R0, [R8,#4]
LDR             R1, [R0,#0x750]
CMP             R1, #0
BEQ             loc_1ACE10
LDR             R1, [R4,#0x4EC]
TST             R1, #0xE0
BNE             loc_1ACDE4
LDR             R2, [R0,#0x754]
CMP             R2, R4
BNE             loc_1ACE10
AND             R2, R1, #0xE0
CMP             R2, #0x80
BNE             loc_1ACEA4
LDR             R1, [R0,#0x754]
CMP             R1, R4
BNE             loc_1ACE10
ADD             R1, R0, #0x400
LDRH            R2, [R1,#0x6C]
LDRH            R1, [R1,#0x6E]
CMP             R2, R1
BEQ             loc_1ACEA4
STR             R4, [R0,#0x750]
LDR             R12, [R0,#0x658]
MOV             R3, #0xFC0
AND             R3, R3, R11,LSL#6
BIC             R12, R12, #0xFC0
ORR             R3, R3, R12
ADD             R2, R0, #0x400
STR             R3, [R0,#0x658]
LDR             R0, [R0,#0x648]
ADD             R2, R2, #0x248
BIC             R0, R0, #0x180000
STR             R0, [R2]
B               loc_1ACEA4
LDR             R2, [R1,#0x754]
CMP             R2, R4
BNE             loc_1ACE7C
AND             R2, R0, #0xE0
CMP             R2, #0x80
BNE             loc_1ACEA4
LDR             R0, [R1,#0x754]
CMP             R0, R4
BNE             loc_1ACE7C
ADD             R0, R1, #0x400
LDRH            R2, [R0,#0x6C]
LDRH            R0, [R0,#0x6E]
CMP             R2, R0
BEQ             loc_1ACEA4
STR             R4, [R1,#0x750]
LDR             R12, [R1,#0x658]
MOV             R3, #0xFC0
AND             R3, R3, R11,LSL#6
BIC             R12, R12, #0xFC0
ORR             R3, R3, R12
STR             R3, [R1,#0x658]
LDR             R0, [R1,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R1,#0x648]
CMP             R10, #0
BEQ             loc_1ACEE8
VLDR            S1, [SP,#0xC8+var_88]
VLDR            S3, [SP,#0xC8+var_A0]
VLDR            S0, [SP,#0xC8+var_84]
VLDR            S2, [SP,#0xC8+var_9C]
VSUB.F32        S1, S1, S3
MOV             R0, #1
VSUB.F32        S0, S0, S2
VMUL.F32        S1, S1, S1
VMLA.F32        S1, S0, S0
VSQRT.F32       S0, S1
VNEG.F32        S0, S0
VSTR            S0, [R7,#0x19C]
ADD             SP, SP, #0x9C
VPOP            {D8}
POP             {R4-R11,PC}
ADD             R0, R5, #1
UXTH            R5, R0
CMP             R5, R6
BLT             loc_1AC908
ADD             SP, SP, #0x9C
MOV             R0, #0
VPOP            {D8}
POP             {R4-R11,PC}
