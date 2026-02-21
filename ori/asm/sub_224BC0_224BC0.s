PUSH            {R4-R10,LR}
MOV             R4, R0
ADD             R6, R0, #0x400
ADD             R7, R0, #0x400
LDR             R8, =off_6CDA80
LDR             R2, =0x126F4
MOV             R10, #2
VPUSH           {D8}
SUB             SP, SP, #0x38
LDR             R1, [R0,#0x400]
LDR             R0, [R8]
VLDR            S16, =0.0
VLDR            S17, =1.0
CMP             R1, #5; switch 5 cases
LDR             R5, [R2,R0]
MOV             R9, #0
ADD             R7, R7, #0x6C ; 'l'
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_224C04; jumptable 00224C04 default case
DCD loc_224C20; jump table for switch statement
ADD             R0, R4, #8; jumptable 00224C04 case 0
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_224C04; jumptable 00224C04 default case
ADD             R0, R4, #0x400
ADD             R0, R0, #0x38 ; '8'
MOV             R7, R0
BL              sub_5A18EC
VSTR            S16, [R6,#0x44]
VSTR            S16, [R6,#0x3C]
VLDR            S1, [R5,#0x1F8]
VLDR            S0, [R5,#0x1FC]
MOV             R0, R7
BL              sub_5A1A48
LDR             R0, [R4,#0x46C]
LDR             R1, [R0]
LDR             R2, [R1,#8]
ADD             R1, SP, #0x60+var_40
BLX             R2
VLDR            S0, [SP,#0x60+var_3C]
VSTR            S0, [R6,#0x78]
LDR             R0, [R8]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2FC
LDR             R0, [R0]
LDR             R1, [R0,#0x4A0]
CMP             R1, R4
BNE             loc_224CAC
LDR             R0, [R0,#0x4A4]
VLDR            S1, [R4,#0x30]
VLDR            S2, [R0,#0x30]
VSUB.F32        S1, S1, S2
VADD.F32        S0, S1, S0
VSTR            S0, [R6,#0x78]
VLDR            S1, [R4,#0x2C]
VLDR            S0, [R4,#0x34]
VSTR            S16, [SP,#0x60+var_3C]
VLDR            S2, [SP,#0x60+var_40]
VLDR            S3, [SP,#0x60+var_38]
VLDR            S6, [R5,#0x338]
VSUB.F32        S5, S1, S2
VSUB.F32        S4, S0, S3
VMUL.F32        S5, S5, S5
VMLA.F32        S5, S16, S16
VMLA.F32        S5, S4, S4
VSQRT.F32       S4, S5
VCMPE.F32       S4, S6
VMRS            APSR_nzcv, FPSCR
VSUB.F32        S1, S2, S1
VSUB.F32        S0, S3, S0
VSTR            S1, [SP,#0x60+var_5C]
VSTR            S16, [SP,#0x60+var_58]
VSTR            S0, [SP,#0x60+var_54]
BHI             loc_224D1C
VLDR            S0, [R5,#0x33C]
ADD             R2, SP, #0x60+var_5C
MOV             R1, #0
ADD             R0, R4, #0x1E4
BL              sub_5A25D0
NOP
NOP
B               loc_224D78
VMUL.F32        S2, S1, S1
ADD             R2, SP, #0x60+var_5C
MOV             R1, #0
ADD             R0, R4, #0x1E4
VMLA.F32        S2, S16, S16
VMLA.F32        S2, S0, S0
VSQRT.F32       S4, S2
VDIV.F32        S3, S17, S4
VMUL.F32        S2, S1, S3
VMUL.F32        S1, S16, S3
VMUL.F32        S0, S0, S3
VSTR            S2, [SP,#0x60+var_5C]
VSTR            S1, [SP,#0x60+var_58]
VSTR            S0, [SP,#0x60+var_54]
VLDR            S3, [R5,#0x338]
VMUL.F32        S2, S2, S3
VMUL.F32        S1, S1, S3
VMUL.F32        S0, S0, S3
VSTR            S2, [SP,#0x60+var_5C]
VSTR            S1, [SP,#0x60+var_58]
VSTR            S0, [SP,#0x60+var_54]
VLDR            S0, [R5,#0x33C]
BL              sub_5A25D0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xC
ADD             R0, R4, #8
BL              sub_14C548
MOV             R0, #1
NOP
B               loc_225010
VLDR            S1, [R4,#0x30]; jumptable 00224C04 case 1
VLDR            S2, [R6,#0x78]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BHI             loc_224EA4
ADD             R0, R4, #0x1E4
BL              sub_5A26D0
ADD             R0, R4, #0x2C ; ','
ADD             R3, SP, #0x60+var_40
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R1, SP, #0x60+var_40
LDR             R0, [R6,#0x78]
STR             R0, [SP,#0x60+var_3C]
ADD             R0, R4, #8
BL              sub_14E984
VLDR            S0, [R5,#0x58]
VLDR            S1, [R5,#0x4C]
LDRD            R0, R1, [R5,#0x50]
VMUL.F32        S0, S0, S1
STRD            R0, R1, [SP,#0x60+var_34]
VSTR            S17, [SP,#0x60+var_2C]
ADD             R1, SP, #0x60+var_34
ADD             R0, R4, #0x160
BL              sub_5A2138
LDRB            R0, [R4,#4]
CMP             R0, #0
BEQ             loc_224E94
LDR             R0, [R7],#4
STR             R7, [SP,#0x60+var_5C]
MOV             R1, SP
STR             R0, [SP,#0x60+var_60]
LDR             R2, [R7,#4]
ADD             R0, SP, #0x60+var_5C
STR             R2, [SP,#0x60+var_58]
STR             R0, [R2]
STR             R0, [R7,#4]
LDR             R0, [R8]
BL              sub_22673C
LDR             R1, [SP,#0x60+var_58]
ADD             R0, SP, #0x60+var_5C
CMP             R1, R0
BNE             loc_224E88
LDR             R0, [SP,#0x60+var_60]
CMP             R0, #0
BEQ             loc_224E88
MOV             R6, R0
LDR             R0, [R8]
ADD             R5, R0, #0x12800
LDR             R0, [R6]
ADD             R5, R5, #0x10C
LDR             R1, [R0]
MOV             R0, R6
BLX             R1
LDR             R0, [R5,#4]
STR             R0, [R6]
STR             R6, [R5,#4]
LDR             R0, [R5,#8]
ADD             R0, R0, #1
STR             R0, [R5,#8]
LDRD            R0, R1, [SP,#0x60+var_5C]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R10, [R4,#0x400]
ADD             SP, SP, #0x38 ; '8'; jumptable 00224C04 default case
VPOP            {D8}
POP             {R4-R10,PC}
VLDR            S1, [R6,#0x3C]
VSTR            S16, [SP,#0x60+var_5C]
ADD             R2, SP, #0x60+var_5C
VMUL.F32        S1, S1, S0
MOV             R1, #2
ADD             R0, R4, #0x1E4
VSTR            S1, [SP,#0x60+var_58]
VSTR            S16, [SP,#0x60+var_54]
VLDR            S1, [R4,#0x30]
VLDR            S4, [R6,#0x3C]
VLDR            S2, [R6,#0x78]
VMOV.F32        S3, S1
VMLA.F32        S3, S4, S0
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
VSUBGT.F32      S0, S2, S1
VSTRGT          S0, [SP,#0x60+var_58]
VMOV.F32        S0, S17
BL              sub_5A2B20
ADD             SP, SP, #0x38 ; '8'
VPOP            {D8}
POP             {R4-R10,PC}
DCD off_6CDA80
DCFS 0.0
DCFS 1.0
DCD 0x126F4
ADD             R0, R0, #0x12400; jumptable 00224C04 case 2
ADD             R0, R0, #0x2FC
LDR             R0, [R0]
LDR             R1, [R0,#0x4A0]
CMP             R1, R4
BNE             loc_224F68
ADD             R1, R5, #0x32C
LDR             R0, [R0,#0x4A4]
VLDM            R1, {S0-S1}
ADD             R1, R0, #0x2C ; ','
LDM             R1, {R1,R2}
VSUB.F32        S0, S0, S1
VLDR            S1, [R0,#0x68]
LDR             R0, [R0,#0x34]
STR             R0, [SP,#0x60+var_58]
STMEA           SP, {R1,R2}
MOV             R1, SP
ADD             R0, R4, #8
VMUL.F32        S0, S0, S1
VMOV            S1, R2
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x60+var_5C]
BL              sub_14E984
ADD             R0, R4, #0x160
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_224C04; jumptable 00224C04 default case
LDR             R0, [R5,#0x5C]
VSTR            S16, [R4,#0x3A4]
STR             R0, [R4,#0x3A8]
MOV             R0, #3
STR             R0, [R4,#0x400]
ADD             SP, SP, #0x38 ; '8'
VPOP            {D8}
POP             {R4-R10,PC}
ADD             R0, R4, #0x3A4; jumptable 00224C04 case 3
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_224C04; jumptable 00224C04 default case
VLDR            S0, [R5,#0x58]
VLDR            S1, [R5,#0x4C]
LDR             R0, =dword_6E132C
VSUB.F32        S0, S17, S0
LDR             R0, [R0]
TST             R0, #1
VMUL.F32        S16, S0, S1
BNE             loc_224FFC
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_224FFC
LDR             R0, =flt_711FD8
VSTR            S17, [R0]
VSTR            S17, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S17, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
VMOV.F32        S0, S16
LDR             R1, =flt_711FD8
ADD             R0, R4, #0x160
BL              sub_5A2138
MOV             R0, #4
STR             R0, [R4,#0x400]
ADD             SP, SP, #0x38 ; '8'
VPOP            {D8}
POP             {R4-R10,PC}
ADD             R0, R4, #0x160; jumptable 00224C04 case 4
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_224C04; jumptable 00224C04 default case
LDR             R0, [R8]
LDR             R1, =0x126F8
MOV             R5, #5
LDR             R1, [R1,R0]
LDRB            R1, [R1]
CMP             R1, #2
BNE             loc_225060
BL              sub_5C96FC
CMP             R0, #0
NOP
BEQ             loc_2250B4
LDR             R0, [R4,#0x46C]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
BEQ             loc_2251B4
LDR             R0, [R8]
BL              sub_5C96FC
CMP             R0, #0
NOP
BEQ             loc_22514C
MOV             R0, R4
BL              sub_225254
LDR             R0, [R4,#0x480]
CMP             R0, #0
BEQ             loc_2251C8
NOP
BL              sub_533330
STR             R9, [R4,#0x480]
NOP
B               loc_2251C8
LDR             R0, [R4,#0x46C]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
BEQ             loc_225134
ADD             R0, R4, #0x2C ; ','
STRB            R10, [R4,#0x3FC]
STR             R9, [R4,#0x400]
LDM             R0, {R0-R2}
ADD             R3, R4, #0x400
ADD             R3, R3, #0x84
STM             R3, {R0-R2}
ADD             R0, R4, #0x490
BL              sub_5A18EC
VSTR            S16, [R6,#0x9C]
VSTR            S16, [R6,#0x94]
LDR             R0, [R8]
VMOV.F32        S0, S17
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
VLDR            S1, [R0,#0x60]
ADD             R0, R4, #0x490
BL              sub_5A1BAC
LDRB            R0, [R4,#4]
CMP             R0, #0
LDRNE           R0, [R8]
BLNE            sub_2280E0
STRB            R5, [R4,#0xF9]
NOP
B               loc_22513C
MOV             R0, R4
BL              sub_2255DC
LDR             R0, [R4,#0x480]
CMP             R0, #0
BEQ             loc_2251C8
B               loc_2250A0
ADD             R0, R4, #0x2C ; ','
STRB            R10, [R4,#0x3FC]
STR             R9, [R4,#0x400]
LDM             R0, {R0-R2}
ADD             R3, R4, #0x400
ADD             R3, R3, #0x84
STM             R3, {R0-R2}
ADD             R0, R4, #0x490
BL              sub_5A18EC
VSTR            S16, [R6,#0x9C]
VSTR            S16, [R6,#0x94]
LDR             R0, [R8]
VMOV.F32        S0, S17
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
VLDR            S1, [R0,#0x60]
ADD             R0, R4, #0x490
BL              sub_5A1BAC
LDRB            R0, [R4,#4]
CMP             R0, #0
LDRNE           R0, [R8]
BLNE            sub_2280E0
STRB            R5, [R4,#0xF9]
NOP
B               loc_2251C8
MOV             R0, R4
BL              sub_225380
LDR             R0, [R4,#0x480]
CMP             R0, #0
BNE             loc_2250A0
LDR             R0, [R7,#8]
ADD             R1, R7, #4
MOV             R6, #0
CMP             R0, R1
BNE             loc_22522C
LDR             R5, [R7]
CMP             R5, #0
BEQ             loc_22521C
LDR             R0, [R8]
ADD             R4, R0, #0x12800
LDR             R0, [R5]
ADD             R4, R4, #0x10C
LDR             R1, [R0]
MOV             R0, R5
BLX             R1
LDR             R0, [R4,#4]
STR             R0, [R5]
STR             R5, [R4,#4]
LDR             R0, [R4,#8]
ADD             R0, R0, #1
STR             R0, [R4,#8]
STR             R6, [R7]
ADD             SP, SP, #0x38 ; '8'
VPOP            {D8}
POP             {R4-R10,PC}
LDR             R2, [R7,#4]
ADD             R1, R7, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R7,#4]
STR             R1, [R7,#8]
B               loc_22521C
