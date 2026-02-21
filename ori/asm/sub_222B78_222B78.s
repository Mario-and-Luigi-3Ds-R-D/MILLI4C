PUSH            {R4-R9,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
LDR             R0, [R0,#8]
CMP             R0, #0
BEQ             loc_222D7C
LDR             R7, =off_6CDA80
LDR             R8, =0x2AAAAAAB
MOV             R9, #0
ADD             R6, SP, #0x28+var_24
LDR             R2, [R7]
LDRB            R0, [R4,#0x64]
ADD             R2, R2, #0x12400
ADD             R2, R2, #0x2F4
CMP             R0, #0
LDR             R5, [R2]
BEQ             loc_222BC8
CMP             R0, #1
BNE             loc_222BF8
B               loc_222BE0
LDR             R2, =dword_6D1F40
LDRD            R0, R1, [R5,#0xD8]
BL              sub_47EADC
MOV             R1, R0
VLDR            S0, [R5,#0xE0]
B               loc_222BF8
ADD             R0, R5, #0x100
LDR             R2, =dword_6D1F40
LDM             R0, {R0,R1}
BL              sub_47EADC
VLDR            S0, [R5,#0x108]
MOV             R1, R0
LDR             R0, [R4,#4]
CMP             R0, #0
LDR             R2, [R0]
STR             R2, [R4,#4]
LDR             R2, [R4,#8]
SUB             R2, R2, #1
STR             R2, [R4,#8]
BEQ             loc_222CAC
VMOV            S2, R1
VLDR            S1, [R4,#0x68]
LDRB            R2, [R4,#0x64]
STRB            R2, [R0]
VCVT.F32.U32    S3, S2
VMOV.F32        S2, S1
ADD             R2, R0, #4
VMLA.F32        S2, S0, S3
VSTM            R2, {S0-S2}
LDR             R2, [R7]
ADD             R2, R2, #0x12400
ADD             R2, R2, #0x2F4
LDR             R3, [R2]
LDR             R12, [R3,#0x114]
LDRB            R3, [R0]
STR             R1, [R0,#0x18]
CMP             R12, R1
SUBCS           R12, R1, #1
STR             R4, [R0,#0x20]
STR             R9, [R0,#0x14]
CMP             R3, #0
STR             R12, [R0,#0x10]
BEQ             loc_222C80
CMP             R3, #1
BNE             loc_222CAC
B               loc_222C98
LDR             R2, [R2]
VLDR            S0, [R0,#8]
VLDR            S1, [R2,#0xE4]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x1C]
B               loc_222CAC
LDR             R2, [R2]
VLDR            S0, [R0,#8]
VLDR            S1, [R2,#0x10C]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x1C]
ADD             R2, SP, #0x28+var_24
STR             R2, [SP,#0x28+var_20]
STMEA           SP, {R0,R2}
LDR             R2, [R4,#0x60]
LDR             R3, [R4,#0x5C]
MOV             R1, SP
SUB             R3, R2, R3
SMULL           R12, R3, R8, R3
MOV             R12, R3,ASR#1
SUB             R3, R12, R3,ASR#31
ADD             R3, R3, #1
CMP             R3, #6
BHI             loc_222D10
CMP             R2, #0
BEQ             loc_222D04
ADD             R1, R1, #4
STRD            R0, R1, [R2]
LDR             R1, [SP,#0x28+var_20]
ADD             R2, R2, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R2, [SP,#0x28+var_20]
LDR             R1, [R4,#0x60]
ADD             R1, R1, #0xC
STR             R1, [R4,#0x60]
LDR             R1, [SP,#0x28+var_20]
CMP             R1, R6
BNE             loc_222D44
LDR             R1, [SP,#0x28+var_28]
CMP             R1, #0
BEQ             loc_222D44
LDR             R2, [R1,#0x20]
LDR             R3, [R2,#4]
STR             R3, [R1]
STR             R1, [R2,#4]
LDR             R1, [R2,#8]
ADD             R1, R1, #1
STR             R1, [R2,#8]
LDR             R2, [SP,#0x28+var_24]
LDR             R1, [SP,#0x28+var_20]
STR             R1, [R2,#4]
STR             R2, [R1]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x68]
LDRB            R0, [R4,#0x64]
CMP             R0, #0
MOVEQ           R0, #1
MOVNE           R0, #0
STRB            R0, [R4,#0x64]
LDR             R0, [R4,#8]
CMP             R0, #0
BNE             loc_222BA0
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
