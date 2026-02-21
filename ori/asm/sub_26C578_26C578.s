PUSH            {R4-R11,LR}
MOV             R6, R0
LDR             R9, =off_6CE970
VLDR            S1, =0.0039062
LDR             R8, =off_6CDF98
VPUSH           {D8}
SUB             SP, SP, #0xB4
LDR             R0, [R9]
LDR             R5, [R6,#0xC]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
LDR             R0, [R6,#0x10]
CMP             R0, R5
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S1
BEQ             loc_26C73C
MOV             R7, #2
VLDR            S17, =0.0
MOV             R10, #3
MOV             R11, #4
LDR             R4, [R5]
LDRB            R0, [R4,#0x3F4]
CMP             R0, #0
BEQ             loc_26C5FC
CMP             R0, #1
BEQ             loc_26C6A4
CMP             R0, #2
BEQ             loc_26C6E0
CMP             R0, #3
BNE             loc_26C72C
B               loc_26C71C
VMOV.F32        S1, S16
VLDR            S0, [R4,#0x3F8]
VLDR            S2, [R4,#0x3FC]
VMLA.F32        S0, S2, S1
VSTR            S0, [R4,#0x3F8]
LDR             R0, [R8]
LDR             R0, [R0,#0x124]
ADD             R0, R0, #0x400
VLDR            S1, [R0,#0x23C]
ADD             R0, R4, #0x24 ; '$'
VCMPE.F32       S0, S1
LDM             R0, {R0-R2}
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S1
VMOV.F32        S1, S16
VSTR            S0, [R4,#0x3F8]
VMOV            S0, R1
STMEA           SP, {R0-R2}
MOV             R1, SP
VLDR            S2, [R4,#0x3F8]
MOV             R0, R4
VMLA.F32        S0, S2, S1
VSTR            S0, [SP,#0xE0+var_DC]
BL              sub_14E984
ADD             R0, R4, #0x400
MOV             R1, SP
ADD             R0, R0, #4
BL              sub_274400
VLDR            S0, [SP,#0xE0+var_DC]
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BHI             loc_26C72C
VSTR            S17, [SP,#0xE0+var_DC]
MOV             R1, SP
MOV             R0, R4
BL              sub_14E984
MOV             R0, R4
NOP
BL              sub_26BB6C
NOP
NOP
B               loc_26C72C
MOV             R0, R4
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_26C72C
LDRB            R0, [R4,#0x400]
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R0, #2
AND             R1, R0, #0xFF
MOV             R0, R4
BL              sub_14C548
STRB            R7, [R4,#0x3F4]
NOP
B               loc_26C72C
ADD             R0, R4, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_26C72C
LDRB            R0, [R4,#0x400]
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R0, #3
AND             R1, R0, #0xFF
MOV             R0, R4
BL              sub_14C548
STRB            R10, [R4,#0x3F4]
NOP
B               loc_26C72C
ADD             R0, R4, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
STRBEQ          R11, [R4,#0x3F4]
LDR             R0, [R6,#0x10]
ADD             R5, R5, #0xC
CMP             R0, R5
BNE             loc_26C5D0
LDR             R0, [R8]
BL              sub_5CCB74
CMP             R0, #0
NOP
BEQ             loc_26C8B0
LDR             R0, =off_6BC06C
MOV             R1, #1
STR             R0, [SP,#0xE0+var_DC]
ADD             R0, SP, #0xE0+var_D8
BL              sub_2744B0
LDR             R0, [R8]
NOP
BL              sub_5CC92C
LDM             R0, {R1-R3,R12}
LDR             R4, [R0,#0x10]
LDR             R0, [R0,#0x14]
STR             R4, [SP,#0xE0+var_A4]
STR             R0, [SP,#0xE0+var_A0]
ADD             R0, SP, #0xE0+var_B4
STM             R0, {R1-R3,R12}
BL              sub_4635D8
MOV             R1, R0
ADD             R0, SP, #0xE0+var_D8
BL              sub_274350
LDR             R0, [R6,#0x10]
LDR             R4, [R6,#0xC]
CMP             R0, R4
LDRNE           R11, =0xFFE683CC
MOVNE           R10, #0
BEQ             loc_26C8A8
LDR             R0, [R4]
ADD             R3, R0, #0x400
LDRB            R1, [R0,#0x421]
ADD             R3, R3, #4
MOV             R0, #0
CMP             R1, #0
BEQ             loc_26C7FC
LDR             R12, [SP,#0xE0+var_DC]
ADD             R0, SP, #0xE0+var_38
ADD             R1, SP, #0xE0+var_DC
ADD             R2, SP, #0xE0+var_D8
LDR             R12, [R12,#0xC]
BLX             R12
LDRB            R1, [SP,#0xE0+var_38]
MOV             R0, #1
CMP             R1, #0
MOVNE           R1, #1
BNE             loc_26C800
MOV             R1, #0
CMP             R0, #0
LDRNE           R0, [SP,#0xE0+var_34]
CMPNE           R0, #0
STRNE           R10, [SP,#0xE0+var_34]
CMP             R1, #0
BEQ             loc_26C898
LDR             R0, [R4]
ADD             R7, SP, #0xE0+var_48
ADD             R1, R0, #0x24 ; '$'
LDR             R0, [R0,#0x2C]
LDM             R1, {R1,R2}
STR             R0, [SP,#0xE0+var_40]
ADD             R0, SP, #0xE0+var_48
STM             R0, {R1,R2}
MOV             R1, R7
LDR             R0, [SP,#0xE0+var_A4]
STR             R0, [SP,#0xE0+var_44]
LDR             R5, [R4]
MOV             R0, R5
BL              sub_14E984
LDR             R0, [R9]
MOV             R3, #1
MOV             R2, R7
MOV             R1, #0x59 ; 'Y'
STR             R10, [SP,#0xE0+var_E0]
BL              sub_52AEA8
LDR             R0, [R9]
LDR             R2, =0x300DB
MOV             R3, #0
MOV             R1, R5
SUB             R0, R0, R11
BL              sub_503720
MOV             R0, R5
NOP
BL              sub_26BB6C
LDR             R0, [R8]
ADD             R1, SP, #0xE0+var_48
BL              sub_27900C
LDR             R0, [R6,#0x10]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_26C7B4
ADD             R0, SP, #0xE0+var_D8
NOP
ADD             R0, R6, #0xC
LDM             R0, {R0,R5}
CMP             R0, R5
BEQ             loc_26C8D4
LDR             R2, [R0]
LDRB            R1, [R2,#0x3F4]
CMP             R1, #4
ADDNE           R0, R0, #0xC
BNE             loc_26C8B8
CMP             R0, R5
MOV             R7, R0
ADDNE           R4, R7, #0xC
CMPNE           R4, R5
BEQ             loc_26C9B0
LDR             R0, [R4]
LDRB            R1, [R0,#0x3F4]
CMP             R1, #4
BEQ             loc_26C9A4
LDR             R1, [R7]
CMP             R1, R0
BEQ             loc_26C9A0
LDR             R0, [R7,#8]
ADD             R3, R7, #4
CMP             R0, R3
BNE             loc_26CA4C
CMP             R1, #0
BEQ             loc_26C940
ADD             R0, R1, #0x400
ADD             R0, R0, #4
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #4
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
NOP
B               loc_26C964
DCD off_6CE970
DCFS 0.0039062
DCD off_6CDF98
DCFS 0.0
DCD off_6BC06C
DCD 0xFFE683CC
DCD 0x300DB
LDR             R3, [R4]
ADD             R1, R4, #4
ADD             R0, R7, #4
CMP             R1, R0
STR             R3, [R7]
LDRNE           R2, [R1,#4]
CMPNE           R2, R0
BEQ             loc_26C9A0
LDM             R0, {R3,R12}
STR             R12, [R3,#4]
STR             R3, [R12]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [R1,#4]
STR             R1, [R0]
ADD             R7, R7, #0xC
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_26C8E8
LDR             R5, [R6,#0x10]
CMP             R7, R5
BEQ             loc_26CA40
LDR             R1, =0x2AAAAAAB
SUB             R0, R5, R7
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R7, R5, R0,LSL#2
CMP             R7, R5
BEQ             loc_26CA3C
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_26CA28
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_26CA28
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
BNE             loc_26C9E0
STR             R7, [R6,#0x10]
ADD             SP, SP, #0xB4
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R1, [R7,#4]
ADD             R2, R7, #4
STR             R0, [R1,#4]
STR             R1, [R0]
STR             R2, [R7,#4]
STR             R2, [R7,#8]
B               loc_26C940
