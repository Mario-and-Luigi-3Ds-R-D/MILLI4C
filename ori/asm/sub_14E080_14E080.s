PUSH            {R4-R11,LR}
MOV             R5, R0
MOV             R6, R1
VPUSH           {D8-D9}
SUB             SP, SP, #0x34
LDRB            R0, [R0,#0xF2]
CMP             R0, #0
BEQ             loc_14E548
LDR             R0, [R5]
LDR             R1, [R0,#0x4C]
MOV             R0, R5
BLX             R1
MOV             R7, R0
LDR             R0, [R5]
LDR             R1, [R0,#0x50]
MOV             R0, R5
BLX             R1
CMP             R7, #0
BEQ             loc_14E580
ADD             R0, SP, #0x68+var_48
BL              sub_14B820
LDR             R0, [R5]
MOV             R2, #1
ADD             R1, SP, #0x68+var_48
LDR             R3, [R0,#0x44]
MOV             R0, R5
BLX             R3
LDRB            R0, [R5,#0x3A8]
CMP             R0, #0
BEQ             loc_14E364
LDRB            R0, [SP,#0x68+var_48]
LDRB            R9, [SP,#0x68+var_40]
LDRB            R2, [SP,#0x68+var_48+1]
LDRB            R8, [SP,#0x68+var_40+1]
LDRB            R1, [SP,#0x68+var_48+3]
LDRB            R3, [SP,#0x68+var_40+3]
SMULBB          R0, R0, R9
LDRB            R12, [SP,#0x68+var_48+2]
LDRB            R4, [SP,#0x68+var_40+2]
SMULBB          R8, R2, R8
SMULBB          R3, R1, R3
ADD             R1, R0, R0,LSL#7
SMULBB          R2, R12, R4
ADD             R1, R1, R0,LSL#15
ADD             R4, R8, R8,LSL#7
ADD             R0, R4, R8,LSL#15
ADD             R12, R2, R2,LSL#7
MOV             R1, R1,LSR#23
ADD             R12, R12, R2,LSL#15
ADD             R4, R3, R3,LSL#7
STRB            R1, [SP,#0x68+var_68]
ADD             R2, R4, R3,LSL#15
MOV             R0, R0,LSR#23
STRB            R0, [SP,#0x68+var_68+1]
MOV             R3, R12,LSR#23
MOV             R2, R2,LSR#23
STRB            R3, [SP,#0x68+var_68+2]
STRB            R2, [SP,#0x68+var_68+3]
MOV             R2, SP
MOV             R1, #0
MOV             R0, R7
BL              sub_12C9C4
LDRB            R1, [SP,#0x68+var_44]
LDRB            R2, [SP,#0x68+var_3C]
MOV             R0, #0xFF
LDRB            R12, [SP,#0x68+var_3C+3]
ADD             R3, R1, R2
CMP             R3, #0xFF
MOVGT           R3, R0
LDRB            R0, [SP,#0x68+var_44+1]
LDRB            R1, [SP,#0x68+var_3C+1]
LDRB            R2, [SP,#0x68+var_3C+2]
STRB            R3, [SP,#0x68+var_68]
ADD             R0, R0, R1
CMP             R0, #0xFF
MOV             R1, #0xFF
MOVGT           R0, R1
LDRB            R1, [SP,#0x68+var_44+2]
STRB            R0, [SP,#0x68+var_68+1]
MOV             R0, R7
ADD             R1, R1, R2
CMP             R1, #0xFF
MOV             R2, #0xFF
MOVGT           R1, R2
LDRB            R2, [SP,#0x68+var_44+3]
STRB            R1, [SP,#0x68+var_68+2]
MOV             R1, #1
ADD             R2, R2, R12
CMP             R2, #0xFF
MOV             R12, #0xFF
MOVGT           R2, R12
STRB            R2, [SP,#0x68+var_68+3]
MOV             R2, SP
BL              sub_12C9C4
LDRB            R0, [R5,#0x3A9]
CMP             R0, #0
BEQ             loc_14E25C
LDR             R9, =unk_656560
MOV             R4, #0
MOV             R8, #1
LDRB            R0, [R5,#0x3A9]
TST             R0, R8,LSL R4
BEQ             loc_14E250
LDRB            R1, [R9,R4]
MOV             R0, R7
BL              sub_5F163C
ADD             R1, R5, R4
LDR             R0, [R0]
LDRB            R1, [R1,#0x3AA]
ADD             R2, SP, #0x68+var_5C
BIC             R0, R0, #0xFF000000
ORR             R0, R0, R1,LSL#24
STR             R0, [SP,#0x68+var_5C]
LDRB            R1, [R9,R4]
MOV             R0, R7
BL              sub_12C9C4
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_14E210
MOV             R0, #0x300
STR             R0, [SP,#0x68+var_68]
MOV             R3, #0
MOV             R2, #1
ADD             R1, R7, #0x20 ; ' '
MOV             R0, R5
BL              sub_5C4A88
LDRB            R0, [R5,#0xF8]
CMP             R0, #0
BEQ             loc_14E2A8
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_5E824C
VLDR            S1, [R7,#0x4C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGT             loc_14E548
LDRB            R2, [R5,#0xFC]
MOV             R0, R5
MOV             R1, R7
CMP             R2, #1
BLEQ            sub_14C2C4
LDRB            R0, [R7,#0x6D]
ADD             R4, R6, #4
LDR             R9, =0xBF800000
CMP             R0, #0
LDRB            R0, [R7,#0x6F]
LDR             R8, [R7,#4]
MOVNE           R6, #1
MOVEQ           R6, #0
VLDR            S17, =-1.0
VLDR            S18, =1.0
VLDR            S19, =1.6777e7
VLDR            S16, =0.0
TST             R0, #1
BEQ             loc_14E3D0
VLDR            S0, [R7,#0x4C]
CMP             R6, #0
MOVEQ           R0, #0
VNEG.F32        S0, S0
BEQ             loc_14E358
VLDR            S1, [R4,#0x7C]
VLDR            S4, [R4,#0x78]
VLDR            S2, [R4,#0x84]
VLDR            S3, [R4,#0x80]
VMLA.F32        S1, S0, S4
VMLA.F32        S2, S0, S3
VDIV.F32        S0, S1, S2
VMOV            R0, S0
CMP             R0, R9
VMOVHI          R0, S17
BHI             loc_14E344
VMOV            S0, R0
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVGT          R0, S16
VMOV            S0, R0
VADD.F32        S0, S0, S18
VMUL.F32        S0, S0, S19
VCVT.U32.F32    S0, S0
VMOV            R0, S0
CMP             R6, #0
BEQ             loc_14E568
B               loc_14E468
LDR             R0, [SP,#0x68+var_48]
MOV             R2, SP
MOV             R1, #0
STR             R0, [SP,#0x68+var_68]
MOV             R0, R7
BL              sub_12C9C4
LDR             R0, [SP,#0x68+var_44]
MOV             R2, SP
MOV             R1, #1
STR             R0, [SP,#0x68+var_68]
MOV             R0, R7
BL              sub_12C9C4
LDR             R0, [SP,#0x68+var_40]
MOV             R2, SP
MOV             R1, #2
STR             R0, [SP,#0x68+var_68]
MOV             R0, R7
BL              sub_12C9C4
LDR             R0, [SP,#0x68+var_3C]
MOV             R2, SP
MOV             R1, #3
STR             R0, [SP,#0x68+var_68]
MOV             R0, R7
BL              sub_12C9C4
NOP
NOP
B               loc_14E1F8
CMP             R6, #0
BEQ             loc_14E554
VLDR            S1, [R7,#0x2C]
VLDR            S2, [R7,#0x3C]
VLDR            S0, [R7,#0x4C]
CMP             R6, #0
MOVEQ           R0, #0
BEQ             loc_14E460
VLDR            S10, [R4,#0x68]
ADD             R0, R4, #0x6C ; 'l'
VLDR            S7, [R4,#0x74]
VMUL.F32        S1, S1, S10
VLDM            R0, {S8-S9}
ADD             R0, R4, #0x7C ; '|'
VLDR            S6, [R4,#0x78]
VLDR            S3, [R4,#0x84]
VLDM            R0, {S4-S5}
VMLA.F32        S1, S2, S8
VMLA.F32        S1, S0, S9
VADD.F32        S0, S7, S1
VMLA.F32        S4, S0, S6
VMLA.F32        S3, S0, S5
VDIV.F32        S0, S4, S3
VMOV            R0, S0
CMP             R0, R9
VMOVHI          R0, S17
BHI             loc_14E44C
VMOV            S0, R0
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVGT          R0, S16
VMOV            S0, R0
VADD.F32        S0, S0, S18
VMUL.F32        S0, S0, S19
VCVT.U32.F32    S0, S0
VMOV            R0, S0
CMP             R6, #0
BEQ             loc_14E568
BIC             R3, R1, #0x60000000
LDR             R1, =0xE000001F
MOV             R2, #0x1FFFFFFF
ORR             R3, R3, #0xC0000000
AND             R0, R2, R0,LSL#5
AND             R1, R1, R3
ORR             R0, R0, R1
BIC             R0, R0, #0x1F
AND             R12, R8, #3
ORR             R0, R0, #4
ORR             R8, R0, R12
MOV             R0, R4
MOV             R10, #0
LDR             R1, [R0,#0x14]
LDR             R3, [R0,#8]
LDR             R2, [R0,#0x10]
MOV             R9, #1
RSB             R12, R1, R1,LSL#3
MOV             R11, R10
ADD             R6, R3, R12,LSL#2
STR             R6, [R2,R1,LSL#2]
LDR             R1, [R0,#0x14]
MOV             R4, R10
ADD             R1, R1, #1
STR             R1, [R0,#0x14]
LDR             R0, [R0,#0x1C]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
STRB            R9, [R6]
STR             R0, [R6,#0x18]
ADD             R0, R6, #8
STR             R4, [R6,#0x14]
STR             R8, [R6,#4]
STM             R0, {R7,R10,R11}
LDR             R0, [R5,#0x40]
CMP             R0, #0
CMPNE           R6, #0
BEQ             loc_14E548
TST             R8, #0x80000000
MOV             R1, R8
BEQ             loc_14E548
MOV             R2, R1,LSL#3
MOV             R3, #0xFFFFFF
ADD             R0, R0, R2,LSR#8
CMP             R3, R0
MOVLE           R0, #0xFFFFFF
BLE             loc_14E530
CMP             R0, #0
MOVLE           R0, #0
LDR             R3, =0xE000001F
MOV             R2, #0x1FFFFFFF
AND             R0, R2, R0,LSL#5
AND             R1, R8, R3
ORR             R0, R0, R1
STR             R0, [R6,#4]
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8-D9}
POP             {R4-R11,PC}
NOP
BL              sub_4635D8
VLDM            R0, {S1-S2}
VLDR            S0, [R0,#8]
B               loc_14E3E4
BIC             R0, R1, #0x80000000
AND             R0, R0, #0x80000000
BIC             R1, R8, #0xFC000000
ORR             R0, R0, #0x44000000
ORR             R8, R0, R1
B               loc_14E494
CMP             R0, #0
BEQ             loc_14E548
MOV             R0, SP
BL              sub_14B820
LDR             R0, [R5]
MOV             R2, #1
MOV             R1, SP
LDR             R3, [R0,#0x44]
MOV             R0, R5
BLX             R3
LDRB            R0, [SP,#0x68+var_64]
LDRB            R1, [SP,#0x68+var_5C]
LDRB            R2, [SP,#0x68+var_5C+1]
LDRB            R12, [SP,#0x68+var_5C+3]
ADD             R1, R1, R0
CMP             R1, #0xFF
MOV             R0, #0xFF
MOVGT           R1, R0
LDRB            R0, [SP,#0x68+var_63]
STRB            R1, [SP,#0x68+var_58]
ADD             R1, SP, #0x68+var_58
ADD             R3, R0, R2
CMP             R3, #0xFF
MOV             R0, #0xFF
MOVGT           R3, R0
LDRB            R0, [SP,#0x68+var_62]
LDRB            R2, [SP,#0x68+var_5C+2]
STRB            R3, [SP,#0x68+var_57]
MOV             R3, #7
ADD             R0, R0, R2
CMP             R0, #0xFF
MOV             R2, #0xFF
MOVGT           R0, R2
LDRB            R2, [SP,#0x68+var_61]
STRB            R0, [SP,#0x68+var_56]
ADD             R2, R2, R12
CMP             R2, #0xFF
MOV             R12, #0xFF
MOVGT           R2, R12
STRB            R2, [SP,#0x68+var_55]
LDR             R0, [R5,#0x3B0]
MOV             R2, #4
BL              sub_4FD30C
LDRB            R0, [SP,#0x68+var_68]
LDRB            R7, [SP,#0x68+var_60]
LDRB            R2, [SP,#0x68+var_68+1]
LDRB            R6, [SP,#0x68+var_5F]
LDRB            R1, [SP,#0x68+var_68+2]
LDRB            R4, [SP,#0x68+var_5E]
SMULBB          R0, R0, R7
LDRB            R3, [SP,#0x68+var_68+3]
LDRB            R12, [SP,#0x68+var_5D]
SMULBB          R2, R2, R6
SMULBB          R1, R1, R4
ADD             R4, R0, R0,LSL#7
SMULBB          R3, R3, R12
ADD             R4, R4, R0,LSL#15
ADD             R12, R2, R2,LSL#7
ADD             R12, R12, R2,LSL#15
MOV             R2, R4,LSR#23
ADD             R0, R1, R1,LSL#7
ADD             R0, R0, R1,LSL#15
ADD             R4, R3, R3,LSL#7
ADD             R4, R4, R3,LSL#15
STRB            R2, [SP,#0x68+var_58]
MOV             R1, R12,LSR#23
MOV             R3, R0,LSR#23
STRB            R1, [SP,#0x68+var_57]
STRB            R3, [SP,#0x68+var_56]
MOV             R0, R4,LSR#23
MOV             R3, #0xF
MOV             R2, #5
STRB            R0, [SP,#0x68+var_55]
B               loc_14E6C8
DCD unk_656560
DCD off_6CE970
DCD 0xBF800000
DCFS -1.0
DCFS 1.0
DCFS 1.6777e7
DCFS 0.0
DCD 0xE000001F
LDR             R0, [R5,#0x3B0]
ADD             R1, SP, #0x68+var_58
BL              sub_4FD30C
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8-D9}
POP             {R4-R11,PC}
