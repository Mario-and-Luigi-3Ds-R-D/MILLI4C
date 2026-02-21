PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R7, #2
VPUSH           {D8-D9}
SUB             SP, SP, #0x18
LDR             R0, [R0,#0x10]
CMP             R0, #0
BEQ             loc_256CD0
CMP             R0, #1
BEQ             loc_256ECC
CMP             R0, #2
BNE             loc_256CC4
ADD             R0, R4, #0x14
BL              sub_5C5820
CMP             R0, #0
BNE             loc_256CC4
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x10
ADD             R0, R4, #0x14
BL              sub_14C548
MOV             R0, #0xA
STRB            R0, [R4,#0xC]
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R10,PC}
ADD             R0, R4, #0x3B0
LDR             R1, =off_6CE098
MOV             R8, #0
VLDM            R0, {S0-S1}
LDR             R0, [R1]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_256E18
LDR             R3, [R0,#0x68]!
ADD             R0, R0, #4
STR             R0, [SP,#0x48+var_3C]
STR             R3, [SP,#0x48+var_40]
LDR             R3, [R0,#4]
ADD             R2, SP, #0x48+var_3C
STR             R3, [SP,#0x48+var_38]
STR             R2, [R3]
STR             R2, [R0,#4]
LDR             R5, [SP,#0x48+var_40]
MOV             R0, #4
ADD             R6, R5, #4
STRB            R0, [R5]
LDR             R0, [R1]
LDR             R0, [R0,#0x8C]
VLDR            S1, [R0,#0x258]
VLDR            S0, [R0,#0x260]
ADD             R0, R5, #0x38 ; '8'
BL              sub_5A12F8
MOV             R9, #1
STRB            R7, [R6,#0x68]
STRB            R9, [R5,#0xAF5]
LDR             R0, [R5,#0xA70]
MOV             R7, #0x120
CMP             R0, #0
BEQ             loc_256D60
BL              sub_533330
STR             R8, [R5,#0xA70]
LDR             R10, =off_6CE970
LDR             R6, [R10]
BL              sub_4635D8
MOV             R1, #7
MOV             R3, R0
STMEA           SP, {R1,R8}
ADD             R2, R5, #0x84
MOV             R1, R7
MOV             R0, R6
BL              sub_52C764
STR             R0, [R5,#0xA70]
STRH            R8, [R0,#0xA]
LDR             R0, [R5,#0xB50]
BL              sub_259C00
LDR             R1, [SP,#0x48+var_38]
ADD             R0, SP, #0x48+var_3C
CMP             R1, R0
BNE             loc_256DC4
LDR             R0, [SP,#0x48+var_40]
CMP             R0, #0
BEQ             loc_256DC4
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x48+var_3C]
MOV             R3, #1
ADD             R2, R4, #0x38 ; '8'
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R10]
ADD             R1, R3, #0x120
STR             R8, [SP,#0x48+var_48]
BL              sub_52AEA8
LDR             R0, [R4]
LDR             R12, [R10]
LDR             R2, =0x301DC
MOV             R3, #0
LDR             R1, [R0]
LDR             R0, =0xFFE683CC
SUB             R0, R12, R0
BL              sub_503720
STR             R9, [R4,#0x10]
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R10,PC}
LDR             R2, [R0,#0x68]!
ADD             R0, R0, #4
STR             R0, [SP,#0x48+var_44]
STR             R2, [SP,#0x48+var_48]
LDR             R2, [R0,#4]
ADD             R1, SP, #0x48+var_44
VLDR            S17, =0.0
STR             R2, [SP,#0x48+var_40]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x48+var_48]
LDR             R1, [SP,#0x48+var_40]
LDR             R0, [R0,#0xA74]
VLDR            S16, [R0,#0x24]
VLDR            S18, [R0,#0x2C]
ADD             R0, SP, #0x48+var_44
CMP             R1, R0
BNE             loc_256E7C
LDR             R0, [SP,#0x48+var_48]
CMP             R0, #0
BEQ             loc_256E7C
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x48+var_44]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             R0, R4, #0x400
ADD             R0, R0, #0xC
ADD             R1, SP, #0x48+var_3C
VLDR            S0, [R0]
VLDR            S2, [R0,#4]
VLDR            S1, [R0,#8]
VADD.F32        S0, S16, S0
VADD.F32        S2, S17, S2
VADD.F32        S1, S18, S1
ADD             R0, R4, #0x14
VSTR            S0, [SP,#0x48+var_3C]
VSTR            S2, [SP,#0x48+var_38]
VSTR            S1, [SP,#0x48+var_34]
BL              sub_14E984
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R10,PC}
ADD             R0, R4, #0x14
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_256CC4
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0xF
ADD             R0, R4, #0x14
BL              sub_14C430
STR             R7, [R4,#0x10]
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R10,PC}
