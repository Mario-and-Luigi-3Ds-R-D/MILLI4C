PUSH            {R4-R11,LR}
MOV             R6, R0
VPUSH           {D8}
SUB             SP, SP, #0x54
LDR             R0, [R0,#0x2C]
CMP             R0, #0
BEQ             loc_26C558
LDR             R0, =off_6CDF98
ADD             R1, SP, #0x80+var_40
LDR             R0, [R0]
LDR             R4, [R0,#0x124]
BL              sub_5CC8EC
LDR             R0, [R4,#0x61C]
STR             R0, [SP,#0x80+var_3C]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MOV             R5, R0
BL              sub_4642E0
VMOV.F32        S16, S0
LDR             R2, =dword_6D1F40
LDR             R1, [R4,#0x628]
MOV             R0, #0
BL              sub_47EADC
VMOV            S0, R0
VLDR            S1, [SP,#0x80+var_40]
MOV             R0, R5
VCVT.F32.S32    S0, S0
VMLA.F32        S1, S16, S0
VSTR            S1, [SP,#0x80+var_40]
BL              sub_464278
VMOV.F32        S16, S0
LDR             R2, =dword_6D1F40
LDR             R1, [R4,#0x62C]
MOV             R0, #0
BL              sub_47EADC
VMOV            S0, R0
VLDR            S1, [SP,#0x80+var_38]
LDR             R0, =off_6CE970
MOV             R3, #0
ADD             R4, SP, #0x80+var_64
MOV             R2, R3
VCVT.F32.S32    S0, S0
VMLA.F32        S1, S16, S0
VSTR            S1, [SP,#0x80+var_38]
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x494
BL              sub_10A358
CMP             R0, #0
ADDNE           R1, SP, #0x80+var_40
BLNE            sub_26BD34
STR             R0, [SP,#0x80+var_64]
ADD             R0, R4, #4
STR             R0, [SP,#0x80+var_5C]
STR             R0, [SP,#0x80+var_60]
LDR             R1, [R6,#0xC]
LDR             R0, [R6,#0x10]
LDR             R5, =0x2AAAAAAB
LDR             R12, [R6,#0x14]
SUB             R1, R0, R1
ADD             R10, SP, #0x80+var_64
SMULL           R2, R1, R5, R1
MOV             R2, R1,ASR#1
SUB             R2, R2, R1,ASR#31
ADD             R3, R2, #1
CMP             R3, R12
MOV             R1, #1
BLS             loc_26C08C
LDR             R0, [R6,#4]
LDR             R2, [R6]
MOV             R4, R3
CMP             R0, #1
MOVHI           R1, R0
MOV             R0, #0
STR             R2, [SP,#0x80+var_80]
STR             R0, [SP,#0x80+var_78]
STR             R1, [SP,#0x80+var_7C]
STR             R0, [SP,#0x80+var_74]
STR             R0, [SP,#0x80+var_70]
STR             R0, [SP,#0x80+var_6C]
LDR             R0, [R6,#0x14]
MOV             R1, R0,LSL#1
CMP             R1, R4
MOVCC           R1, R4
MOV             R0, SP
BL              sub_6253F8
CMP             R0, #0
MOV             R7, SP
BNE             loc_26C0DC
B               loc_26C0C4
CMP             R0, #0
BEQ             loc_26C0B4
LDR             R1, [SP,#0x80+var_64]
STR             R1, [R0],#4
ADD             R1, R10, #4
STR             R1, [R0]
LDR             R1, [SP,#0x80+var_5C]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0x80+var_5C]
LDR             R0, [R6,#0x10]
ADD             R1, R0, #0xC
STR             R1, [R6,#0x10]
B               loc_26C500
MOV             R1, R4
MOV             R0, R7
BL              sub_6253F8
CMP             R0, #0
NOP
BEQ             loc_26C188
ADD             R9, R6, #0xC
LDR             R0, =0x2AAAAAAB
LDM             R9, {R9,R11}
ADD             R8, R7, #0xC
SUB             R1, R11, R9
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
LDR             R1, [SP,#0x80+var_6C]
CMP             R0, R1
BHI             loc_26C340
LDR             R5, [SP,#0x80+var_70]
LDR             R7, [SP,#0x80+var_74]
CMP             R9, R11
BNE             loc_26C290
CMP             R7, R5
BEQ             loc_26C17C
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_26C168
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_26C168
ADD             R0, R0, #0x400
ADD             R0, R0, #4
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #4
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_26C120
LDR             R0, [R8]
STR             R0, [R8,#4]
B               loc_26C340
LDR             R5, [SP,#0x80+var_70]
LDR             R7, [SP,#0x80+var_74]
MOV             R8, #0
STR             R8, [SP,#0x80+var_6C]
CMP             R7, R5
BEQ             loc_26C1FC
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_26C1E8
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_26C1E8
ADD             R0, R0, #0x400
ADD             R0, R0, #4
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #4
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_26C1A0
LDR             R0, [SP,#0x80+var_78]
STR             R8, [SP,#0x80+var_74]
STR             R8, [SP,#0x80+var_70]
CMP             R0, #0
STR             R8, [SP,#0x80+var_78]
BLNE            sub_2FF5D4
LDR             R5, [SP,#0x80+var_70]
LDR             R7, [SP,#0x80+var_74]
CMP             R7, R5
BEQ             loc_26C280
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_26C26C
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_26C26C
ADD             R0, R0, #0x400
ADD             R0, R0, #4
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #4
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_26C224
LDR             R0, [SP,#0x80+var_78]
CMP             R0, #0
BEQ             loc_26C500
B               loc_26C4F8
CMP             R7, R5
BEQ             loc_26C2F4
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_26C2E0
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_26C2E0
ADD             R0, R0, #0x400
ADD             R0, R0, #4
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #4
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_26C298
LDR             R1, [R8]
CMP             R9, R11
BEQ             loc_26C33C
MOVS            R0, R1
BEQ             loc_26C32C
LDR             R2, [R9]
STR             R2, [R0]
ADD             R2, R9, #4
STR             R2, [R1,#4]
LDR             R3, [R9,#8]
ADD             R0, R1, #4
STR             R3, [R1,#8]
STR             R0, [R3]
STR             R0, [R9,#8]
ADD             R9, R9, #0xC
CMP             R9, R11
ADD             R1, R1, #0xC
BNE             loc_26C300
STR             R1, [R8,#4]
LDR             R1, [SP,#0x80+var_70]
LDR             R2, [SP,#0x80+var_74]
LDR             R0, =0x2AAAAAAB
SUB             R1, R1, R2
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
LDR             R1, [SP,#0x80+var_6C]
ADD             R0, R0, #1
CMP             R0, R1
BHI             loc_26C3A4
LDR             R0, [SP,#0x80+var_70]
CMP             R0, #0
BEQ             loc_26C398
LDR             R1, [SP,#0x80+var_64]
STR             R1, [R0],#4
ADD             R1, R10, #4
STR             R1, [R0]
LDR             R2, [R10,#8]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [R10,#8]
LDR             R0, [SP,#0x80+var_70]
ADD             R0, R0, #0xC
STR             R0, [SP,#0x80+var_70]
LDM             R6, {R3,R12}
MOV             R0, R6
LDMFD           SP, {R1,R2}
MOV             R8, #0
STMEA           SP, {R3,R12}
STM             R6, {R1,R2}
LDR             R2, [R6,#8]
LDR             R1, [SP,#0x80+var_78]
STR             R2, [SP,#0x80+var_78]
STR             R1, [R6,#8]
LDR             R2, [R6,#0xC]
LDR             R1, [SP,#0x80+var_74]
STR             R2, [SP,#0x80+var_74]
STR             R1, [R6,#0xC]
LDR             R2, [R6,#0x10]
LDR             R1, [SP,#0x80+var_70]
STR             R2, [SP,#0x80+var_70]
STR             R1, [R6,#0x10]
LDR             R1, [SP,#0x80+var_6C]
LDR             R2, [R0,#0x14]
STR             R1, [R6,#0x14]
LDR             R5, [SP,#0x80+var_70]
LDR             R7, [SP,#0x80+var_74]
STR             R8, [SP,#0x80+var_6C]
CMP             R7, R5
BEQ             loc_26C468
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_26C454
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_26C454
ADD             R0, R0, #0x400
ADD             R0, R0, #4
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #4
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_26C40C
LDR             R0, [SP,#0x80+var_78]
STR             R8, [SP,#0x80+var_74]
STR             R8, [SP,#0x80+var_70]
CMP             R0, #0
STR             R8, [SP,#0x80+var_78]
BLNE            sub_2FF5D4
LDR             R5, [SP,#0x80+var_70]
LDR             R7, [SP,#0x80+var_74]
CMP             R7, R5
BEQ             loc_26C4EC
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_26C4D8
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_26C4D8
ADD             R0, R0, #0x400
ADD             R0, R0, #4
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #4
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_26C490
LDR             R0, [SP,#0x80+var_78]
CMP             R0, #0
BEQ             loc_26C500
NOP
BL              sub_2FF5D4
LDR             R0, [R6,#0x2C]
SUB             R0, R0, #1
STR             R0, [R6,#0x2C]
LDR             R1, [SP,#0x80+var_5C]
ADD             R0, SP, #0x80+var_60
CMP             R1, R0
BNE             loc_26C54C
LDR             R0, [SP,#0x80+var_64]
CMP             R0, #0
BEQ             loc_26C54C
ADD             R0, R0, #0x400
ADD             R0, R0, #4
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #4
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x80+var_60]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x54 ; 'T'
VPOP            {D8}
POP             {R4-R11,PC}
