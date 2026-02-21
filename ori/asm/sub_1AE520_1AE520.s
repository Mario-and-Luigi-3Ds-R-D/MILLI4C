PUSH            {R0-R2,R4-R11,LR}
MOV             R8, R0
VPUSH           {D8}
SUB             SP, SP, #0x98
VLDR            S16, =0.0
ADD             R1, SP, #0xD0+var_78
ADD             R2, SP, #0xD0+var_7C
ADD             R4, SP, #0xD0+var_5C
ADD             R5, SP, #0xD0+var_68
BL              sub_1B1B9C
MOV             R2, R5
MOV             R1, R4
MOV             R0, R8
BL              sub_1AD930
VLDR            S0, [SP,#0xD0+var_7C]
VLDR            S1, =50.0
MOV             R5, #0
VLDR            S17, =100000.0
VADD.F32        S2, S0, S1
MOV             R6, R5
ADD             R7, SP, #0xD0+var_A0
ADD             R10, SP, #0xD0+var_90
ADD             R11, SP, #0xD0+var_C0
ADD             R9, R8, #0x3800
VSTR            S2, [SP,#0xD0+var_7C]
VLDR            S1, [SP,#0xD0+var_78]
VLDR            S3, [SP,#0xD0+var_68]
VLDR            S0, [SP,#0xD0+var_74]
VMLA.F32        S1, S2, S3
VSTR            S1, [SP,#0xD0+var_B8]
VLDR            S1, [SP,#0xD0+var_5C]
VMLA.F32        S0, S2, S1
VSTR            S0, [SP,#0xD0+var_B4]
LDR             R0, [R8,#4]
LDR             R4, [R0,#0x610]
LDR             R0, [R4]
TST             R0, #2
BNE             loc_1AE5C4
CMP             R5, #0
MOVEQ           R5, R4
MOV             R6, R4
LDR             R0, [R4,#8]
TST             R0, #0x400
BNE             loc_1AE76C
TST             R0, #1
BEQ             loc_1AE76C
LDRD            R0, R1, [SP,#0xD0+var_B8]
ADD             R3, SP, #0xD0+var_A0
ADD             R12, SP, #0xD0+var_90
STRD            R0, R1, [SP,#0xD0+var_98]
LDRD            R0, R1, [SP,#0xD0+var_78]
STRD            R0, R1, [SP,#0xD0+var_88]
LDR             R0, [R4,#8]
ADD             R1, SP, #0xD0+var_48
TST             R0, #0x800
VMOVNE.F32      S0, S17
LDR             R0, [R4,#0xC]
VLDREQ          S0, [R4,#0x14]
STR             R0, [SP,#0xD0+var_58]
VSTR            S0, [SP,#0xD0+var_54]
LDR             R0, [R4,#8]
VLDR            S1, [R4,#0x2C]
TST             R0, #0x800
VMOVNE.F32      S0, S17
VLDREQ          S0, [R4,#0x34]
VSTR            S1, [SP,#0xD0+var_50]
ADD             R0, R4, #0xC
VSTR            S0, [SP,#0xD0+var_4C]
LDM             R0, {R0,R2}
VMOV.F32        S0, S16
STM             R3, {R0,R2}
ADD             R0, R4, #0x2C ; ','
ADD             R3, SP, #0xD0+var_50
LDM             R0, {R0,R2}
STR             R1, [SP,#0xD0+var_C4]
ADD             R1, SP, #0xD0+var_88
STM             R12, {R0,R2}
ADD             R2, SP, #0xD0+var_58
ADD             R0, SP, #0xD0+var_98
STMEA           SP, {R7,R10,R11}
BL              sub_45A300
CMP             R0, #0
NOP
BEQ             loc_1AE6B0
ADD             R0, SP, #0xD0+var_C0
VLDR            S3, [SP,#0xD0+var_98]
VLDR            S2, [SP,#0xD0+var_94]
VLDM            R0, {S0-S1}
MOV             R0, #1
VSUB.F32        S0, S0, S3
VSUB.F32        S1, S1, S2
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S1, S1
VSQRT.F32       S1, S0
VNEG.F32        S0, S1
VSTR            S0, [R9,#0x19C]
ADD             SP, SP, #0x98
VPOP            {D8}
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
LDR             R0, [R4]
TST             R0, #1
BEQ             loc_1AE76C
VLDR            S1, [SP,#0xD0+var_B8]
VLDR            S0, [R5,#0x78]
VLDR            S3, [R6,#0x7C]
VSUB.F32        S2, S1, S16
VADD.F32        S1, S1, S16
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VCMPECS.F32     S3, S1
VMRSCS          APSR_nzcv, FPSCR
MOVCC           R0, #1
BCC             loc_1AE6A0
LDR             R10, =off_6D1648
MOV             R5, #2
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
LDRB            R0, [R0,#0x110]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
ADD             R6, R1, R0
CMP             R6, #2
BLE             loc_1AEC00
ADD             R0, R8, #0x3800
VLDR            S17, =1.0
ADD             R7, R8, #0x3800
ADD             R0, R0, #0x1A4
ADD             R7, R7, #0x1A8
STR             R0, [SP,#0xD0+var_64]
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
CMP             R1, R5
BLE             loc_1AE774
LDR             R0, [R0,#4]
ADD             R0, R0, R5,LSL#2
ADD             R0, R0, #0x14000
LDR             R4, [R0,#0x184]
B               loc_1AE78C
ADD             R4, R4, #0x88
B               loc_1AE5AC
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R2, [R1,#0x28D]
SUB             R1, R5, R2
ADD             R0, R0, R1,LSL#2
LDR             R4, [R0,#0x10]
LDR             R0, [R7]
LDRB            R1, [R4,#0xDC]
LDRB            R0, [R0,#0xDC]
CMP             R1, R0
BEQ             loc_1AEBF0
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #4
BLS             loc_1AEBF0
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R4,#0xAAC]
CMPEQ           R0, #3
BEQ             loc_1AE81C
LDRB            R0, [R4,#0x648]
CMP             R0, #0
BEQ             loc_1AEAD0
LDR             R0, [R4,#0x648]
TST             R0, #1
BEQ             loc_1AEAD0
LDR             R0, [R4,#0x640]
TST             R0, #7
BEQ             loc_1AEAD0
TST             R0, #3
BEQ             loc_1AE950
B               loc_1AE958
DCFS 0.0
DCFS 50.0
DCFS 100000.0
DCD off_6D1648
DCFS 1.0
ADD             R1, R4, #0x400
STR             R4, [SP,#0xD0+var_D0]
STR             R1, [SP,#0xD0+var_CC]
LDRH            R0, [R1,#0xB6]
MOV             R1, R0,LSL#30
MOV             R0, R0,LSL#29
MOV             R11, R1,LSR#31
MOV             R0, R0,LSR#31
STR             R0, [SP,#0xD0+var_BC]
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x13800
LDR             R0, [SP,#0xD0+var_D0]
ADD             R1, R1, #0x3A4
LDR             R2, [R0]
LDR             R3, [R2,#0x74]
BLX             R3
LDR             R1, [SP,#0xD0+var_CC]
LDR             R0, [SP,#0xD0+var_BC]
MOV             R12, #4
MOV             R3, #2
LDRH            R1, [R1,#0xB6]
AND             R12, R12, R0,LSL#2
AND             R3, R3, R11,LSL#1
BIC             R0, R1, #2
MOV             R1, R1,LSL#30
ORR             R0, R0, R3
MOVS            R3, R1,LSR#31
LDR             R1, [SP,#0xD0+var_CC]
BIC             R0, R0, #4
ORR             R0, R0, R12
STRH            R0, [R1,#0xB6]
BNE             loc_1AEBF0
LDR             R0, [SP,#0xD0+var_64]
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_1AEBF0
LDRB            R1, [R0,#0xDC]
LDRB            R0, [R4,#0xDC]
CMP             R1, R0
BNE             loc_1AEBF0
ADD             R3, SP, #0xD0+var_78
LDR             R0, [R4,#0xAA8]
LDM             R3, {R1,R2}
ADD             R3, SP, #0xD0+var_A0
STM             R3, {R1,R2}
ADD             R3, SP, #0xD0+var_C8
VLDR            S0, [R4,#0x10C]
VLDR            S1, [R0,#0x250]
LDR             R1, [R4,#0x108]
ADD             R2, SP, #0xD0+var_90
VADD.F32        S0, S0, S1
STR             R1, [SP,#0xD0+var_90]
ADD             R1, SP, #0xD0+var_A0
VSTR            S0, [SP,#0xD0+var_8C]
VLDR            S0, [R0,#0x250]
ADD             R0, SP, #0xD0+var_B8
VADD.F32        S0, S0, S17
BL              sub_45A8A4
CMP             R0, #0
NOP
BEQ             loc_1AEBF0
ADD             R0, SP, #0xD0+var_B8
VLDR            S3, [SP,#0xD0+var_C8]
VLDR            S2, [SP,#0xD0+var_C4]
VLDM            R0, {S0-S1}
VSUB.F32        S0, S0, S3
VSUB.F32        S1, S1, S2
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S1, S1
VSQRT.F32       S1, S0
VNEG.F32        S0, S1
VSTR            S0, [R9,#0x19C]
LDR             R0, [SP,#0xD0+var_28]
STR             R4, [R0]
MOV             R0, #3
B               loc_1AE6A0
MOVS            R0, R0,LSL#5
BMI             loc_1AEAD0
MOV             R11, #1
LDRD            R0, R1, [SP,#0xD0+var_B8]
ADD             R3, SP, #0xD0+var_A0
ADD             R12, SP, #0xD0+var_58
STRD            R0, R1, [SP,#0xD0+var_B0]
VLDR            S0, [SP,#0xD0+var_74]
LDR             R1, [SP,#0xD0+var_78]
ADD             R0, R4, #0x400
VADD.F32        S0, S0, S16
STR             R1, [SP,#0xD0+var_48]
ADD             R1, R4, #0x108
VSTR            S0, [SP,#0xD0+var_44]
VLDR            S2, [R0,#0x234]
VLDR            S3, [R0,#0x224]
VLDM            R1, {S0-S1}
ADD             R1, SP, #0xD0+var_40
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S2
VSTM            R1, {S0-S1}
ADD             R1, R4, #0x108
VLDR            S2, [R0,#0x234]
VLDR            S3, [R0,#0x228]
VLDM            R1, {S0-S1}
ADD             R1, SP, #0xD0+var_98
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S2
VSTM            R1, {S0-S1}
VLDR            S1, [R4,#0x108]
VLDR            S0, [R0,#0x224]
LDR             R1, [R4,#0x10C]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0xD0+var_A0]
STR             R1, [SP,#0xD0+var_9C]
VLDR            S0, [R4,#0x108]
VLDR            S1, [R0,#0x228]
LDR             R2, [R4,#0x10C]
ADD             R1, SP, #0xD0+var_88
VADD.F32        S0, S0, S1
ADD             R0, SP, #0xD0+var_90
VSTR            S0, [SP,#0xD0+var_58]
STR             R2, [SP,#0xD0+var_54]
STMEA           SP, {R3,R12}
VMOV.F32        S0, S16
STRD            R0, R1, [SP,#0xD0+var_C8]
ADD             R3, SP, #0xD0+var_98
ADD             R2, SP, #0xD0+var_40
ADD             R1, SP, #0xD0+var_48
ADD             R0, SP, #0xD0+var_B0
BL              sub_45A300
CMP             R0, #0
NOP
BEQ             loc_1AEBF0
LDR             R0, [R4,#0x648]
TST             R0, #4
BEQ             loc_1AEBB4
VLDR            S1, [SP,#0xD0+var_98]
VLDR            S0, [SP,#0xD0+var_88]
MOV             R0, #0
STR             R0, [SP,#0xD0+var_D0]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
MOVEQ           R0, #8
STREQ           R0, [SP,#0xD0+var_D0]
VLDR            S2, [SP,#0xD0+var_94]
VLDR            S1, [SP,#0xD0+var_84]
VCMP.F32        S1, S2
VMRS            APSR_nzcv, FPSCR
ORREQ           R0, R0, #0x20 ; ' '
STREQ           R0, [SP,#0xD0+var_D0]
VLDR            S2, [SP,#0xD0+var_A0]
VCMP.F32        S0, S2
VMRS            APSR_nzcv, FPSCR
ORREQ           R0, R0, #2
STREQ           R0, [SP,#0xD0+var_D0]
VLDR            S0, [SP,#0xD0+var_9C]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
ORREQ           R0, R0, #0x10
STREQ           R0, [SP,#0xD0+var_D0]
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #7
BEQ             loc_1AEAE4
LDR             R0, [R8,#4]
LDR             R1, [SP,#0xD0+var_D0]
LDR             R2, [R0,#0x750]
CMP             R2, #0
BEQ             loc_1AEB48
LDR             R3, [R4,#0x4EC]
TST             R3, #0xE0
BEQ             loc_1AEB7C
B               loc_1AEB88
LDR             R0, [R4,#0x648]
MOV             R11, #0
TST             R0, #4
BEQ             loc_1AEBF0
B               loc_1AE95C
LDR             R0, [SP,#0xD0+var_D0]
TST             R0, #0x10
BEQ             loc_1AEBB4
LDR             R0, [R8,#4]
LDR             R1, [SP,#0xD0+var_D0]
LDR             R2, [R0,#0x750]
CMP             R2, #0
BEQ             loc_1AEB48
LDR             R3, [R4,#0x4EC]
TST             R3, #0xE0
BNE             loc_1AEB1C
LDR             R2, [R0,#0x754]
CMP             R2, R4
BNE             loc_1AEB48
AND             R3, R3, #0xE0
CMP             R3, #0x80
BNE             loc_1AEBB4
LDR             R2, [R0,#0x754]
CMP             R2, R4
BNE             loc_1AEB48
ADD             R2, R0, #0x400
LDRH            R3, [R2,#0x6C]
LDRH            R2, [R2,#0x6E]
CMP             R3, R2
BEQ             loc_1AEBB4
STR             R4, [R0,#0x750]
LDR             R4, [R0,#0x658]
MOV             R3, #0xFC0
AND             R1, R3, R1,LSL#6
BIC             R2, R4, #0xFC0
ORR             R1, R1, R2
ADD             R12, R0, #0x400
STR             R1, [R0,#0x658]
LDR             R0, [R0,#0x648]
ADD             R12, R12, #0x248
BIC             R0, R0, #0x180000
STR             R0, [R12]
B               loc_1AEBB4
LDR             R2, [R0,#0x754]
CMP             R2, R4
BNE             loc_1AEB48
AND             R3, R3, #0xE0
CMP             R3, #0x80
BNE             loc_1AEBB4
LDR             R2, [R0,#0x754]
CMP             R2, R4
BNE             loc_1AEB48
ADD             R2, R0, #0x400
LDRH            R3, [R2,#0x6C]
LDRH            R2, [R2,#0x6E]
CMP             R3, R2
BNE             loc_1AEB48
CMP             R11, #0
BEQ             loc_1AEBF0
ADD             R0, SP, #0xD0+var_90
VLDR            S3, [SP,#0xD0+var_B0]
VLDR            S2, [SP,#0xD0+var_AC]
VLDM            R0, {S0-S1}
MOV             R0, #1
VSUB.F32        S0, S0, S3
VSUB.F32        S1, S1, S2
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S1, S1
VSQRT.F32       S1, S0
VNEG.F32        S0, S1
VSTR            S0, [R9,#0x19C]
B               loc_1AE6A0
ADD             R0, R5, #1
UXTH            R5, R0
CMP             R5, R6
BLT             loc_1AE734
MOV             R0, #0
B               loc_1AE6A0
