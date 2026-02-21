PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R7, R1
MOV             R9, #0
VPUSH           {D8}
SUB             SP, SP, #0x30
ADD             R5, SP, #0x58+arg_4
VLDR            S0, [SP,#0x58+arg_0]
LDM             R5, {R6,R8}
ADD             R5, SP, #0x58+arg_C
VLDM            R5, {S1-S4}
ADD             R5, SP, #0x58+var_48
STR             R9, [SP,#0x58+var_38]
STR             R9, [SP,#0x58+var_34]
STR             R9, [SP,#0x58+var_30]
VSTM            R5, {S1-S4}
ADD             R5, SP, #0x58+var_50
STR             R3, [SP,#0x58+var_58]
MOV             R3, R2
VSTR            S0, [SP,#0x58+var_54]
MOV             R2, R1
ADD             R1, SP, #0x58+var_38
STM             R5, {R6,R8}
BL              sub_1F0AE8
VLDR            S16, =0.5
MOV             R0, #0x14
MOV             R5, #0
STRB            R0, [R4,#0x14C]
LDRB            R2, [R4,#0x14C]
LDR             R0, [R4,#0x9C]
MOV             R1, R5
BL              sub_321610
ADD             R5, R5, #1
CMP             R5, #2
BLT             loc_1EE02C
LDR             R10, =off_67E18C
CMP             R7, #1
BEQ             loc_1EE070
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #2
BEQ             loc_1EE098
B               loc_1EE0D0
LDR             R0, [R4]
ADD             R10, R10, #0x20 ; ' '
MOV             R3, #0
LDM             R10, {R1,R2}
LDR             R12, [R0,#0x28]
MOV             R0, R4
BLX             R12
ADD             SP, SP, #0x30 ; '0'
VPOP            {D8}
POP             {R4-R10,PC}
LDR             R0, [SP,#0x58+var_34]
LDR             R0, [R0,#0x86C]
AND             R0, R0, #0xF
CMP             R0, #3
BEQ             loc_1EE0D0
LDR             R3, [SP,#0x58+var_34]
MOV             R2, R6
ADD             R1, SP, #0x58+var_38
MOV             R0, R4
STR             R8, [SP,#0x58+var_58]
BL              sub_1F0DC0
NOP
NOP
B               loc_1EE070
LDR             R0, [SP,#0x58+var_34]
LDR             R0, [R0,#0x86C]
AND             R0, R0, #0xF
CMP             R0, #0xF
BNE             loc_1EE08C
LDR             R0, [R4,#0xC4]
MOV             R5, #0
MOV             R7, R5
LDR             R1, [R0,#4]
LDR             R2, [R1,#0x14]
LDR             R0, [R1,#4]
TST             R2, #0x10000
BEQ             loc_1EE138
LDR             R3, [R0,#0x86C]
MOV             R2, #0xF
BICS            R3, R2, R3
BNE             loc_1EE124
LDR             R1, [R1,#8]
LDR             R1, [R1,#0x86C]
BICS            R1, R2, R1
BEQ             loc_1EE138
ADD             R1, R10, #0x28 ; '('
ADD             R3, R4, #0x4C ; 'L'
LDM             R1, {R1,R2}
MOV             R5, #1
STM             R3, {R1,R2}
LDRB            R1, [R0,#0xDE]
TST             R1, #1
BEQ             loc_1EE15C
LDR             R2, =0x468
LDRH            R2, [R2,R0]
SUB             R2, R2, #8
CMP             R2, #8
BICCC           R1, R1, #8
STRBCC          R1, [R0,#0xDE]
LDR             R0, [R4]
LDR             R1, [SP,#0x58+var_34]
MOV             R2, R6
LDR             R3, [R0,#0x3C]
MOV             R0, R4
BLX             R3
CMP             R0, #0
BEQ             loc_1EE1A4
LDR             R0, [SP,#0x58+var_38]
LDRB            R0, [R0,#0xF]
CMP             R0, #3
BNE             loc_1EE19C
LDR             R0, [SP,#0x58+var_34]
LDR             R1, [R0,#0x4EC]
ORR             R1, R1, #4
STR             R1, [R0,#0x4EC]
MOV             R7, #1
B               loc_1EE1CC
LDR             R0, [R4]
LDR             R1, [SP,#0x58+var_34]
LDR             R2, [R0,#0x40]
MOV             R0, R4
BLX             R2
CMP             R0, #0
BEQ             loc_1EE1CC
LDRD            R0, R1, [R10,#(off_67E1BC - 0x67E18C)]
MOV             R7, #1
STRD            R0, R1, [R4,#0x4C]
LDR             R0, [SP,#0x58+var_38]
LDRB            R0, [R0,#0xF]
CMP             R0, #1
CMPNE           R0, #2
CMPNE           R0, #3
BEQ             loc_1EE26C
LDR             R0, [SP,#0x58+var_34]
VLDR            S0, [R6,#0x108]
ADD             R2, R6, #0x400
ADD             R1, R0, #0x400
VLDR            S1, [R0,#0x108]
VLDR            S3, =0.0
VSUB.F32        S0, S0, S1
VMUL.F32        S0, S0, S16
VSTR            S0, [SP,#0x58+var_54]
VLDR            S0, [R1,#0x234]
VLDR            S4, [R2,#0x234]
VLDR            S1, [R0,#0x10C]
VMUL.F32        S2, S0, S16
VLDR            S5, [R6,#0x10C]
VMLA.F32        S1, S0, S16
ADD             R0, R0, #0x800
VMLA.F32        S2, S4, S16
VADD.F32        S0, S2, S5
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x58+var_50]
VSTR            S3, [SP,#0x58+var_4C]
LDRH            R0, [R0,#0xB8]
BL              sub_2AF718
LDR             R1, [R0]
ADD             R0, SP, #0x58+var_54
STR             R0, [SP,#0x58+var_58]
LDR             R0, [R4,#0xA0]
TST             R1, #1
MOV             R3, R8
BEQ             loc_1EE29C
LDR             R2, =0x1A9
MOV             R1, #0
BL              sub_2D3F94
STR             R0, [R4,#0x160]
CMP             R5, #0
BEQ             loc_1EE284
LDR             R0, [R4,#0xC4]
MOV             R1, #0xFFFFFFFF
LDR             R0, [R0,#4]
BL              sub_537BE0
ORRS            R0, R5, R7
STREQ           R9, [R4,#0x154]
BEQ             loc_1EE070
ADD             SP, SP, #0x30 ; '0'
VPOP            {D8}
POP             {R4-R10,PC}
LDR             R2, =0x171
MOV             R1, #0
BL              sub_2D3F94
NOP
NOP
B               loc_1EE268
