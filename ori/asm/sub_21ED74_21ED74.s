PUSH            {R4-R11,LR}
MOV             R5, R0
VPUSH           {D8-D10}
SUB             SP, SP, #0x9C
LDRB            R0, [R0,#0x174]
CMP             R0, #0
BEQ             loc_21F184
MOV             R0, #0
MOV             R1, #1
ADD             R3, SP, #0xD8+var_60
MOV             R2, #0xFFFFFFFF
STRB            R1, [SP,#0xD8+var_70]
STR             R0, [SP,#0xD8+var_6C]
STR             R0, [SP,#0xD8+var_68]
STM             R3, {R0,R2}
MOV             R6, #0
STRB            R0, [SP,#0xD8+var_6F]
STRB            R1, [SP,#0xD8+var_98]
ADD             R1, SP, #0xD8+var_88
STR             R0, [SP,#0xD8+var_58]
STR             R0, [SP,#0xD8+var_54]
STR             R0, [SP,#0xD8+var_64]
STR             R0, [SP,#0xD8+var_94]
STR             R0, [SP,#0xD8+var_90]
STM             R1, {R0,R2}
MOV             R11, #0xFFFFFFFF
STRB            R0, [SP,#0xD8+var_97]
STR             R0, [SP,#0xD8+var_80]
STR             R0, [SP,#0xD8+var_7C]
STR             R0, [SP,#0xD8+var_8C]
STR             R6, [SP,#0xD8+var_C0]
LDRB            R0, [R5,#0x174]
LDR             R4, [R5,#0x170]
MOV             R10, R11
CMP             R0, #0
MOV             R8, R6
BLE             loc_21F100
LDR             R0, =_ZTV9CrashRock; `vtable for'CrashRock ...
VLDR            S21, =0.0
ADD             R1, R0, #8
ADD             R0, R0, #0x348
STR             R0, [SP,#0xD8+var_78]
STR             R1, [SP,#0xD8+var_A4]
MOV             R3, #0
LDR             R1, =dword_6ED9B8
MOV             R2, R3
MOV             R0, #0x900
BL              sub_10A358
CMP             R0, #0
MOVEQ           R7, #0
BEQ             loc_21EEA8
LDR             R1, [R5,#0x13C]
MOV             R2, #1
ADD             R3, R5, #0x124
LDRB            R12, [R1,#0xDC]
LDR             R1, [R5,#4]
STR             R2, [SP,#0xD8+var_D8]
MOV             R2, R12
BL              sub_580DD4
LDR             R1, [SP,#0xD8+var_A4]
STR             R1, [R0]
LDR             R1, [SP,#0xD8+var_78]
STR             R1, [R0,#0xE0]!
ADD             R0, R0, #0x400
ADD             R0, R0, #0x278
BL              sub_1E9F04
SUB             R7, R0, #0x400
ADD             R0, R0, #0xA8
MOV             R1, #0
SUB             R7, R7, #0x358
STRH            R1, [R0,#0xD8]
STR             R1, [R7,#0x8E4]
STR             R1, [R7,#0x8E8]
VSTR            S21, [R0,#0xEC]
VSTR            S21, [R0,#0xF0]
STR             R1, [R7,#0x8F4]
STR             R1, [R7,#0x8F8]
ADD             R0, R5, R8,LSL#2
MOV             R2, R5
STR             R7, [R0,#0x10]
LDRH            R0, [R4,#0x10]
AND             R1, R0, #3
MOV             R0, R7
BL              sub_594200
LDRSH           R0, [R4]
CMP             R0, R11
BEQ             loc_21EF7C
LDR             R2, [R5,#4]
MOV             R1, #0
MOV             R11, R0
ADD             R2, R2, #0x13C00
ADD             R2, R2, #0x9C
CMP             R8, #0
LDR             R2, [R2]
MOV             R0, R1
STR             R1, [SP,#0xD8+var_58]
ADD             R6, R2, R11,LSL#6
BLE             loc_21EF30
ADD             R1, R5, R0,LSL#2
LDR             R1, [R1,#0x10]
LDR             R1, [R1,#0x8C4]
CMP             R1, R6
BNE             loc_21EF24
ADD             R0, R5, R0,LSL#2
LDR             R0, [R0,#0x10]
LDR             R0, [R0,#0x7FC]
STR             R0, [SP,#0xD8+var_58]
B               loc_21EF30
ADD             R0, R0, #1
CMP             R8, R0
BGT             loc_21EEFC
MOV             R2, #0
MOV             R1, R2
ADD             R0, R6, #0x14
BL              sub_5D0190
LDRSB           R1, [R0]
LDRSB           R2, [R0,#1]
LDRB            R3, [R0,#2]
LDRB            R12, [R0,#4]
LDRB            R0, [R0,#3]
VMOV            S4, R1
VMOV            S0, R2
VMOV            S3, R3
VMOV            S2, R12
VMOV            S1, R0
VCVT.F32.S32    S20, S4
VCVT.F32.S32    S19, S0
VCVT.F32.U32    S18, S3
VCVT.F32.U32    S17, S2
VCVT.F32.U32    S16, S1
LDRSH           R0, [R4,#2]
CMP             R0, R10
BEQ             loc_21EFB4
LDR             R1, [R5,#4]
MOV             R10, R0
UXTH            R2, R0
ADD             R1, R1, #0x13C00
ADD             R1, R1, #0x9C
ADD             R3, SP, #0xD8+var_98
LDR             R1, [R1]
MOV             R0, R5
ADD             R1, R1, R10,LSL#6
BL              sub_21EB80
STR             R0, [SP,#0xD8+var_C0]
LDR             R0, [R7]
VMOV.F32        S4, S16
VMOV.F32        S3, S17
VMOV.F32        S2, S18
LDR             R1, [R0,#0x2D0]
VMOV.F32        S1, S19
VMOV.F32        S0, S20
MOV             R0, R7
BLX             R1
ADD             R0, R4, #0x14
ADD             R3, SP, #0xD8+var_50
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R2, SP, #0xD8+var_50
STR             R2, [SP,#0xD8+var_C4]
LDRH            R9, [R4]
ADD             R0, SP, #0xD8+var_70
STR             R0, [SP,#0xD8+var_D8]
LDR             R0, [R7,#4]
MOV             R1, R6
MOV             R2, #0
ADD             R3, R0, #0xCC
ADD             R0, R7, #0x400
ADD             R0, R0, #0x358
BL              sub_1E9348
MOV             R2, R9
ADD             R9, R7, #0x800
STRH            R2, [R9,#0xCC]
LDR             R0, [R7]
LDR             R1, [SP,#0xD8+var_C4]
LDR             R2, [R0,#0x6C]
MOV             R0, R7
BLX             R2
LDR             R1, [SP,#0xD8+var_C0]
LDRH            R0, [R4,#4]
ADD             R2, R7, #0x800
STR             R1, [R7,#0x8D4]
STRH            R0, [R9,#0xD8]
LDRD            R0, R1, [R4,#8]
ADD             R2, R2, #0xDC
STM             R2, {R0,R1}
MOV             R0, R7
LDRH            R1, [R4,#0x10]
ADD             R9, R0, #0x400
ADD             R9, R9, #0x248
AND             R1, R1, #4
MOVS            R1, R1,LSR#2
LDRBNE          R2, [R0,#0x649]
MOVEQ           R2, #0
STRB            R2, [R0,#0x648]
LDRB            R2, [R0,#0xDE]
BIC             R2, R2, #1
ORR             R2, R2, R1
STRB            R2, [R0,#0xDE]
LDR             R2, [R0]
LDR             R2, [R2,#0x84]
BLX             R2
LDRH            R2, [R4,#0x10]
LDR             R3, [R7,#0x8F4]
MOV             R1, #4
MOV             R0, #2
AND             R2, R1, R2,LSR#1
BIC             R3, R3, #4
ORR             R2, R2, R3
STR             R2, [R7,#0x8F4]
LDRH            R3, [R4,#0x10]
LDR             R2, [R9]
ADD             R8, R8, #1
AND             R0, R0, R3,LSR#3
BIC             R2, R2, #2
ORR             R0, R0, R2
STR             R0, [R9]
LDRH            R2, [R4,#0x10]
BIC             R0, R0, #4
AND             R1, R1, R2,LSR#3
ORR             R0, R0, R1
STR             R0, [R9]
LDR             R1, [R4,#0x20]!
ADD             R4, R4, #4
STR             R1, [R7,#0x4C4]
LDRB            R0, [R5,#0x174]
CMP             R0, R8
BGT             loc_21EE20
STRB            R0, [R5,#0x110]
LDR             R0, [R5,#0x170]
CMP             R0, #0
BEQ             loc_21F11C
BL              sub_2FF5D4
MOV             R0, #0
STR             R0, [R5,#0x170]
MOV             R0, #0
STRB            R0, [R5,#0x174]
LDRB            R0, [R5,#0x110]
MOV             R4, #0
CMP             R0, #0
BLE             loc_21F164
ADD             R0, R5, R4,LSL#2
LDR             R0, [R0,#0x10]
LDR             R1, [R0,#0x8F4]
TST             R1, #0x800
BEQ             loc_21F154
LDR             R0, [R0,#0x7FC]
MOV             R1, #0
BL              sub_146E50
LDRB            R0, [R5,#0x110]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_21F134
MOV             R0, #1
STRB            R0, [R5,#0x111]
LDR             R0, [R5,#4]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x4300
LDRH            R1, [R0,#8]
ORR             R1, R1, #1
STRH            R1, [R0,#8]
ADD             SP, SP, #0x9C
VPOP            {D8-D10}
POP             {R4-R11,PC}
