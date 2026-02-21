PUSH            {R4-R12,LR}
MOV             R4, #0
MOV             R7, R0
LDR             R9, =byte_68DBBC
LDR             R11, =0x19C98
VPUSH           {D8-D9}
VLDR            S18, =0.0
LDRB            R0, [R9]
VLDR            S19, =2.0
VMOV.F32        S16, S18
MOV             R8, R0,LSL#1
VMOV.F32        S17, S16
RSB             R0, R4, R4,LSL#4
ADD             R1, R0, R4,LSL#5
LDR             R0, [R7,#4]
ADD             R1, R11, R1,LSL#2
RSB             R2, R4, R4,LSL#3
ADD             R5, R0, R1
LDR             R1, =0x21218
ADD             R1, R1, R2,LSL#3
ADD             R0, R0, R1
BL              sub_234B48
CMP             R8, R4
NOP
BLE             loc_1B6B18
LDRB            R0, [R9]
CMP             R4, R0
ANDGE           R0, R0, #0xFF
MOVLT           R0, R4
SUBGE           R0, R4, R0
RSB             R1, R0, R0,LSL#4
LDR             R0, =unk_68D002
ADD             R6, R0, R1,LSL#1
LDR             R1, =0x3015
MOV             R0, R5
BL              sub_543494
LDRH            R0, [R6,#0x1C]
CMP             R0, #0
MOVEQ           R2, #0
BEQ             loc_1B6AA4
LDR             R0, [R5,#0xA4]
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
MOV             R10, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R10
MOV             R2, R0,LSR#16
LDR             R0, [R5]
VMOV.F32        S0, S19
LDRSH           R1, [R6,#8]
MOV             R3, #0
LDR             R12, [R0,#0x3C]
MOV             R0, R5
BLX             R12
LDRB            R0, [R9]
CMP             R4, R0
LDR             R0, [R5]
MOVLT           R1, #1
MOVGE           R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R5
BLX             R2
LDRSH           R0, [R6,#4]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VMOVCC          S0, R0
VCVTCC.F32.S32  S17, S0
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVGT          S0, R0
VCVTGT.F32.S32  S16, S0
B               loc_1B6B38
LDR             R1, =0x3046
MOV             R0, R5
BL              sub_543494
LDR             R0, [R5]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R5
BLX             R2
ADD             R4, R4, #1
CMP             R4, #0x9F
BLT             loc_1B6A14
VSUB.F32        S0, S16, S17
ADD             R0, R7, #0x1000
LDR             R1, =0x300E
VSTR            S16, [R0,#0x194]
VSTR            S0, [R0,#0x190]
LDR             R4, [R7,#4]
ADD             R4, R4, #0x21000
ADD             R4, R4, #0x15C
MOV             R0, R4
BL              sub_543494
LDR             R0, [R4]
MOV             R2, #0
MOV             R1, #2
LDR             R3, [R0,#0x38]
MOV             R0, R4
BLX             R3
LDR             R0, [R4]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R4
BLX             R2
LDR             R0, [R7,#4]
ADD             R4, R0, #0x23000
ADD             R4, R4, #0x4E0
VSTR            S18, [R4,#0x30]
BL              sub_4635D8
LDR             R1, [R0]
STR             R1, [R4,#0x10]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x14]
LDR             R0, [R0,#8]
STR             R0, [R4,#0x18]
BL              sub_4635D8
LDR             R1, [R0]
STR             R1, [R4,#0x1C]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x20]
LDR             R0, [R0,#8]
STR             R0, [R4,#0x24]
VPOP            {D8-D9}
POP             {R4-R12,PC}
