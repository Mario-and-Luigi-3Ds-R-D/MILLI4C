PUSH            {R4-R7,LR}
ADD             R4, R0, #0x14400
ADD             R4, R4, #0x18
SUB             SP, SP, #0xDC
LDR             R1, [R4]
CMP             R1, #0
BEQ             loc_189494
LDR             R1, =off_6D1648
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
LDR             R1, [R1]
LDRH            R0, [R0,#4]
LDR             R2, [R1,#0x60]
LDR             R1, [R1,#0xC0]
ADD             R5, R2, #0x2A0
ADD             R6, R1, #0x13800
ADD             R6, R6, #0x36C
BL              sub_2AF718
MOV             R7, R0
LDR             R1, =sub_3A2F00
MOV             R0, SP
MOV             R3, #5
MOV             R2, #0x2C ; ','
BLX             sub_1002F4
LDR             R1, [R7]
MOV             R0, #1
BIC             R2, R8, #0xFF
BIC             R1, R0, R1
ORR             R0, R0, R2
BIC             R2, R9, #0xFF
ORR             R1, R1, R2
STR             R1, [SP,#0xF0+var_F0]
VLDR            S0, =-122.0
VLDR            S1, =-92.0
VLDR            S2, =0.0
ADD             R2, SP, #0xF0+var_EC
VLDR            S3, =-32.0
VLDR            S4, =32.0
VLDR            S5, =-24.0
VLDR            S6, =24.0
BIC             R1, R1, #0xFF
VSTM            R2, {S0-S2}
ADD             R2, SP, #0xF0+var_DC
STR             R0, [SP,#0xF0+var_E0]
ORR             R1, R1, #2
VSTM            R2, {S3-S6}
ADD             R2, SP, #0xF0+var_CC
STR             R1, [SP,#0xF0+var_C4]
VLDR            S8, =122.0
STM             R2, {R5,R6}
ADD             R2, SP, #0xF0+var_BC
VSTR            S8, [SP,#0xF0+var_C0]
BIC             R1, R1, #0xFF
VSTM            R2, {S1-S2}
ADD             R2, SP, #0xF0+var_B0
STR             R0, [SP,#0xF0+var_B4]
ORR             R1, R1, #3
VSTM            R2, {S3-S6}
ADD             R2, SP, #0xF0+var_A0
STR             R1, [SP,#0xF0+var_98]
STM             R2, {R5,R6}
ADD             R2, SP, #0xF0+var_84
VLDR            S7, =92.0
VSTR            S8, [SP,#0xF0+var_94]
VSTR            S7, [SP,#0xF0+var_90]
VSTR            S2, [SP,#0xF0+var_8C]
STR             R0, [SP,#0xF0+var_88]
BIC             R1, R1, #0xFF
VSTM            R2, {S3-S6}
ORR             R1, R1, #4
ADD             R2, SP, #0xF0+var_74
STR             R1, [SP,#0xF0+var_6C]
STM             R2, {R5,R6}
ADD             R2, SP, #0xF0+var_68
BIC             R1, R1, #0xFF
VSTM            R2, {S0-S2}
ADD             R2, SP, #0xF0+var_58
STR             R0, [SP,#0xF0+var_5C]
ORR             R1, R1, #5
VSTM            R2, {S3-S6}
STR             R1, [SP,#0xF0+var_40]
ADD             R1, SP, #0xF0+var_48
STM             R1, {R5,R6}
ADD             R1, SP, #0xF0+var_2C
VSTR            S0, [SP,#0xF0+var_3C]
VSTR            S7, [SP,#0xF0+var_38]
VSTR            S2, [SP,#0xF0+var_34]
STR             R0, [SP,#0xF0+var_30]
VSTM            R1, {S3-S6}
ADD             R1, SP, #0xF0+var_1C
STM             R1, {R5,R6}
MOV             R1, SP
LDR             R0, [R4]
BL              sub_3D9298
LDR             R0, [R7]
MOV             R1, #0
MOV             R2, R1
TST             R0, #1
LDR             R0, [R4]
ADDEQ           R0, R0, #0x930
ADDNE           R0, R0, #0xC40
STRB            R1, [R0,#0x199]
MOV             R1, #0
MOV             R3, R1
BL              sub_3A2B64
VLDR            S2, [SP,#0xF0+var_EC]
VLDR            S0, =64.0
VLDR            S6, [SP,#0xF0+var_E8]
VMOV.F32        S3, S2
VSUB.F32        S2, S2, S0
VMOV.F32        S4, S6
LDR             R1, [R4]
MOV             R0, #0xFFFFFFFF
VSUB.F32        S6, S6, S0
REV             R12, R0
VLDR            S5, [SP,#0xF0+var_E4]
MOV             R0, #0xFFFFFF00
ADD             R5, R1, #0x2C4
REV             R3, R0
VMOV.F32        S1, S5
ADD             R2, R1, #0x200
VSTM            R5, {S3-S5}
MOV             R0, #4
STRH            R0, [R2,#0xD0]
VSTR            S2, [R1,#0x2D4]
VSTR            S6, [R1,#0x2D8]
VSTR            S1, [R1,#0x2DC]
STRH            R0, [R2,#0xE0]
LDR             R2, [R4]
MOV             R1, #6
ADD             R5, R2, #0x200
STR             R12, [R2,#0x2E4]
STRH            R1, [R5,#0xE8]
STR             R3, [R2,#0x2EA]
STRH            R1, [R5,#0xEE]
VLDR            S2, [SP,#0xF0+var_C0]
VLDR            S1, [SP,#0xF0+var_BC]
LDR             R2, [R4]
VMOV.F32        S4, S2
VMOV.F32        S5, S1
VADD.F32        S2, S2, S0
VSUB.F32        S1, S1, S0
VLDR            S6, [SP,#0xF0+var_B8]
ADD             R2, R2, #0x310
ADD             R5, R2, #0x2C4
VMOV.F32        S3, S6
ADD             LR, R2, #0x200
VSTM            R5, {S4-S6}
STRH            R0, [LR,#0xD0]
VSTR            S2, [R2,#0x2D4]
VSTR            S1, [R2,#0x2D8]
VSTR            S3, [R2,#0x2DC]
STRH            R0, [LR,#0xE0]
LDR             R2, [R4]
ADD             R2, R2, #0x310
ADD             R5, R2, #0x200
STR             R12, [R2,#0x2E4]
STRH            R1, [R5,#0xE8]
STR             R3, [R2,#0x2EA]
STRH            R1, [R5,#0xEE]
ADD             R5, SP, #0xF0+var_94
LDR             R2, [R4]
VLDR            S6, [SP,#0xF0+var_8C]
VLDM            R5, {S2-S3}
ADD             R2, R2, #0x620
VMOV.F32        S5, S6
ADD             LR, R2, #0x200
VMOV.F32        S1, S2
VMOV.F32        S4, S3
VADD.F32        S3, S3, S0
VADD.F32        S2, S2, S0
VSTR            S1, [R2,#0x2C4]
VSTR            S4, [R2,#0x2C8]
VSTR            S6, [R2,#0x2CC]
STRH            R0, [LR,#0xD0]
VSTR            S5, [R2,#0x2DC]
ADD             R2, R2, #0x2D4
VSTM            R2, {S2-S3}
STRH            R0, [LR,#0xE0]
LDR             R2, [R4]
ADD             R2, R2, #0x620
ADD             R5, R2, #0x200
STR             R12, [R2,#0x2E4]
STRH            R1, [R5,#0xE8]
STR             R3, [R2,#0x2EA]
STRH            R1, [R5,#0xEE]
VLDR            S6, [SP,#0xF0+var_68]
VLDR            S5, [SP,#0xF0+var_64]
LDR             R2, [R4]
VMOV.F32        S2, S6
VMOV.F32        S3, S5
VSUB.F32        S6, S6, S0
VSUB.F32        S5, S5, S0
VLDR            S4, [SP,#0xF0+var_60]
ADD             R2, R2, #0x930
ADD             R5, R2, #0x2C4
VMOV.F32        S1, S4
ADD             LR, R2, #0x200
VSTM            R5, {S2-S4}
STRH            R0, [LR,#0xD0]
VSTR            S6, [R2,#0x2D4]
VSTR            S5, [R2,#0x2D8]
VSTR            S1, [R2,#0x2DC]
STRH            R0, [LR,#0xE0]
LDR             R2, [R4]
ADD             R2, R2, #0x930
ADD             R5, R2, #0x200
STR             R12, [R2,#0x2E4]
STRH            R1, [R5,#0xE8]
STR             R3, [R2,#0x2EA]
STRH            R1, [R5,#0xEE]
ADD             R5, SP, #0xF0+var_3C
LDR             R2, [R4]
VLDR            S4, [SP,#0xF0+var_34]
VLDM            R5, {S5-S6}
ADD             R2, R2, #0xC40
ADD             R5, R2, #0x2C4
ADD             LR, R2, #0x200
VMOV.F32        S2, S5
VSUB.F32        S5, S5, S0
VMOV.F32        S3, S6
VADD.F32        S0, S6, S0
VMOV.F32        S1, S4
VSTM            R5, {S2-S4}
STRH            R0, [LR,#0xD0]
VSTR            S5, [R2,#0x2D4]
ADD             R2, R2, #0x2D8
VSTM            R2, {S0-S1}
STRH            R0, [LR,#0xE0]
LDR             R0, [R4]
ADD             R0, R0, #0xC40
ADD             R2, R0, #0x200
STR             R12, [R0,#0x2E4]
STRH            R1, [R2,#0xE8]
STR             R3, [R0,#0x2EA]
STRH            R1, [R2,#0xEE]
ADD             SP, SP, #0xDC
POP             {R4-R7,PC}
