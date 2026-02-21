PUSH            {R4-R11,LR}
MOV             R7, R0
MOV             R9, #1
LDR             R6, =off_6CDC90
LDR             R11, =0x19DF78
LDR             R10, =off_6CE970
VPUSH           {D8-D10}
SUB             SP, SP, #0x3C
LDRB            R2, [R0,#8]
LDR             R0, [R6]
CMP             R2, #0
BEQ             loc_1FB080
MOV             R1, R10
CMP             R2, #1
LDR             R12, [R1]
MOV             R8, #0
ADD             R1, R12, #0x180000
ADD             R1, R1, #0x1DC00
BEQ             loc_1FB120
CMP             R2, #3
BEQ             loc_1FB3E8
CMP             R2, #4
BNE             loc_1FB4EC
B               loc_1FB4A4
LDRB            R1, [R0,#0x1C]
CMP             R1, #0
BEQ             loc_1FB4EC
BL              sub_1FA748
LDR             R0, [R6]
ADD             R1, SP, #0x78+var_74
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x2700
LDR             R0, [R0]
LDR             R0, [R0]
STR             R0, [SP,#0x78+var_78]
MOV             R0, #0
REV             R0, R0
STR             R0, [SP,#0x78+var_74]
LDR             R0, [R10]
VLDR            S0, [SP,#0x78+var_78]
ADD             R0, R0, #0x19C000
ADD             R0, R0, #0x1F40
BL              sub_4E665C
LDR             R0, [R6]
ADD             R1, SP, #0x78+var_74
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x2700
LDR             R0, [R0]
LDR             R0, [R0]
STR             R0, [SP,#0x78+var_78]
MOV             R0, #0
REV             R0, R0
STR             R0, [SP,#0x78+var_74]
LDR             R0, [R10]
VLDR            S0, [SP,#0x78+var_78]
ADD             R0, R0, R11; loc_19DF78
BL              sub_4E665C
LDR             R0, [R10]
LDR             R1, =0x45C
MOV             R2, #0
BL              sub_52F9B4
STRB            R9, [R7,#8]
NOP
B               loc_1FB4EC
ADD             R2, R1, #0x3A0
VLDM            R2, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_1FB4EC
ADD             R1, R1, #0x368
VLDM            R1, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_1FB4EC
ADD             R0, R0, #0x10
VLDR            S16, =0.0
VLDR            S17, =50.0
VLDR            S18, =-20.0
VLDR            S19, =-140.0
VLDR            S20, =90.0
LDR             R0, [R0,#0x2C]
ADD             R2, R7, #0x11C
ADD             R5, R7, #0x10
STM             R2, {R0,R8}
ADD             R2, R7, #0x124
MOV             R0, #0xC0
VSTM            R2, {S16-S17}
ADD             R2, R7, #0x13C
VSTR            S16, [R7,#0x12C]
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
BEQ             loc_1FB220
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
BNE             loc_1FB1E8
LDR             R1, [R5,#0x13C]
ADD             R0, R5, #0x13C
LDR             R2, [R1,#0x20]
ADD             R1, R5, #0x114
BLX             R2
LDR             R1, [R5,#0x10C]
CMP             R1, #0
BEQ             loc_1FB26C
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
BEQ             loc_1FB290
LDR             R1, [R5,#0x138]
CMP             R1, #0
MOVEQ           R1, #1
BEQ             loc_1FB294
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
BEQ             loc_1FB318
LDR             R0, [R5,#0x138]
CMP             R0, #0
MOVEQ           R0, #1
BEQ             loc_1FB31C
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
STR             R1, [SP,#0x78+var_6C]
LDRB            R1, [SP,#0x78+var_6C+3]
STRB            R8, [SP,#0x78+var_6C+3]
VMOV            S0, R1
ADD             R1, SP, #0x78+var_6C
VCVT.F32.U32    S0, S0
VMUL.F32        S17, S0, S1
VSTM            R2, {S16-S17}
VMOV.F32        S0, S17
BL              sub_4E665C
LDR             R0, [R10]
VMOV.F32        S0, S17
ADD             R1, SP, #0x78+var_6C
ADD             R0, R0, R11; loc_19DF78
BL              sub_4E665C
LDR             R0, [R5,#0x100]
LDR             R1, =dword_6E2378
BIC             R0, R0, #0xF
ORR             R0, R0, #1
STR             R0, [R5,#0x100]
MOV             R0, #3
STRH            R9, [R1,#(word_6E23A6 - 0x6E2378)]
STRB            R0, [R7,#8]
B               loc_1FB4EC
LDR             R1, [R7,#0x110]
TST             R1, #0xF
BNE             loc_1FB4EC
MOV             R5, R0
MOV             R3, #0
MOV             R2, R3
ADD             R1, R12, #0x68 ; 'h'
MOV             R0, #8
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1FB428
LDR             R1, [R6]
STR             R1, [R0,#4]
LDR             R1, =off_6BB830
STR             R1, [R0]
LDR             R1, [R5,#0xC]
MOV             R4, R0
MOV             R6, #0
CMP             R1, #0
BEQ             loc_1FB44C
LDR             R0, [R1]
LDR             R2, [R0,#0x10]
MOV             R0, R1
BLX             R2
STR             R4, [R5,#0xC]
LDR             R0, [R4]
MOV             R1, R6
LDR             R2, [R0,#8]
MOV             R0, R4
BLX             R2
B               loc_1FB4EC
DCD off_6CDC90
DCD 0x19DF78
DCD off_6CE970
DCD 0x45C
DCFS 0.0
DCFS 50.0
DCFS -20.0
DCFS -140.0
DCFS 90.0
DCD 0xC00E
DCD 0xC018
DCFS 0.1
DCD 0x19DF40
DCD dword_6E2378
DCD off_6BB830
ADD             R2, R1, #0x3A0
VLDM            R2, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_1FB4EC
ADD             R1, R1, #0x368
VLDM            R1, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_1FB4EC
MOV             R5, R0
LDR             R0, [R0,#0xC]
CMP             R0, #0
BEQ             loc_1FB4E8
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
STR             R8, [R5,#0xC]
LDR             R0, [R7,#4]
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8-D10}
POP             {R4-R11,LR}
NOP
