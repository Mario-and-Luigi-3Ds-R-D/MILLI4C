PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, R1
VPUSH           {D8-D9}
SUB             SP, SP, #0x20
BL              sub_189D88
MOV             R0, #0x40 ; '@'
ADD             R3, SP, #0x48+var_38
LDR             R7, =off_6D1648
MOV             R1, #0x80
MOV             R2, #4
STR             R0, [SP,#0x48+var_44]
STR             R0, [SP,#0x48+var_40]
STR             R0, [SP,#0x48+var_3C]
STM             R3, {R0-R2}
MOV             R6, #0
STR             R1, [SP,#0x48+var_2C]
LDR             R0, [R7]
MOV             R1, SP
ADD             R0, R0, #0x20 ; ' '
STR             R0, [SP,#0x48+var_48]
ADD             R0, R4, #0x14400
ADD             R0, R0, #0xEC
MOV             R8, R0
BL              sub_59CB18
MOV             R3, #0
MOV             R2, R3
MOV             R1, R5
MOV             R0, #0x9C
BL              sub_10A358
CMP             R0, #0
BEQ             loc_161DE0
BL              sub_2AC58C
LDR             R1, =off_6B41D4
STR             R1, [R0]
STRB            R6, [R0,#0x98]
LDR             R1, =0x14408
MOV             R3, #0
MOV             R2, R3
STR             R0, [R1,R4]
LDR             R0, =0xFEC
MOV             R1, R5
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_161E64
BL              sub_3D93C0
ADD             R0, R0, #0xC00
VLDR            S0, =1.0
ADD             R0, R0, #0x354
BL              sub_5A1E10
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2F28
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R2, R0, #0x18
STR             R2, [R0,#0x10]
MOV             R1, #1
STRB            R1, [R0,#0x14]
LDR             R1, =sub_473ED0
MOV             R3, #5
MOV             R2, #0x14
ADD             R0, R0, #0x34 ; '4'
BLX             sub_1002F4
SUB             R0, R0, #0xC00
SUB             R0, R0, #0x388
LDR             R1, =0x14418
LDR             R5, =0x401
STR             R0, [R1,R4]
ADD             R0, R4, #0x15000
MOV             R1, R5
ADD             R0, R0, #0xDC
BL              sub_5994C8
ADD             R0, R4, #0x28800
MOV             R1, R5
ADD             R0, R0, #0x128
BL              sub_5994C8
MOV             R0, R5
NOP
BL              sub_11C418
VMOV            S0, R0
ADD             R6, R4, #0x14000
LDRB            R0, [R6,#0x28F]
VCVT.F32.U32    S16, S0
CMP             R0, #1
BNE             loc_161ECC
ADD             R0, R4, #0x14000
ADD             R0, R0, #0x460
BL              sub_5A18EC
ADD             R0, R4, #0x14400
VSTR            S16, [R0,#0x6C]
VSTR            S16, [R0,#0x64]
ADD             R0, R4, #0x14400
ADD             R0, R0, #0x98
ADD             R5, R4, #0x14400
VLDM            R0, {S17-S18}
ADD             R5, R5, #0x94
VLDR            S16, =600.0
MOV             R0, R5
BL              sub_5A26D0
VSTR            S16, [R5,#0x24]
ADD             R0, R5, #0x1C
ADD             R1, R5, #4
VSTM            R0, {S17-S18}
LDR             R0, =dword_6E1320
VSTR            S16, [R5,#0xC]
VSTM            R1, {S17-S18}
LDR             R0, [R0]
TST             R0, #1
BNE             loc_161F40
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_161F40
LDR             R0, =flt_6E1324
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
LDR             R0, =flt_6E1324
VLDM            R0, {S16-S17}
LDRB            R0, [R6,#0x28F]
CMP             R0, #1
BNE             loc_161F78
LDR             R6, [R5,#0xC]
MOV             R0, R5
BL              sub_5A26D0
ADD             R0, R5, #0x1C
VSTM            R0, {S16-S17}
ADD             R0, R5, #4
STR             R6, [R5,#0x24]
VSTM            R0, {S16-S17}
STR             R6, [R5,#0xC]
MOV             R3, #1
MOV             R2, R3
MOV             R1, #2
MOV             R0, R8
BL              sub_59BFCC
LDR             R1, =0x1445C
STR             R0, [R1,R4]
LDR             R0, [R4]
LDR             R1, [R0,#0x2C]
MOV             R0, R4
BLX             R1
MOV             R1, #0x80
MOV             R0, R8
BL              sub_59BE7C
MOV             R0, R8
NOP
BL              sub_4B1570
MOV             R0, R8
NOP
BL              sub_59C598
LDR             R0, [R7]
LDR             R0, [R0,#0xA4]
ADD             SP, SP, #0x20 ; ' '
VPOP            {D8-D9}
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x2EC
POP             {R4-R8,LR}
B               sub_4A1234
