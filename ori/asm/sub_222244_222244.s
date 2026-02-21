PUSH            {R4-R11,LR}
MOV             R7, R0
MOV             R9, #1
LDR             R4, =off_6CDA80
LDR             R10, =off_6CE970
VPUSH           {D8-D10}
SUB             SP, SP, #4
LDRB            R1, [R0,#8]
LDR             R0, [R4]
CMP             R1, #0
BEQ             loc_2222A4
LDR             R11, =dword_6E2378
CMP             R1, #1
BEQ             loc_222340
CMP             R1, #4
BNE             loc_222334
LDR             R1, [R7,#0x110]
TST             R1, #0xF
BNE             loc_222334
STRH            R9, [R11,#(word_6E23A6 - 0x6E2378)]
ADD             SP, SP, #4
VPOP            {D8-D10}
POP             {R4-R11,LR}
B               sub_226B10
LDRB            R1, [R0,#0x30]
CMP             R1, #0
BEQ             loc_222334
BL              sub_226E4C
MOV             R0, #0
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x40+var_40]
LDR             R0, [R4]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
VLDR            S0, [R0,#0x2B4]
LDR             R0, [R10]
ADD             R0, R0, #0x19C000
ADD             R0, R0, #0x1F40
BL              sub_4E665C
MOV             R0, #0
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x40+var_40]
LDR             R0, [R4]
LDR             R2, [R10]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
VLDR            S0, [R0,#0x2B4]
LDR             R0, =0x19DF78
ADD             R0, R0, R2; loc_19DF78
BL              sub_4E665C
LDR             R0, [R10]
LDR             R1, =0x45C
MOV             R2, #0
BL              sub_52F9B4
STR             R0, [R7,#0xC]
STRB            R9, [R7,#8]
ADD             SP, SP, #4
VPOP            {D8-D10}
POP             {R4-R11,PC}
LDR             R1, [R10]
ADD             R1, R1, #0x180000
ADD             R1, R1, #0x1DC00
ADD             R2, R1, #0x368
VLDM            R2, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_222334
ADD             R1, R1, #0x3A0
VLDM            R1, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_222334
LDR             R1, =0x126F4
MOV             R8, #0
VLDR            S16, =0.0
VLDR            S17, =50.0
LDR             R1, [R1,R0]
VLDR            S18, =-20.0
VLDR            S19, =-140.0
ADD             R1, R1, #0x400
ADD             R1, R1, #0x2C ; ','
VLDR            S20, =90.0
ADD             R0, R0, #0x24 ; '$'
VLDM            R1, {S0-S1}
VADD.F32        S21, S0, S1
LDR             R0, [R0,#0x38]
ADD             R2, R7, #0x11C
ADD             R5, R7, #0x10
STM             R2, {R0,R8}
ADD             R2, R7, #0x124
VSTR            S21, [R7,#0x12C]
MOV             R0, #0xC0
VSTM            R2, {S16-S17}
ADD             R2, R7, #0x13C
VSTR            S16, [R7,#0x130]
VSTR            S18, [R7,#0x134]
VSTR            S16, [R7,#0x138]
VSTR            S16, [R7,#0x144]
MOV             R1, #2
VSTM            R2, {S19-S20}
STR             R0, [R7,#0x110]
MOV             R0, R5
STR             R9, [R7,#0x148]
BL              sub_14C450
LDR             R0, [R10]
MOV             R1, #0
ADD             R0, R0, #0x100000
ADD             R0, R0, #0xC400
LDR             R0, [R0,#(loc_10C4EC - 0x10C400)]
VSTR            S16, [R5,#0x24]
VSTR            S16, [R5,#0x28]
STR             R0, [R5,#0x2C]
MOV             R0, R5
BL              sub_14C3E8
ADD             R6, R5, #0xC00
ADD             R6, R6, #0x118
ADD             R4, R5, #0x13C
CMP             R4, R6
BEQ             loc_222468
MOV             R1, #2
MOV             R0, R4
BL              sub_14C450
MOV             R2, #0
MOV             R1, #1
MOV             R0, R4
BL              sub_14B798
MOV             R2, #0x8000
MOV             R1, R5
MOV             R0, R4
BL              sub_1CF9C4
ADD             R4, R4, #0x3F4
CMP             R4, R6
BNE             loc_222430
LDR             R1, [R5,#0x13C]
ADD             R0, R5, #0x13C
LDR             R2, [R1,#0x20]
ADD             R1, R5, #0x114
BLX             R2
LDR             R1, [R5,#0x10C]
CMP             R1, #0
BEQ             loc_2224B4
LDR             R2, [R5,#0x13C]
ADD             R0, R5, #0x13C
LDR             R3, [R2,#0x58]
MOV             R2, #0
BLX             R3
MOV             R2, #0
ADD             R0, R5, #0x13C
MOV             R3, #0x100
MOV             R1, R2
BL              sub_14C548
STRB            R8, [R5,#0x22E]
LDR             R1, [R5,#0x100]
ADD             R0, R5, #0x530
AND             R1, R1, #0x40 ; '@'
MOVS            R1, R1,LSR#6
BEQ             loc_2224D8
LDR             R1, [R5,#0x138]
CMP             R1, #0
MOVEQ           R1, #1
BEQ             loc_2224DC
MOV             R1, #0
STRB            R1, [R0,#0xF2]
LDR             R0, [R5,#0x530]
ADD             R4, R5, #0x530
ADD             R1, R5, #0x120
LDR             R2, [R0,#0x20]
MOV             R0, R4
BLX             R2
LDR             R1, =0xC00E
LDR             R0, [R10]
BL              sub_52FACC
LDR             R1, [R4]
MOV             R2, #0
LDR             R3, [R1,#0x58]
MOV             R1, R0
MOV             R0, R4
BLX             R3
LDR             R1, [R5,#0x110]
MOV             R0, R4
MOV             R3, #0x100
CMP             R1, #0
MOVEQ           R1, #4
MOVNE           R1, #0xA
MOV             R2, #0
BL              sub_14C548
LDR             R0, [R5,#0x100]
ADD             R4, R5, #0x800
ADD             R4, R4, #0x124
TST             R0, #0x80
BEQ             loc_222560
LDR             R0, [R5,#0x138]
CMP             R0, #0
MOVEQ           R0, #1
BEQ             loc_222564
MOV             R0, #0
STRB            R0, [R4,#0xF2]
LDR             R0, [R4]
ADD             R1, R5, #0x12C
LDR             R2, [R0,#0x20]
MOV             R0, R4
BLX             R2
LDR             R1, =0xC018
LDR             R0, [R10]
BL              sub_52FACC
LDR             R1, [R4]
MOV             R2, #0
LDR             R3, [R1,#0x58]
MOV             R1, R0
MOV             R0, R4
BLX             R3
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
MOV             R0, R4
BL              sub_14C548
LDR             R0, [R10]
LDR             R1, =0x19DF40
VLDR            S1, =0.1
ADD             R2, R5, #0x104
LDR             R1, [R1,R0]
ADD             R0, R0, #0x19C000
ADD             R0, R0, #0x1F40
STR             R1, [SP,#0x40+var_40]
LDRB            R1, [SP,#0x40+var_40+3]
STRB            R8, [SP,#0x40+var_40+3]
VMOV            S0, R1
MOV             R1, SP
VCVT.F32.U32    S0, S0
VMUL.F32        S17, S0, S1
VSTM            R2, {S16-S17}
VMOV.F32        S0, S17
BL              sub_4E665C
LDR             R2, [R10]
LDR             R0, =0x19DF78
VMOV.F32        S0, S17
MOV             R1, SP
ADD             R0, R0, R2; loc_19DF78
BL              sub_4E665C
LDR             R0, [R5,#0x100]
BIC             R0, R0, #0xF
ORR             R0, R0, #1
STR             R0, [R5,#0x100]
MOV             R0, #4
STRH            R9, [R11,#(word_6E23A6 - 0x6E2378)]
STRB            R0, [R7,#8]
ADD             SP, SP, #4
VPOP            {D8-D10}
POP             {R4-R11,PC}
