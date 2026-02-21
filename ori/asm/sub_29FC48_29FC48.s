PUSH            {R0-R11,LR}
MOV             R4, R0
ADD             R7, R0, #0xF0
VPUSH           {D8}
SUB             SP, SP, #0x74
LDM             R7, {R0-R2}
ADD             R3, SP, #0xB0+var_98
LDR             R10, [SP,#0xB0+arg_0]
LDRB            R6, [R4,#0xB8]
VLDR            S0, [R4,#0x28]
VMOV            S1, R0
STM             R3, {R0-R2}
VLDR            S2, [R4,#0x40]
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0xB0+var_98]
VMOV            S1, R1
VLDR            S2, [R4,#0x44]
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0xB0+var_94]
VLDR            S2, [R4,#0x100]
LDRB            R1, [R4,#0xB8]
LDRB            R2, [R4,#0x1E]
VCVT.S32.F32    S3, S2
LDRB            R0, [R4,#0xB4]
ADD             R5, R1, R2
CMP             R0, R5
MOVLT           R5, R0
VMOV            R1, S3
VMOV            S3, R1
CMP             R1, #0
MOVGE           R0, R1
RSBLT           R0, R1, #0
VCVT.F32.S32    S3, S3
VCMP.F32        S2, S3
VMRS            APSR_nzcv, FPSCR
VLDR            S16, =0.0
ADDNE           R0, R0, #1
CMP             R0, #0
BEQ             loc_29FDB8
VCMPE.F32       S2, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_29FDD8
VMOV            S3, R0
SUB             R6, R6, R0
VCVT.F32.S32    S3, S3
VADD.F32        S2, S3, S2
VMLA.F32        S1, S2, S0
VSTR            S1, [SP,#0xB0+var_94]
VLDR            S1, [R7,#4]
VLDR            S3, [R4,#0x44]
LDRB            R0, [R4,#0x1E]
VLDR            S2, [SP,#0xB0+var_94]
VADD.F32        S1, S1, S3
ADD             R0, R0, #1
VMOV            S4, R0
VCVT.F32.U32    S4, S4
VADD.F32        S3, S1, S0
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
VMLS.F32        S1, S0, S4
BLT             loc_29FD74
VSUB.F32        S3, S2, S3
VDIV.F32        S4, S3, S0
VCVT.S32.F32    S3, S4
VMOV            R0, S3
VMOV            S3, R0
VCVT.F32.S32    S3, S3
VCMP.F32        S3, S4
VMRS            APSR_nzcv, FPSCR
ADDNE           R0, R0, #1
VMOV            S3, R0
ADD             R6, R6, R0
VCVT.F32.S32    S3, S3
VMLS.F32        S2, S3, S0
VSTR            S2, [SP,#0xB0+var_94]
SUB             R0, R5, R6
VMOV            S3, R0
VCVT.F32.S32    S3, S3
VMLS.F32        S2, S3, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_29FDB8
VSUB.F32        S2, S1, S2
VDIV.F32        S1, S2, S0
VCVT.S32.F32    S0, S1
VMOV            R0, S0
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
ADDNE           R0, R0, #1
SUB             R5, R5, R0
CMP             R10, #0
BEQ             loc_29FDE8
LDR             R0, [SP,#0xB0+var_2C]
MOV             R1, R10
BL              sub_4A1284
NOP
NOP
B               loc_29FDF0
VMLAGT.F32      S1, S2, S0
ADDGT           R5, R5, R0
BLE             loc_29FD08
B               loc_29FD04
LDR             R0, [SP,#0xB0+var_2C]
BL              sub_4A125C
LDR             R1, [SP,#0xB0+var_2C]
LDRB            R0, [R4,#0xCC]
LDR             R11, =0x3E1FFFE7
ADD             R8, R1, #0x13000
ADD             R1, R4, #0x7400
ADD             R1, R1, #0x4C ; 'L'
ADD             R9, R4, #0x7400
CMP             R0, #0
ADD             R8, R8, #0x6D0
ADD             R9, R9, #0x10C
STR             R1, [SP,#0xB0+var_9C]
BEQ             loc_29FE2C
CMP             R0, #1
BNE             loc_2A0148
B               loc_2A0038
LDRB            R1, [R4,#0xCD]
LDR             R0, [SP,#0xB0+var_2C]
BL              sub_58E204
LDR             R0, [SP,#0xB0+var_2C]
NOP
BL              sub_4A1234
LDR             R0, [SP,#0xB0+var_2C]
NOP
BL              sub_111CF8
LDR             R0, [SP,#0xB0+var_2C]
NOP
BL              sub_111BC4
LDR             R0, [SP,#0xB0+var_2C]
MOV             R1, #1
BL              sub_111E70
MOV             R0, #0
ADD             R1, SP, #0xB0+var_44
REV             R0, R0
STR             R0, [SP,#0xB0+var_44]
LDR             R0, [SP,#0xB0+var_2C]
BL              sub_111C60
LDR             R0, [SP,#0xB0+var_2C]
LDR             R1, [SP,#0xB0+var_9C]
BL              sub_4A0BD0
LDR             R0, =dword_6E1320
LDR             R0, [R0]
TST             R0, #1
BNE             loc_29FEC4
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_29FEC4
LDR             R0, =flt_6E1324
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
LDR             R1, =flt_6E1324
LDR             R0, [SP,#0xB0+var_2C]
BL              sub_4A16C0
LDR             R0, [SP,#0xB0+var_2C]
MOV             R1, #1
BL              sub_111BEC
MOV             R0, #0
MOV             R2, #0x3F800000
STR             R0, [SP,#0xB0+var_84]
STR             R2, [SP,#0xB0+var_88]
STR             R0, [SP,#0xB0+var_80]
LDR             R3, [R7]
ADD             R12, SP, #0xB0+var_78
ADD             R1, SP, #0xB0+var_88
STR             R3, [SP,#0xB0+var_7C]
STM             R12, {R0,R2}
ADD             R12, SP, #0xB0+var_64
STR             R0, [SP,#0xB0+var_70]
LDR             R3, [R7,#4]
STR             R0, [SP,#0xB0+var_68]
STR             R3, [SP,#0xB0+var_6C]
STM             R12, {R0,R2}
LDR             R0, [R7,#8]
STR             R0, [SP,#0xB0+var_5C]
LDR             R0, [SP,#0xB0+var_2C]
BL              sub_4A1F14
STR             R11, [R8]
LDR             R0, [SP,#0xB0+var_2C]
MOV             R7, #0
BL              sub_4A1948
LDRB            R1, [R9]
LDR             R0, [SP,#0xB0+var_2C]
MOV             R2, #0
BL              sub_4A1918
LDR             R0, [R4,#4]
MOV             R1, #0
ADD             R8, SP, #0xB0+var_58
STR             R0, [SP,#0xB0+var_58]
LDR             R0, [R4,#8]
MOV             R3, R7
STR             R0, [SP,#0xB0+var_54]
LDR             R0, [R4,#0xC]
STR             R0, [SP,#0xB0+var_50]
LDR             R0, [R4,#0x10]
STR             R0, [SP,#0xB0+var_4C]
LDR             R0, [R8,R1,LSL#2]
CMP             R0, #0
BEQ             loc_29FFC4
LDRB            R2, [R0,#0x5C]
MOV             R12, #0
MOV             R7, #0xFF
BIC             R9, R2, #0x70 ; 'p'
LDRB            R2, [R4,#0xCD]
ORR             R9, R9, #0x21 ; '!'
STRB            R9, [R0,#0x5C]
STRB            R12, [R0,#0x5D]
STRB            R2, [R0,#0x5E]
STRB            R7, [R0,#0x5F]
LDRH            R2, [R0,#0x60]
BIC             R2, R2, #0x700
BIC             R2, R2, #0x77 ; 'w'
STRH            R2, [R0,#0x60]
STRB            R3, [R0,#0x68]
STRB            R3, [R0,#0x69]
ADD             R1, R1, #1
CMP             R1, #4
BLT             loc_29FF78
LDRB            R1, [R4,#0xCD]
LDR             R0, [SP,#0xB0+var_28]
MOV             R2, #0xFF
BL              sub_58E234
LDR             R1, [SP,#0xB0+var_30]
MOV             R3, R6
ADD             R2, SP, #0xB0+var_98
MOV             R0, R4
STR             R5, [SP,#0xB0+var_B0]
BL              sub_29F59C
STMEA           SP, {R5,R10}
LDR             R1, [SP,#0xB0+var_28]
MOV             R3, R6
ADD             R2, SP, #0xB0+var_98
MOV             R0, R4
BL              sub_29F9C8
LDR             R0, [SP,#0xB0+var_28]
NOP
BL              sub_4A136C
NOP
NOP
B               loc_2A0148
DCFS 0.0
DCD 0x3E1FFFE7
DCD dword_6E1320
DCD flt_6E1324
MOV             R0, #0
MOV             R2, #0x3F800000
STR             R0, [SP,#0xB0+var_84]
STR             R2, [SP,#0xB0+var_88]
STR             R0, [SP,#0xB0+var_80]
LDR             R3, [R7]
ADD             R5, SP, #0xB0+var_78
ADD             R1, SP, #0xB0+var_88
STR             R3, [SP,#0xB0+var_7C]
STM             R5, {R0,R2}
ADD             R5, SP, #0xB0+var_64
STR             R0, [SP,#0xB0+var_70]
LDR             R3, [R7,#4]
STR             R0, [SP,#0xB0+var_68]
STR             R3, [SP,#0xB0+var_6C]
STM             R5, {R0,R2}
LDR             R0, [R7,#8]
STR             R0, [SP,#0xB0+var_5C]
LDR             R0, [SP,#0xB0+var_2C]
BL              sub_4A1F14
LDR             R0, [SP,#0xB0+var_2C]
NOP
BL              sub_58E264
LDR             R0, [SP,#0xB0+var_2C]
NOP
BL              sub_4A10AC
LDR             R0, [SP,#0xB0+var_2C]
NOP
BL              sub_4A1234
LDR             R0, [SP,#0xB0+var_2C]
NOP
BL              sub_4A136C
LDR             R0, [SP,#0xB0+var_2C]
NOP
BL              sub_111CF8
LDR             R0, [SP,#0xB0+var_2C]
NOP
BL              sub_111BC4
LDR             R0, [SP,#0xB0+var_2C]
LDR             R1, [SP,#0xB0+var_9C]
BL              sub_4A0BD0
LDR             R0, =dword_6E1320
LDR             R0, [R0]
TST             R0, #1
BNE             loc_2A0114
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_2A0114
LDR             R0, =flt_6E1324
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
LDR             R1, =flt_6E1324
LDR             R0, [SP,#0xB0+var_2C]
BL              sub_4A16C0
LDR             R0, [SP,#0xB0+var_2C]
MOV             R1, #1
BL              sub_111BEC
STR             R11, [R8]
LDR             R0, [SP,#0xB0+var_2C]
BL              sub_4A1948
LDRB            R1, [R9]
LDR             R0, [SP,#0xB0+var_2C]
MOV             R2, #0
BL              sub_4A1918
LDR             R0, [SP,#0xB0+var_2C]
BL              sub_4A125C
LDRB            R0, [R4,#0x1F]
CMP             R0, #0
BEQ             loc_2A0170
LDR             R1, [SP,#0xB0+var_28]
MOV             R3, #0
MOV             R2, R10
MOV             R0, R4
BL              sub_2A02E0
LDRB            R0, [R4,#0x20]
CMP             R0, #0
BEQ             loc_2A0188
LDR             R1, [SP,#0xB0+var_30]
MOV             R0, R4
BL              sub_2A08EC
ADD             SP, SP, #0x74 ; 't'
VPOP            {D8}
ADD             SP, SP, #0x10
POP             {R4-R11,PC}
