PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R8, #0
VPUSH           {D8}
SUB             SP, SP, #0x18
LDRB            R0, [R0,#0xE]
CMP             R0, #0
BEQ             loc_28D6A4
LDR             R0, [R4]
LDR             R1, [R0,#0x10]
MOV             R0, R4
BLX             R1
STRB            R8, [R4,#0xE]
LDRB            R0, [R4,#0x4C]
VLDR            S16, =10.0
VLDR            S17, =0.0
CMP             R0, #1
MOV             R5, #1
BEQ             loc_28D72C
LDR             R7, =off_6CE970
CMP             R0, #2
BEQ             loc_28D838
CMP             R0, #3
VLDR            S16, =4.0
BEQ             loc_28D940
CMP             R0, #4
BNE             loc_28D720
LDR             R0, [R7]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
TST             R0, #1
BEQ             loc_28D720
MOV             R0, #0xFFFFFF00
LDR             R2, [R4,#0x1C]
REV             R0, R0
VMOV.F32        S0, S16
STR             R0, [SP,#0x38+var_38]
MOV             R1, SP
ADD             R0, R2, #0x32C
BL              sub_4E665C
MOV             R0, #5
STRB            R0, [R4,#0x4C]
STRB            R5, [R4,#0xC]
ADD             SP, SP, #0x18
VPOP            {D8}
POP             {R4-R8,PC}
LDR             R0, [R4,#0x50]
LDRH            R1, [R0,#0xE]
TST             R1, #1
BEQ             loc_28D748
LDRB            R1, [R0,#0x16E]
CMP             R1, #0
BEQ             loc_28D720
LDRB            R1, [R0,#0x172]
CMP             R1, #0
BEQ             loc_28D764
BL              sub_532B54
CMP             R0, #0
NOP
BNE             loc_28D720
LDR             R0, [R4,#0x18]
LDR             R1, [R4,#0x38]
LDR             R2, [R0]
LDR             R3, [R2,#0x58]
MOV             R2, #0
BLX             R3
LDR             R0, [R4,#0x18]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0
BL              sub_14C548
MOV             R0, #2
STRB            R0, [R4,#0x4C]
LDR             R0, [R4,#0x18]
ADD             R1, R0, #0x24 ; '$'
LDR             R0, [R0,#0x2C]
LDM             R1, {R1,R2}
STR             R0, [SP,#0x38+var_30]
VMOV            S0, R1
STMEA           SP, {R1,R2}
VLDR            S1, [R4,#0x2C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x38+var_38]
VMOV            S0, R2
VLDR            S1, [R4,#0x30]
VADD.F32        S0, S0, S1
VMOV            S1, R0
ADD             R0, SP, #0x38+var_34
VSTR            S0, [SP,#0x38+var_34]
VLDR            S2, [R4,#0x34]
VSUB.F32        S0, S0, S16
VADD.F32        S1, S1, S2
VSTM            R0, {S0-S1}
LDR             R0, [R4,#0x14]
STRB            R5, [R0,#0xF2]
LDR             R0, [R4,#0x14]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, SP
BLX             R2
LDRB            R1, [R4,#0x10]
LDR             R0, [R4,#0x14]
MOV             R3, #0x100
MOV             R2, #1
BL              sub_14C548
STRB            R8, [R4,#0x54]
LDR             R0, [R4,#0x14]
ADD             R0, R0, #0x39C
VSTR            S17, [R0]
VSTR            S16, [R0,#4]
ADD             SP, SP, #0x18
VPOP            {D8}
POP             {R4-R8,PC}
LDRB            R0, [R4,#0x54]
CMP             R0, #0
BNE             loc_28D880
LDR             R0, [R4,#0x14]
ADD             R0, R0, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_28D880
STRB            R5, [R4,#0x54]
VSTR            S17, [SP,#0x38+var_38]
ADD             R0, SP, #0x38+var_34
MOV             R1, SP
VSTM            R0, {S16-S17}
LDR             R0, [R4,#0x14]
VLDR            S0, =8.0
ADD             R0, R0, #0x1DC
BL              sub_5A367C
LDR             R0, [R4,#0x18]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_28D720
LDR             R0, [R4,#0x18]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #7
BL              sub_14C548
LDR             R0, [R4,#0x14]
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0x2C]
ADD             R1, SP, #0x38+var_30
BLX             R3
LDR             R0, [R7]
LDR             R1, =0x12E
MOV             R2, #0
BL              sub_52F9B4
ADD             R5, SP, #0x38+var_30
ADD             R0, R0, #0x134
LDM             R5, {R1-R3}
STM             R0, {R1-R3}
LDR             R5, [R7]
LDR             R6, [R4,#0x14]
BL              sub_4635D8
MOV             R1, #7
MOV             R3, R0
STMEA           SP, {R1,R8}
MOV             R2, R6
ADD             R1, R1, #0x128
MOV             R0, R5
BL              sub_52C764
LDR             R2, [R4,#0x3C]
STR             R0, [R2]
STRH            R8, [R0,#0xA]
LDR             R2, [R4,#0x48]
CMN             R2, #1
BEQ             loc_28D938
LDR             R0, [R7]
LDR             R12, =0xFFE683CC
MOV             R3, #0
MOV             R1, #0x1000
SUB             R0, R0, R12
BL              sub_503808
MOV             R0, #3
B               loc_28D9C8
LDR             R0, [R4,#0x14]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_28D720
LDRB            R1, [R4,#0x11]
LDR             R0, [R4,#0x14]
MOV             R3, #0x100
MOV             R2, #0
BL              sub_14C430
LDR             R0, [R4,#0x1C]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, R4, #0x20 ; ' '
BLX             R2
LDR             R6, [R4,#0x1C]
MOV             R0, #0xFFFFFF00
REV             R0, R0
STRB            R5, [R6,#0xF2]
ADD             R5, R6, #0x32C
STR             R0, [SP,#0x38+var_38]
MOV             R0, R5
BL              sub_4E63E0
LDR             R0, [SP,#0x38+var_38]
VMOV.F32        S0, S16
MOV             R1, SP
STR             R0, [R5,#4]
STR             R0, [R5]
MOV             R0, #0xFFFFFFFF
REV             R0, R0
STR             R0, [SP,#0x38+var_38]
ADD             R0, R6, #0x32C
BL              sub_4E665C
MOV             R0, #4
STRB            R0, [R4,#0x4C]
ADD             SP, SP, #0x18
VPOP            {D8}
POP             {R4-R8,PC}
