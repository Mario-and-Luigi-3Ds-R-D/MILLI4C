PUSH            {R4-R11,LR}
MOV             R5, R0
LDR             R0, =off_6BC3B4
VPUSH           {D8-D9}
SUB             SP, SP, #0x64
STR             R0, [SP,#0x98+var_84]
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x1C]
MOV             R4, R0
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
CMP             R0, R4
BEQ             loc_291A44
LDR             R0, [R5,#4]
LDR             R1, [R4]
ADD             R0, R0, #0x12800
ADD             R0, R0, #4
ADD             R1, R1, #0x3F8
LDR             R0, [R0]
BL              sub_284734
LDR             R0, [R5,#4]
ADD             R4, R4, #0xC
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
CMP             R0, R4
NOP
BNE             loc_291A0C
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x1C]
MOV             R4, R0
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
CMP             R0, R4
NOP
BEQ             loc_291A98
LDR             R0, [R5,#4]
LDR             R1, [R4]
LDR             R0, [R0,#0x40]
BL              sub_28171C
LDR             R0, [R5,#4]
ADD             R4, R4, #0xC
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
CMP             R0, R4
NOP
BNE             loc_291A6C
LDR             R0, [R5,#4]
MOV             R9, #0
LDR             R6, [R0,#8]
CMP             R6, #0
BEQ             loc_291CA8
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
MOV             R8, R0
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x1C]
MOV             R4, R0
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
CMP             R0, R4
ADDNE           R7, R6, #0x10
BEQ             loc_291BA8
LDR             R1, [R4]
MOV             R0, R6
BL              sub_28F414
CMP             R0, #0
NOP
BNE             loc_291B8C
LDR             R0, [R4]
MOV             R1, #0
LDRB            R2, [R0,#0x454]
CMP             R2, #0
BNE             loc_291B40
ADD             R2, R0, #0x3F8
LDR             R0, [SP,#0x98+var_84]
ADD             R10, SP, #0x98+var_80
ADD             R1, SP, #0x98+var_84
MOV             R3, R7
LDR             R12, [R0,#0xC]
MOV             R0, R10
BLX             R12
LDRB            R0, [SP,#0x98+var_80]
MOV             R1, #1
CMP             R0, #0
MOVNE           R0, #1
BNE             loc_291B44
MOV             R0, #0
CMP             R1, #0
LDRNE           R1, [SP,#0x98+var_7C]
CMPNE           R1, #0
STRNE           R9, [SP,#0x98+var_7C]
CMP             R0, #0
BEQ             loc_291B8C
LDR             R0, [R6,#0xC]
LDR             R2, [R4]
MOV             R8, R4
ADD             R1, R0, #0x24 ; '$'
MOV             R0, R2
BL              sub_283618
MOV             R0, R6
NOP
BL              sub_28E968
NOP
NOP
B               loc_291BA8
LDR             R0, [R5,#4]
ADD             R4, R4, #0xC
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
CMP             R0, R4
NOP
BNE             loc_291AE0
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
CMP             R0, R8
NOP
BEQ             loc_291CA8
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x1C]
MOV             R4, R0
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
CMP             R0, R4
ADDNE           R7, R6, #0x10
BEQ             loc_291CA8
LDR             R1, [R4]
MOV             R0, R6
BL              sub_28F414
CMP             R0, #0
NOP
BNE             loc_291C8C
LDR             R0, [R4]
MOV             R1, #0
LDRB            R2, [R0,#0x454]
CMP             R2, #0
BNE             loc_291C48
ADD             R2, R0, #0x3F8
LDR             R0, [SP,#0x98+var_84]
ADD             R12, SP, #0x98+var_80
ADD             R1, SP, #0x98+var_84
MOV             R3, R7
LDR             R8, [R0,#0xC]
MOV             R0, R12
BLX             R8
LDRB            R0, [SP,#0x98+var_80]
MOV             R1, #1
CMP             R0, #0
MOVNE           R0, #1
BNE             loc_291C4C
MOV             R0, #0
CMP             R1, #0
LDRNE           R1, [SP,#0x98+var_7C]
CMPNE           R1, #0
STRNE           R9, [SP,#0x98+var_7C]
CMP             R0, #0
BEQ             loc_291C8C
LDR             R1, [R6,#0xC]
LDR             R0, [R4]
ADD             R1, R1, #0x24 ; '$'
BL              sub_283618
MOV             R0, R6
NOP
BL              sub_28E968
NOP
NOP
B               loc_291CA8
LDR             R0, [R5,#4]
ADD             R4, R4, #0xC
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
CMP             R0, R4
NOP
BNE             loc_291BE8
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x40]
BL              sub_5CD81C
CMP             R0, #0
NOP
BEQ             loc_291D28
LDR             R0, [R5,#4]
ADD             R2, SP, #0x98+var_88
ADD             R1, SP, #0x98+var_94
LDR             R0, [R0,#0x40]
BL              sub_5CD870
LDR             R0, [R5,#4]
ADD             R1, R0, #0x12400
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x3D8
ADD             R1, R1, #0x3DC
LDR             R4, [R0]
LDR             R0, [R1]
CMP             R0, R4
BEQ             loc_291D28
LDR             R0, [R4]
MOV             R2, #1
VLDR            S0, [SP,#0x98+var_88]
ADD             R1, SP, #0x98+var_94
BL              sub_299494
LDR             R0, [R5,#4]
ADD             R4, R4, #0xC
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x3DC
LDR             R0, [R0]
CMP             R0, R4
BNE             loc_291CF8
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x1C]
MOV             R11, R0
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
CMP             R0, R11
NOP
BEQ             loc_292018
ADD             R10, SP, #0x98+var_8C
VLDR            S17, =3.4028e38
VLDR            S18, =1.0
MOV             R0, #0
STR             R0, [SP,#0x98+var_98]
LDR             R0, [R5,#4]
VMOV.F32        S16, S17
MOV             R4, #0
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x3D8
LDM             R0, {R1,R2}
LDR             R0, =0x2AAAAAAB
SUB             R1, R2, R1
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#1
SUB             R6, R1, R0,ASR#31
LDR             R0, [R11]
CMP             R6, #0
ADD             R0, R0, #0x3F8
STR             R0, [SP,#0x98+var_80]
BLS             loc_291FFC
LDR             R0, [R5,#4]
ADD             R1, R4, R4,LSL#1
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x3B4
LDR             R0, [R0,#0x24]
LDR             R7, [R0,R1,LSL#2]
LDR             R1, [SP,#0x98+var_80]
MOV             R0, R7
BL              sub_5CDE90
CMP             R0, #0
NOP
BEQ             loc_291DF4
LDR             R3, [SP,#0x98+var_80]
ADD             R2, SP, #0x98+var_50
ADD             R1, SP, #0x98+var_94
MOV             R0, R7
BL              sub_5CDD70
CMP             R0, #0
MOVNE           R0, #1
BNE             loc_291DF8
MOV             R0, #0
CMP             R0, #0
STRB            R0, [R10,R4]
VLDRNE          S0, [SP,#0x98+var_94]
VCMPENE.F32     S16, S0
VMRSNE          APSR_nzcv, FPSCR
BLE             loc_291E28
ADD             R9, SP, #0x98+var_50
VMOV.F32        S16, S0
LDM             R9, {R0-R3,R8,R12}
ADD             R9, SP, #0x98+var_68
STR             R7, [SP,#0x98+var_98]
STM             R9, {R0-R3,R8,R12}
ADD             R4, R4, #1
CMP             R6, R4
BHI             loc_291DA4
LDR             R1, =0x7F7FFFFF
VMOV            R0, S16
CMP             R0, R1
BEQ             loc_291FFC
LDR             R0, [SP,#0x98+var_80]
LDR             R4, [SP,#0x98+var_80]
LDR             R0, [R0]
ADD             R4, R4, #0x34 ; '4'
LDR             R1, [R0,#0x20]
LDR             R0, [SP,#0x98+var_80]
BLX             R1
VLDR            S1, [R0]
VLDR            S0, [R4]
ADD             R2, SP, #0x98+var_74
ADD             R1, SP, #0x98+var_68
VSUB.F32        S1, S1, S0
VMLA.F32        S0, S16, S1
VSTR            S0, [SP,#0x98+var_74]
VLDR            S1, [R0,#4]
VLDR            S0, [R4,#4]
VSUB.F32        S1, S1, S0
VMLA.F32        S0, S16, S1
VSTR            S0, [SP,#0x98+var_70]
VLDR            S1, [R0,#8]
VLDR            S0, [R4,#8]
ADD             R0, SP, #0x98+var_50
VSUB.F32        S1, S1, S0
VMLA.F32        S0, S16, S1
VSTR            S0, [SP,#0x98+var_6C]
BL              sub_28C568
LDR             R0, [R5,#4]
MOV             R8, #0
CMP             R6, #0
MOV             R4, R8
LDR             R7, [R0,#0x14]
BLS             loc_291F3C
LDRB            R0, [R10,R4]
CMP             R0, #0
BEQ             loc_291F30
LDR             R0, [R5,#4]
ADD             R9, R4, R4,LSL#1
VLDR            S0, [R7,#0x98]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x3D8
ADD             R1, SP, #0x98+var_50
LDR             R0, [R0]
LDR             R0, [R0,R9,LSL#2]
BL              sub_5CDF00
ADD             R8, R8, R0
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
BL              sub_5CDAE0
CMP             R0, #2
LDR             R0, [R5,#4]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x3D8
LDR             R0, [R0]
LDR             R0, [R0,R9,LSL#2]
BEQ             loc_292038
VLDR            S0, [R7,#0xA0]
MOV             R2, #0
ADD             R1, SP, #0x98+var_50
BL              sub_299494
ADD             R4, R4, #1
CMP             R4, R6
BCC             loc_291EC4
LDR             R0, [R7,#0x9C]
CMP             R0, R8
BHI             loc_291FFC
LDR             R0, [SP,#0x98+var_80]
LDR             R0, [R0]
LDR             R1, [R0,#0x20]
LDR             R0, [SP,#0x98+var_80]
BLX             R1
LDR             R1, [SP,#0x98+var_80]
VLDR            S0, [R0]
VLDR            S1, [R0,#4]
ADD             R1, R1, #0x34 ; '4'
ADD             R2, SP, #0x98+var_74
VLDR            S3, [R1]
VLDR            S2, [R1,#4]
VLDR            S4, [R1,#8]
VSUB.F32        S0, S0, S3
VSUB.F32        S1, S1, S2
VLDR            S3, [R0,#8]
LDR             R0, [R11]
LDR             R1, [SP,#0x98+var_98]
VMUL.F32        S2, S0, S0
VSUB.F32        S0, S3, S4
VMLA.F32        S2, S1, S1
VSUB.F32        S1, S18, S16
VMLA.F32        S2, S0, S0
VSQRT.F32       S0, S2
VMUL.F32        S0, S0, S1
BL              sub_28371C
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x40]
BL              sub_5CD8C8
CMP             R0, #0
NOP
BEQ             loc_291FFC
LDRB            R0, [R5,#0x14]
CMP             R0, #0
BEQ             loc_291FFC
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x40]
BL              sub_5CD82C
CMP             R0, #0
NOP
BEQ             loc_291FFC
LDR             R0, [SP,#0x98+var_98]
LDRB            R0, [R0,#0x44]
CMP             R0, #0
BEQ             loc_292054
LDR             R0, [R5,#4]
ADD             R11, R11, #0xC
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
CMP             R0, R11
NOP
BNE             loc_291D5C
ADD             SP, SP, #0x64 ; 'd'
VPOP            {D8-D9}
POP             {R4-R11,PC}
DCD off_6BC3B4
DCFS 3.4028e38
DCFS 1.0
DCD 0x2AAAAAAB
DCD 0x7F7FFFFF
VLDR            S0, [R7,#0xA4]
MOV             R2, #0
ADD             R1, SP, #0x98+var_50
BL              sub_299494
NOP
NOP
B               loc_291F30
LDR             R0, [R5,#4]
LDR             R2, [R11]
LDR             R0, [R0,#0x14]
ADD             R1, R0, #0x4C ; 'L'
MOV             R0, R2
BL              sub_2838B0
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x1C]
MOV             R4, R0
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
CMP             R0, R4
NOP
BEQ             loc_2920BC
CMP             R4, R11
LDRNE           R0, [R4]
BLNE            sub_2837F4
LDR             R0, [R5,#4]
ADD             R4, R4, #0xC
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
CMP             R0, R4
NOP
BNE             loc_292094
LDR             R0, =off_6CE970
LDR             R4, [R5,#4]
ADD             R5, SP, #0x98+var_80
MOV             R3, #0x800000
LDR             R0, [R0]
MOV             R2, #0
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x24 ; '$'
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_292120
LDR             R2, =off_6BC5D8
MOV             R1, R0
STM             R0, {R2,R4}
MOV             R2, #0
STR             R2, [R0,#8]!
ADD             R0, R0, #4
STR             R0, [R0,#4]
STR             R0, [R0]
ADD             R0, R1, #0x18
STR             R2, [R1,#0x14]
STR             R0, [R1,#0x1C]
STR             R0, [R1,#0x18]
MOV             R0, R1
STR             R0, [SP,#0x98+var_80]
ADD             R0, R5, #4
STR             R0, [SP,#0x98+var_78]
STR             R0, [SP,#0x98+var_7C]
MOV             R1, R5
MOV             R2, #0
ADD             R0, R4, #0x58 ; 'X'
BL              sub_61F2AC
LDR             R1, [SP,#0x98+var_78]
ADD             R0, SP, #0x98+var_7C
CMP             R1, R0
BNE             loc_292168
LDR             R0, [SP,#0x98+var_80]
CMP             R0, #0
BEQ             loc_292168
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x98+var_7C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x64 ; 'd'
VPOP            {D8-D9}
POP             {R4-R11,PC}
