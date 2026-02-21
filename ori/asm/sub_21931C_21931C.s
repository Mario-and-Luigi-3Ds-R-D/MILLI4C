PUSH            {R4-R11,LR}
MOV             R6, R0
LDR             R11, =off_6CE970
VLDR            S2, =0.0039062
VPUSH           {D8-D13}
SUB             SP, SP, #0xB4
LDR             R0, [R11]
VLDR            S0, [R6,#0x98]
VLDR            S23, =0.0
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S0
VMUL.F32        S26, S0, S2
VCMP.F32        S26, S23
VMRS            APSR_nzcv, FPSCR
BEQ             loc_219D2C
VMOV.F32        S0, S26
ADD             R0, R6, #0x14C
BL              sub_4E625C
LDR             R0, [R0]
STR             R0, [R6,#0x9C]
LDRB            R0, [R6,#0xF0]
CMP             R0, #0
BEQ             loc_219394
CMP             R0, #1
BEQ             loc_2193B8
B               loc_2193C8
LDR             R0, [R11]
ADD             R2, R6, #0x11C
ADD             R1, R0, #0x10C000
ADD             R1, R1, #0x550
ADD             R0, SP, #0x108+var_F0
BL              sub_1169FC
NOP
NOP
B               loc_2193C8
ADD             R0, R6, #0x11C
ADD             R3, SP, #0x108+var_F0
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R4, R6, #0x110
VLDR            S22, =0.5
LDM             R4, {R4,R5}
MOV             R7, #1
CMP             R4, R5
VMULNE.F32      S0, S26, S22
VMULNE.F32      S16, S0, S26
BEQ             loc_21946C
LDRB            R0, [R4,#0x24]
AND             R0, R0, #3
CMP             R0, #1
BEQ             loc_219460
CMP             R0, #2
BEQ             loc_2194E0
VLDR            S2, [R4,#0x18]
ADD             R0, R4, #0x1C
VLDR            S5, [SP,#0x108+var_F0]
VMUL.F32        S2, S2, S26
VLDM            R0, {S0-S1}
VMUL.F32        S5, S5, S16
ADD             R0, SP, #0x108+var_EC
VLDM            R0, {S3-S4}
VMUL.F32        S0, S0, S26
VMUL.F32        S1, S1, S26
VMUL.F32        S3, S3, S16
VMUL.F32        S4, S4, S16
VADD.F32        S2, S2, S5
VADD.F32        S0, S0, S3
VLDR            S3, [R4]
VADD.F32        S1, S1, S4
VADD.F32        S2, S3, S2
VSTR            S2, [R4]
VLDR            S2, [R4,#4]
VADD.F32        S0, S2, S0
VSTR            S0, [R4,#4]
VLDR            S0, [R4,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#8]
ADD             R4, R4, #0x38 ; '8'
CMP             R4, R5
BNE             loc_2193E8
LDR             R0, [R6,#0x114]
LDR             R2, [R6,#0x110]
MOV             R1, #0
VLDR            S1, [R6,#0x130]
SUB             R0, R0, R2
LDR             R2, =0x92492493
LDR             R10, =dword_6E1330
VLDR            S24, =1.0
SMLAL           R1, R0, R2, R0
MOV             R1, R0,ASR#5
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, #1
VMOV            S0, R0
LDRB            R0, [R6,#0x138]
SUB             R9, R0, #1
CMP             R9, #0
VCVT.F32.U32    S0, S0
VLDRGE          S25, =2.0
VDIV.F32        S21, S1, S0
BLT             loc_21974C
TST             R9, #1
BEQ             loc_219520
LDR             R1, [R6,#0x114]
ADD             R0, R6, #0x104
MOV             R2, R0
MOV             R0, #0xFFFFFFFF
LDR             R7, [R2,#0xC]
SUB             R4, R1, #0x38 ; '8'
B               loc_219530
LDRH            R1, [R4,#0x26]
CMP             R1, #0
LDRNE           R0, [R11]
LDREQ           R0, [R4,#0x28]
BLNE            sub_528EB0
CMP             R0, #0
NOP
BEQ             loc_219460
STR             R7, [SP,#0x108+var_108]
LDRB            R3, [R6,#0xF0]
ADD             R2, R4, #0x2C ; ','
MOV             R1, R4
BL              sub_5C53F4
NOP
NOP
B               loc_219460
LDR             R1, [R6,#0x114]
LDR             R4, [R6,#0x110]
MOV             R0, #1
SUB             R7, R1, #0x38 ; '8'
CMP             R4, R7
RSBNE           R8, R0, R0,LSL#3
BEQ             loc_219744
ADD             R5, R4, R8,LSL#3
VLDR            S3, [R4]
VLDR            S5, [R4,#4]
VLDR            S2, [R4,#8]
VLDR            S4, [R5,#8]
LDR             R0, [R10]
VLDM            R5, {S0-S1}
VSUB.F32        S17, S4, S2
TST             R0, #1
VSUB.F32        S18, S0, S3
VSUB.F32        S16, S1, S5
VMUL.F32        S0, S18, S18
VMLA.F32        S0, S16, S16
VMLA.F32        S0, S17, S17
VSQRT.F32       S20, S0
BNE             loc_2195AC
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_2195AC
VMOV.F32        S0, S23
LDR             R0, =flt_711FE4
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
VMUL.F32        S0, S18, S18
LDR             R0, =flt_711FE4
VMLA.F32        S0, S16, S16
VMLA.F32        S0, S17, S17
VCMP.F32        S0, S23
VMRS            APSR_nzcv, FPSCR
BNE             loc_2195D8
VLDR            S19, [R0]
VLDR            S18, [R0,#(flt_711FE8 - 0x711FE4)]
VLDR            S17, [R0,#(flt_711FEC - 0x711FE4)]
B               loc_2195EC
VSQRT.F32       S1, S0
VDIV.F32        S0, S24, S1
VMUL.F32        S19, S18, S0
VMUL.F32        S18, S16, S0
VMUL.F32        S17, S17, S0
VSUB.F32        S0, S20, S21
LDRB            R0, [R4,#0x24]
LDRB            R2, [R5,#0x24]
MOV             R1, #0
TST             R0, #3
MOVEQ           R1, #1
TST             R2, #3
ADDEQ           R1, R1, #1
ANDEQ           R1, R1, #0xFF
CMP             R1, #2
VMUL.F32        S16, S0, S22
VMULNE.F32      S16, S16, S25
TST             R0, #3
BNE             loc_219694
VLDR            S3, [R4]
MOV             R2, #1
MOV             R1, R4
ADD             R0, SP, #0x108+var_C4
VMUL.F32        S2, S19, S16
VMUL.F32        S1, S18, S16
VMUL.F32        S0, S17, S16
VADD.F32        S2, S3, S2
VSTR            S2, [R4]
VLDR            S2, [R4,#4]
VADD.F32        S1, S2, S1
VSTR            S1, [R4,#4]
VLDR            S1, [R4,#8]
VADD.F32        S0, S1, S0
VSTR            S0, [R4,#8]
LDRB            R3, [R6,#0xF0]
BL              sub_14C73C
VLDR            S1, [SP,#0x108+var_C0]
VLDR            S0, [R6,#0x134]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_219694
VSTR            S0, [SP,#0x108+var_C0]
LDRB            R2, [R6,#0xF0]
MOV             R3, #1
ADD             R1, SP, #0x108+var_C4
MOV             R0, R4
BL              sub_14C73C
LDRB            R0, [R5,#0x24]
TST             R0, #3
BNE             loc_219738
VMUL.F32        S2, S19, S16
VLDR            S3, [R5]
VMUL.F32        S1, S18, S16
VMUL.F32        S0, S17, S16
MOV             R2, #1
MOV             R1, R5
ADD             R0, SP, #0x108+var_E0
VSUB.F32        S2, S3, S2
VSTR            S2, [R5]
VLDR            S2, [R5,#4]
VSUB.F32        S1, S2, S1
VSTR            S1, [R5,#4]
VLDR            S1, [R5,#8]
VSUB.F32        S0, S1, S0
VSTR            S0, [R5,#8]
LDRB            R3, [R6,#0xF0]
BL              sub_14C73C
VLDR            S1, [SP,#0x108+var_DC]
VLDR            S0, [R6,#0x134]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_219738
VSTR            S0, [SP,#0x108+var_DC]
LDRB            R2, [R6,#0xF0]
MOV             R3, #1
B               loc_21972C
DCD off_6CE970
DCFS 0.0039062
DCFS 0.0
DCFS 0.5
DCD 0x92492493
DCFS 1.0
DCD dword_6E1330
DCFS 2.0
DCD flt_711FE4
ADD             R1, SP, #0x108+var_E0
MOV             R0, R5
BL              sub_14C73C
CMP             R5, R7
MOV             R4, R5
BNE             loc_21953C
SUBS            R9, R9, #1
BPL             loc_2194BC
LDRB            R0, [R6,#0x139]
CMP             R0, #0
BEQ             loc_219938
VMOV.F32        S5, S23
LDR             R4, =0x3727C5AC
MOV             R12, #0
TST             R12, #1
LDRNE           R0, [R6,#0x114]
LDRNE           R2, [R6,#0x110]
MOVNE           R1, #0xFFFFFFFF
SUBNE           R0, R0, #0x38 ; '8'
ADDEQ           R0, R6, #0x110
MOVEQ           R1, #1
LDMEQ           R0, {R0,R2}
SUBEQ           R2, R2, #0x38 ; '8'
CMP             R0, R2
RSBNE           R3, R1, R1,LSL#3
BEQ             loc_21992C
LDRB            R1, [R0,#0x24]
MOV             R5, #0
TST             R1, #3
ADD             R1, R0, R3,LSL#3
MOVEQ           R5, #1
LDRB            R7, [R1,#0x24]
TST             R7, #3
ORREQ           R5, R5, #2
CMP             R5, #1
BEQ             loc_219878
CMP             R5, #2
CMPNE           R5, #3
BNE             loc_219920
VLDR            S0, [R0]
VLDR            S1, [R1]
VLDR            S3, [R0,#8]
VLDR            S4, [R1,#8]
VSUB.F32        S2, S0, S1
VLDR            S6, [R0,#4]
VLDR            S7, [R1,#4]
VSUB.F32        S4, S3, S4
VSUB.F32        S1, S6, S7
VMUL.F32        S3, S2, S2
VMLA.F32        S3, S1, S1
VMOV.F32        S6, S3
VMLA.F32        S6, S4, S4
VSQRT.F32       S0, S6
VSUB.F32        S0, S0, S21
VMOV            R0, S0
VMOV            S0, R0
VCMPE.F32       S0, S5
VMRS            APSR_nzcv, FPSCR
BGE             loc_219824
VMOV            S6, R0
VNEG.F32        S6, S6
VMOV            R0, S6
CMP             R0, R4
BLE             loc_219920
VMLA.F32        S3, S4, S4
VSQRT.F32       S7, S3
VDIV.F32        S6, S24, S7
VMUL.F32        S3, S2, S6
VMUL.F32        S1, S1, S6
VMUL.F32        S2, S4, S6
VMUL.F32        S3, S3, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S2, S0
VLDR            S2, [R1]
VADD.F32        S2, S2, S3
VSTR            S2, [R1]
VLDR            S2, [R1,#4]
VADD.F32        S1, S2, S1
VSTR            S1, [R1,#4]
VLDR            S1, [R1,#8]
VADD.F32        S0, S1, S0
VSTR            S0, [R1,#8]
B               loc_219920
VLDR            S2, [R1]
VLDR            S6, [R0]
VLDR            S1, [R1,#4]
VLDR            S4, [R0,#4]
VSUB.F32        S2, S2, S6
VLDR            S0, [R1,#8]
VLDR            S3, [R0,#8]
VSUB.F32        S1, S1, S4
VSUB.F32        S4, S0, S3
VMUL.F32        S3, S2, S2
VMLA.F32        S3, S1, S1
VMOV.F32        S6, S3
VMLA.F32        S6, S4, S4
VSQRT.F32       S0, S6
VSUB.F32        S0, S0, S21
VCMPE.F32       S0, S5
VMRS            APSR_nzcv, FPSCR
VMOVGE          R5, S0
BGE             loc_2198D0
VMOV.F32        S6, S0
VNEG.F32        S6, S6
VMOV            R5, S6
CMP             R5, R4
BLE             loc_219920
VMLA.F32        S3, S4, S4
VSQRT.F32       S7, S3
VDIV.F32        S6, S24, S7
VMUL.F32        S3, S2, S6
VMUL.F32        S1, S1, S6
VMUL.F32        S2, S4, S6
VMUL.F32        S3, S3, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S2, S0
VLDR            S2, [R0]
VADD.F32        S2, S2, S3
VSTR            S2, [R0]
VLDR            S2, [R0,#4]
VADD.F32        S1, S2, S1
VSTR            S1, [R0,#4]
VLDR            S1, [R0,#8]
VADD.F32        S0, S1, S0
VSTR            S0, [R0,#8]
CMP             R1, R2
MOV             R0, R1
BNE             loc_219794
ADD             R12, R12, #1
CMP             R12, #2
BLT             loc_219764
VLDR            S0, [R6,#0x12C]
ADD             R4, R6, #0x110
VMUL.F32        S16, S0, S0
LDM             R4, {R4,R7}
CMP             R4, R7
BEQ             loc_219D2C
VDIV.F32        S17, S24, S26
VLDR            S18, =1.4062
VLDR            S19, =90.0
MOV             R8, R10
MOV             R9, #0x300
VLDM            R4, {S1-S2}
VCMP.F32        S16, S23
VLDR            S5, [R4,#0xC]
VLDR            S4, [R4,#0x10]
VLDR            S0, [R4,#8]
VLDR            S3, [R4,#0x14]
VSUB.F32        S1, S1, S5
VSUB.F32        S2, S2, S4
VSUB.F32        S0, S0, S3
ADD             R0, R4, #0x18
VMUL.F32        S1, S1, S17
VMUL.F32        S2, S2, S17
VMUL.F32        S3, S0, S17
VLDR            S0, [R6,#0x128]
VMRS            APSR_nzcv, FPSCR
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S3, S0
VSTR            S0, [R4,#0x20]
VSTM            R0, {S1-S2}
BEQ             loc_219A24
ADD             R0, R4, #0x18
VLDM            R0, {S0-S2}
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S1, S1
VMLA.F32        S0, S2, S2
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_219A24
LDR             R0, [R8]
TST             R0, #1
BNE             loc_219A14
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_219A14
VMOV.F32        S0, S23
LDR             R0, =flt_711FE4
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R2, =flt_711FE4
ADD             R3, R4, #0x18
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
LDRB            R0, [R4,#0x24]
LDM             R4, {R1-R3}
TST             R0, #4
ADD             R0, R4, #0xC
STM             R0, {R1-R3}
BEQ             loc_219D20
LDRH            R1, [R4,#0x26]
CMP             R1, #0
LDREQ           R5, [R4,#0x28]
BEQ             loc_219A58
LDR             R0, [R11]
BL              sub_528EB0
MOV             R5, R0
CMP             R5, #0
BEQ             loc_219D20
LDRB            R0, [R4,#0x25]
CMP             R0, #0
BEQ             loc_219C50
ADD             R0, R4, #0x38 ; '8'
CMP             R0, R7
BNE             loc_219A9C
LDR             R0, [R4,#-0x38]
LDR             R1, [R4,#-0x34]
LDR             R2, [R4,#-0x30]
ADD             R3, SP, #0x108+var_8C
STM             R3, {R0-R2}
ADD             R3, SP, #0x108+var_E4
LDM             R4, {R0-R2}
STM             R3, {R0-R2}
B               loc_219AC0
LDM             R4, {R1-R3}
ADD             R10, SP, #0x108+var_8C
STM             R10, {R1-R3}
LDR             R1, [R0,#4]
LDR             R2, [R0]
LDR             R0, [R0,#8]
STR             R1, [SP,#0x108+var_E0]
STR             R2, [SP,#0x108+var_E4]
STR             R0, [SP,#0x108+var_DC]
ADD             R1, SP, #0x108+var_8C
LDRB            R3, [R6,#0xF0]
MOV             R2, #0
MOV             R0, R1
BL              sub_14C73C
ADD             R1, SP, #0x108+var_E4
LDRB            R3, [R6,#0xF0]
MOV             R2, #0
MOV             R0, R1
BL              sub_14C73C
VLDR            S2, [SP,#0x108+var_E4]
VLDR            S5, [SP,#0x108+var_8C]
VLDR            S1, [SP,#0x108+var_E0]
VLDR            S4, [SP,#0x108+var_88]
VLDR            S0, [SP,#0x108+var_DC]
VLDR            S3, [SP,#0x108+var_84]
VSUB.F32        S2, S2, S5
VSUB.F32        S1, S1, S4
VSUB.F32        S0, S0, S3
ADD             R0, SP, #0x108+var_D4
VSTR            S2, [SP,#0x108+var_AC]
VSTR            S1, [SP,#0x108+var_A8]
VSTR            S0, [SP,#0x108+var_A4]
LDR             R1, [R11]
ADD             R1, R1, #0x10C000
ADD             R1, R1, #0x580
BL              sub_142564
ADD             R2, SP, #0x108+var_AC
ADD             R1, SP, #0x108+var_D4
MOV             R0, R2
BL              sub_141EFC
VMOV.F32        S20, S23
VMOV.F32        S0, S20
VSTR            S0, [SP,#0x108+var_A4]
VLDR            S2, [SP,#0x108+var_AC]
VLDR            S1, [SP,#0x108+var_A8]
VMUL.F32        S3, S2, S2
VMLA.F32        S3, S1, S1
VMLA.F32        S3, S0, S0
VCMP.F32        S3, S0
VMRS            APSR_nzcv, FPSCR
BNE             loc_219B7C
VMOV.F32        S2, S0
VMOV.F32        S1, S0
ADD             R0, SP, #0x108+var_AC
VSTM            R0, {S0-S2}
B               loc_219B9C
VSQRT.F32       S4, S3
VDIV.F32        S3, S24, S4
VMUL.F32        S2, S2, S3
VMUL.F32        S1, S1, S3
VMUL.F32        S0, S0, S3
VSTR            S2, [SP,#0x108+var_AC]
VSTR            S1, [SP,#0x108+var_A8]
VSTR            S0, [SP,#0x108+var_A4]
LDR             R0, [R8]
TST             R0, #1
BNE             loc_219BD4
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_219BD4
LDR             R0, =flt_711FE4
VSTR            S20, [R0]
VSTR            S20, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S20, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
VLDR            S1, [SP,#0x108+var_AC]
VLDR            S0, [R0]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
BNE             loc_219C14
VLDR            S2, [R0,#(flt_711FE8 - 0x711FE4)]
VLDR            S0, [SP,#0x108+var_A8]
VCMP.F32        S0, S2
VMRS            APSR_nzcv, FPSCR
BNE             loc_219C14
VLDR            S2, [R0,#(flt_711FEC - 0x711FE4)]
VLDR            S0, [SP,#0x108+var_A4]
VCMP.F32        S0, S2
VMRS            APSR_nzcv, FPSCR
BEQ             loc_219C50
VLDR            S0, [SP,#0x108+var_A8]
BL              sub_4645C0
VMUL.F32        S0, S0, S18
LDRB            R0, [R4,#0x25]
CMP             R0, #2
VADDEQ.F32      S0, S0, S19
BL              sub_47F30C
VSTR            S20, [SP,#0x108+var_9C]
VSTR            S20, [SP,#0x108+var_98]
VSTR            S0, [SP,#0x108+var_94]
LDR             R2, [R5]
MOV             R0, R5
ADD             R1, SP, #0x108+var_9C
LDR             R2, [R2,#0x38]
BLX             R2
LDRB            R3, [R6,#0xF0]
LDRB            R2, [R5,#0xF0]
MOV             R1, R4
ADD             R0, SP, #0x108+var_C0
BL              sub_14C73C
LDR             R0, [R5]
ADD             R1, SP, #0x108+var_C0
LDR             R2, [R0,#0x20]
MOV             R0, R5
BLX             R2
MOV             R3, #0
MOV             R2, #1
ADD             R1, SP, #0x108+var_88
MOV             R0, R5
STR             R9, [SP,#0x108+var_108]
BL              sub_5C4A88
ADD             R2, R4, #0x2C ; ','
ADD             R1, SP, #0x108+var_88
ADD             R0, SP, #0x108+var_E4
BL              sub_1169FC
ADD             R1, SP, #0x108+var_E4
LDRB            R2, [R5,#0xF0]
MOV             R3, #0
MOV             R0, R1
BL              sub_14C73C
ADD             R1, R5, #0x24 ; '$'
ADD             R2, SP, #0x108+var_E4
VLDM            R1, {S3-S5}
ADD             R1, SP, #0x108+var_E4
MOV             R0, R5
VLDM            R2, {S0-S2}
ADD             R5, R5, #0x24 ; '$'
VSUB.F32        S0, S3, S0
VSUB.F32        S2, S5, S2
VSUB.F32        S1, S4, S1
VSTM            R1, {S0-S2}
VLDR            S2, [R0,#0x2C]
VLDM            R1, {S3-S5}
ADD             R1, SP, #0x108+var_CC
VLDM            R5, {S0-S1}
VADD.F32        S2, S2, S5
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S4
VSTM            R1, {S0-S2}
B               loc_219D10
DCD 0x3727C5AC
DCFS 1.4062
DCFS 90.0
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, SP, #0x108+var_CC
BLX             R2
ADD             R4, R4, #0x38 ; '8'
CMP             R4, R7
BNE             loc_219964
ADD             SP, SP, #0xB4
VPOP            {D8-D13}
POP             {R4-R11,PC}
