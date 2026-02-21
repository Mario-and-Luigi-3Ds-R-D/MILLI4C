PUSH            {R4-R11,LR}
MOV             R6, #0
MOV             R8, R0
ADD             R10, R8, #0xC00
ADD             R11, R8, #0xC00
ADD             R11, R11, #0x188
VPUSH           {D8-D9}
SUB             SP, SP, #0x94
ADD             R10, R10, #0x184
LDR             R1, [R8,#0xD88]
LDR             R2, [R8,#0xD84]
VLDR            S17, [R0,#0x24]
VLDR            S18, [R0,#0x2C]
LDR             R0, =0x2AAAAAAB
SUB             R1, R1, R2
VLDR            S16, =0.0
SMULL           R2, R1, R0, R1
MOV             R2, R1,ASR#1
SUB             R1, R2, R1,ASR#31
CMP             R1, #0
LDR             R1, =off_6B7C1C
STR             R1, [SP,#0xC8+var_C4]
BLS             loc_24F5E4
LDR             R0, =off_6B9ECC
ADD             R7, R8, #0x1800
STR             R0, [SP,#0xC8+var_70]
LDR             R0, =off_6B9EDC
STR             R0, [SP,#0xC8+var_6C]
ADD             R0, R8, #0x1800
ADD             R0, R0, #0x144
STR             R0, [SP,#0xC8+var_4C]
ADD             R0, R8, #0x1800
ADD             R0, R0, #0x13C
STR             R0, [SP,#0xC8+var_48]
ADD             R0, R8, #0x1000
ADD             R0, R0, #0x8D0
STR             R0, [SP,#0xC8+var_44]
ADD             R0, R8, #0x1800
ADD             R0, R0, #0xCC
STR             R0, [SP,#0xC8+var_40]
ADD             R0, SP, #0xC8+var_80
STR             R0, [SP,#0xC8+var_68]
ADD             R0, R8, #0xC00
ADD             R0, R0, #0x18C
STR             R0, [SP,#0xC8+var_3C]
LDR             R0, =off_6CE970
MOV             R3, #0
ADD             R9, SP, #0xC8+var_84
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x18C
BL              sub_10A358
MOVS            R5, R0
MOVEQ           R2, #0
BEQ             loc_24F420
LDR             R0, [R10]
ADD             R3, R6, R6,LSL#1
LDR             R1, [R0,R3,LSL#2]
LDM             R1, {R0,R2-R4,R12}
STM             R5, {R0,R2-R4,R12}
MOV             R0, R5
MOV             R4, R1
LDRD            R2, R3, [R1,#0x14]
LDR             R1, [R1,#0x1C]
STR             R1, [R5,#0x1C]
STRD            R2, R3, [R0,#0x14]
ADD             R2, R4, #0x20 ; ' '
VLDR            S5, [R4,#0x2C]
VLDR            S3, [R4,#0x30]
VLDR            S7, [R4,#0x34]
VLDR            S4, [R4,#0x38]
VLDR            S6, [R4,#0x3C]
ADD             R1, R0, #0x20 ; ' '
VLDM            R2, {S0-S2}
ADD             R0, R5, #0x40 ; '@'
VSTR            S5, [R5,#0x2C]
VSTR            S3, [R5,#0x30]
VSTR            S7, [R5,#0x34]
VSTR            S4, [R5,#0x38]
VSTM            R1, {S0-S2}
ADD             R1, R4, #0x40 ; '@'
VSTR            S6, [R5,#0x3C]
BL              sub_1169CC
ADD             R0, R5, #0x70 ; 'p'
ADD             R1, R4, #0x70 ; 'p'
BL              sub_1169CC
LDRB            R1, [R4,#0xA0]
ADD             LR, R5, #0xA8
ADD             R0, R5, #0xA4
STRB            R1, [R5,#0xA0]
LDR             R2, [SP,#0xC8+var_70]
ADD             R1, R4, #0xA4
STR             R2, [R5,#0xA4]
ADD             R2, R4, #0xA8
LDM             R2, {R2,R3,R12}
STM             LR, {R2,R3,R12}
ADD             R2, R4, #0xB4
ADD             LR, R5, #0xB4
LDM             R2, {R2,R3,R12}
STM             LR, {R2,R3,R12}
ADD             R2, R4, #0xC0
ADD             LR, R5, #0xC0
LDM             R2, {R2,R3,R12}
STM             LR, {R2,R3,R12}
MOV             R3, #3
LDR             R2, [R4,#0xCC]
STR             R2, [R0,#0x28]
LDRB            R2, [R1,#0x2C]
ADD             R1, R1, #0x30 ; '0'
STRB            R2, [R0,#0x2C]
VLDR            S0, [SP,#0xC8+var_C4]
LDR             R2, =sub_5A3974
VSTR            S0, [R0]
ADD             R0, R0, #0x30 ; '0'
STR             R2, [SP,#0xC8+var_C8]
MOV             R2, #0x28 ; '('
BLX             sub_1036B4
LDR             R3, [R4,#0x14C]
SUB             R0, R0, #0xD4
ADD             R1, R4, #0x14C
STR             R3, [R0,#0x14C]
LDR             R3, [R4,#0x150]
ADD             R2, R0, #0x14C
STR             R3, [R0,#0x150]
LDR             R3, [R4,#0x154]
STR             R3, [R0,#0x154]
ADD             R3, R4, #0x158
VLDM            R3, {S0-S3}
ADD             R3, R0, #0x158
VSTM            R3, {S0-S3}
LDR             R3, [SP,#0xC8+var_6C]
STR             R3, [R0,#0x168]
LDR             R3, [R4,#0x16C]
STR             R3, [R0,#0x16C]
LDRB            R3, [R4,#0x170]
STRB            R3, [R0,#0x170]
LDR             R3, [R1,#0x28]
STR             R3, [R2,#0x28]
LDR             R3, [R1,#0x2C]
STR             R3, [R2,#0x2C]
LDR             R3, [R1,#0x30]
STR             R3, [R2,#0x30]
LDR             R1, [R1,#0x34]
STR             R1, [R2,#0x34]
LDR             R1, [R4,#0x184]
MOV             R2, R0
STR             R1, [R0,#0x184]
LDR             R1, [R4,#0x188]
STR             R1, [R0,#0x188]
STR             R2, [SP,#0xC8+var_84]
LDR             R1, [SP,#0xC8+var_84]
ADD             R0, R9, #4
STR             R0, [SP,#0xC8+var_7C]
STR             R0, [SP,#0xC8+var_80]
ADD             R0, SP, #0xC8+var_B8
ADD             R1, R1, #0x40 ; '@'
BL              sub_1169CC
LDR             R0, [SP,#0xC8+var_84]
ADD             R2, SP, #0xC8+var_B8
VSTR            S17, [R0,#0x14]
VSTR            S16, [R0,#0x18]
VSTR            S18, [R0,#0x1C]
LDR             R0, [SP,#0xC8+var_84]
VLDR            S1, [R7,#0xE4]
VLDR            S0, [R0,#0x48]
VMUL.F32        S0, S1, S0
VSTR            S0, [SP,#0xC8+var_AC]
VLDR            S0, [R7,#0xE4]
VLDR            S1, [R0,#0x58]
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0xC8+var_9C]
VLDR            S0, [R7,#0xE4]
VLDR            S1, [R0,#0x68]
MOV             R0, R2
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0xC8+var_8C]
LDR             R1, [SP,#0xC8+var_4C]
BL              sub_141F30
VLDR            S0, [R8,#0x28]
VLDR            S1, [SP,#0xC8+var_9C]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0xC8+var_9C]
LDR             R1, [SP,#0xC8+var_48]
LDR             R0, [SP,#0xC8+var_84]
LDR             R2, [R1]
ADD             R1, SP, #0xC8+var_B8
BL              sub_24CD40
ADD             R0, SP, #0xC8+var_44
LDR             R4, =0x2AAAAAAB
LDM             R0, {R1-R3}
LDR             R1, [R1]
LDR             R2, [R2]
MOV             R0, R3
SUB             R2, R1, R2
SMULL           R3, R2, R4, R2
MOV             R3, R2,ASR#1
SUB             R3, R3, R2,ASR#31
ADD             R3, R3, #1
CMP             R3, #0xF0
BHI             loc_24F524
CMP             R1, #0
ADD             R0, R0, #0xB40
BEQ             loc_24F518
LDR             R2, [SP,#0xC8+var_84]
ADD             R3, SP, #0xC8+var_80
STRD            R2, R3, [R1]
LDR             R12, [SP,#0xC8+var_7C]
ADD             R1, R1, #4
STR             R12, [R1,#4]
STR             R1, [R12]
STR             R1, [SP,#0xC8+var_7C]
LDR             R1, [R0,#4]
ADD             R1, R1, #0xC
STR             R1, [R0,#4]
LDR             R0, [SP,#0xC8+var_68]
LDR             R1, [SP,#0xC8+var_7C]
CMP             R1, R0
BNE             loc_24F588
LDR             R1, [SP,#0xC8+var_84]
CMP             R1, #0
BEQ             loc_24F588
ADD             R0, R1, #0x168
NOP
VLDR            S0, [SP,#0xC8+var_C4]
SUB             R5, R0, #0xC4
VSTR            S0, [R0,#-0xC4]
LDR             R1, =sub_5A2F60
MOV             R3, #3
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x94
BLX             sub_1009D8
MOV             R0, R5
NOP
NOP
SUB             R0, R0, #0xA4
MOV             R3, #0
STRH            R3, [R0,#0x34]
STRH            R3, [R0,#0x28]
BL              sub_300FD4
NOP
B               loc_24F5B0
DCFS 0.0
DCD 0x2AAAAAAB
DCD off_6B7C1C
DCD off_6B9ECC
DCD off_6B9EDC
DCD off_6CE970
DCD sub_5A3974
DCD sub_5A2F60
LDR             R0, [SP,#0xC8+var_80]
LDR             R3, [SP,#0xC8+var_7C]
ADD             R6, R6, #1
STR             R3, [R0,#4]
STR             R0, [R3]
LDR             R3, [R11]
LDR             R1, [R10]
SUB             R1, R3, R1
SMULL           R2, R1, R4, R1
MOV             R2, R1,ASR#1
SUB             R0, R2, R1,ASR#31
CMP             R0, R6
BHI             loc_24F27C
LDR             R5, [R8,#0xD88]
LDR             R6, [R8,#0xD84]
CMP             R6, R5
MOVNE           R9, #0
BEQ             loc_24F67C
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_24F668
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_24F668
ADD             R0, R0, #0x168
NOP
SUB             R7, R0, #0x168
LDR             R0, [SP,#0xC8+var_C4]
LDR             R1, =sub_5A2F60
MOV             R3, #3
STR             R0, [R7,#0xA4]!
MOV             R2, #0x28 ; '('
ADD             R0, R7, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R7
NOP
NOP
SUB             R1, R0, #0xA4
SUB             R0, R0, #0x84
STRH            R9, [R0,#0x14]
STRH            R9, [R0,#8]
MOV             R0, R1
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_24F5F8
LDR             R0, [R8,#0xD84]
STR             R0, [R8,#0xD88]
ADD             R8, R8, #0x1800
ADD             R8, R8, #0xD8
MOV             R0, #1
STRB            R0, [R8]
ADD             SP, SP, #0x94
VPOP            {D8-D9}
POP             {R4-R11,PC}
