PUSH            {R4-R10,LR}
MOV             R5, R0
LDR             R9, =off_6D1648
VPUSH           {D8-D9}
LDR             R0, [R9]
CMP             R0, #0
BEQ             loc_18BE60
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x74]
BLX             R1
ADD             R4, R5, #0x14400
ADD             R4, R4, #8
MOV             R7, #0
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_18BE98
BL              sub_1E8BA8
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_18BE94
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R7, [R4]
ADD             R8, R5, #0x14000
ADD             R8, R8, #0xB60
LDR             R6, [R8]
CMP             R6, #0
BEQ             loc_18BF08
LDR             R4, [R6,#4]!
CMP             R4, R6
BEQ             loc_18BEF0
LDR             R0, [R4,#0xAC]
ADD             R0, R0, #0x104
BL              sub_58DD64
ADD             R0, R4, #8
NOP
BL              sub_592ECC
STR             R7, [R4,#0xAC]
LDR             R1, [R4,#0xC0]
LDRB            R0, [R1]
BIC             R0, R0, #3
STRB            R0, [R1]
LDR             R4, [R4]
CMP             R4, R6
BNE             loc_18BEB8
LDR             R0, [R8]
MOV             R3, R0
LDR             R1, [R0,#4]!
MOV             R2, R0
MOV             R0, R3
BL              sub_465948
ADD             R8, R5, #0x14C00
ADD             R8, R8, #0x3F4
LDR             R6, [R8]
CMP             R6, #0
BEQ             loc_18C04C
LDR             R4, [R6,#4]!
CMP             R4, R6
VLDRNE          S18, =-1.0
VLDRNE          S17, =0.0
BEQ             loc_18C034
LDR             R0, [R4,#8]
CMP             R0, #0
BEQ             loc_18BF4C
LDR             R1, [R4,#0x10]
LDR             R0, [R0,#4]
STR             R0, [R1,#0x1C]
STR             R7, [R4,#8]
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_18C028
LDR             R1, [R0]
VMOV.F32        S16, S18
LDR             R2, [R1,#0x48]
MOV             R1, #3
BLX             R2
CMP             R0, #0
BEQ             loc_18BF8C
LDR             R0, [R4,#0xC]
LDR             R1, [R0]
LDR             R2, [R1,#0x60]
MOV             R1, #3
BLX             R2
VMOV.F32        S16, S0
VCMPE.F32       S16, S17
VMRS            APSR_nzcv, FPSCR
BCS             loc_18C00C
LDR             R0, [R4,#0xC]
LDR             R1, [R0]
LDR             R2, [R1,#0x4C]
MOV             R1, #3
BLX             R2
CMP             R0, #0
BEQ             loc_18BFCC
LDR             R0, [R4,#0xC]
LDR             R1, [R0]
LDR             R2, [R1,#0x64]
MOV             R1, #3
BLX             R2
VMOV.F32        S16, S0
VCMPE.F32       S16, S17
VMRS            APSR_nzcv, FPSCR
BCS             loc_18C00C
LDR             R0, [R4,#0xC]
LDR             R1, [R0]
LDR             R2, [R1,#0x50]
MOV             R1, #3
BLX             R2
CMP             R0, #0
BEQ             loc_18C00C
LDR             R0, [R4,#0xC]
LDR             R1, [R0]
LDR             R2, [R1,#0x68]
MOV             R1, #3
BLX             R2
VMOV.F32        S16, S0
LDR             R0, [R4,#0x10]
VSTR            S16, [R0,#0x20]
LDR             R0, [R4,#0xC]
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
STR             R7, [R4,#0xC]
LDR             R4, [R4]
CMP             R4, R6
BNE             loc_18BF30
LDR             R0, [R8]
MOV             R3, R0
LDR             R1, [R0,#4]!
MOV             R2, R0
MOV             R0, R3
BL              sub_465948
ADD             R6, R5, #0x14800
ADD             R6, R6, #0x36C
LDR             R4, [R6]
CMP             R4, #0
BEQ             loc_18C084
LDR             R0, [R4,#0x90]
BL              sub_2FF5D4
LDRB            R0, [R4]
TST             R0, #1
ADDEQ           R4, R4, #0x94
BEQ             loc_18C060
LDR             R0, [R6]
BL              sub_2FF5D4
STR             R7, [R6]
LDR             R0, [R5]
LDR             R1, [R0,#0x27C]
MOV             R0, R5
BLX             R1
LDR             R0, [R9]
CMP             R0, #0
LDRNE           R0, [R0,#0xA0]
CMPNE           R0, #0
BEQ             loc_18C0C4
MOV             R1, #0
BL              sub_2D30FC
LDR             R0, [R9]
LDR             R0, [R0,#0xA0]
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x204
BL              sub_50EB48
MOV             R4, #0
ADD             R6, R5, R4,LSL#2
ADD             R6, R6, #0x14400
ADD             R6, R6, #0xC
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_18C108
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_18C104
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R7, [R6]
ADD             R4, R4, #1
CMP             R4, #0x4F ; 'O'
BLT             loc_18C0C8
MOV             R4, #0
ADD             R6, R5, R4,LSL#2
ADD             R6, R6, #0x14400
ADD             R6, R6, #0x148
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_18C158
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_18C154
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R7, [R6]
ADD             R4, R4, #1
CMP             R4, #0x20 ; ' '
BLT             loc_18C118
LDR             R0, [R9]
CMP             R0, #0
MOVNE           R4, #0
BEQ             loc_18C1AC
LDR             R0, =0x1D07
LDR             R2, [R9]
MUL             R1, R4, R0
LDR             R0, [R2,#0xA4]
ADD             R0, R0, R1,LSL#2
LDR             R1, =0x7418
ADD             R0, R0, #0x27400
ADD             R0, R0, #0x1D8
LDR             R1, [R1,R0]
CMP             R1, #0x400
BLEQ            sub_54626C
ADD             R4, R4, #1
CMP             R4, #4
BLT             loc_18C174
VPOP            {D8-D9}
MOV             R0, R5
POP             {R4-R10,LR}
B               sub_2AC9AC
