PUSH            {R4-R9,LR}
MOV             R4, R0
SUB             SP, SP, #0x24
MOV             R6, #0
LDRB            R0, [R0,#0x97]
CMP             R0, #0
BEQ             loc_265118
LDR             R0, [R4,#0x88]
STR             R6, [R4,#0x8C]
STRB            R6, [R4,#0x97]
ADD             R0, R0, #1
MOV             R5, #0
STR             R0, [R4,#0x88]
LDR             R0, [R4,#0x84]
LDR             R0, [R0,#-0xC]
ADD             R0, R0, #0x1C
LDM             R0, {R1,R2}
MOV             R3, #0
LDR             R0, [R0,#8]
VMOV            S0, R1
MOV             R6, SP
STR             R0, [SP,#0x40+var_20]
ADD             R0, SP, #0x40+var_28
STM             R0, {R1,R2}
MOV             R2, R3
LDR             R0, [R4]
VLDR            S1, [R0,#0x3CC]
LDR             R0, =off_6CE970
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x40+var_28]
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x818
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_26509C
LDR             R1, [R4,#4]
MOV             R3, R5
ADD             R2, SP, #0x40+var_28
BL              sub_25D15C
STR             R0, [SP,#0x40+var_40]
ADD             R0, R6, #4
STR             R0, [SP,#0x40+var_38]
STR             R0, [SP,#0x40+var_3C]
LDR             R3, [R4,#0x80]
LDR             R0, [R4,#0x84]
LDR             R2, =0x2AAAAAAB
MOV             R1, SP
SUB             R3, R0, R3
SMULL           R3, R2, R2, R3
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
ADD             R2, R2, #1
CMP             R2, #0xA
BHI             loc_26510C
CMP             R0, #0
BEQ             loc_265100
LDR             R2, [SP,#0x40+var_40]
ADD             R1, R1, #4
STR             R2, [R0],#4
STR             R1, [R0]
LDR             R1, [SP,#0x40+var_38]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0x40+var_38]
LDR             R0, [R4,#0x84]
ADD             R0, R0, #0xC
STR             R0, [R4,#0x84]
CMP             R5, #2
BNE             loc_265274
B               loc_265264
LDRSB           R0, [R4,#0x95]
CMP             R0, #0
LDRBEQ          R1, [R4,#0x94]
CMPEQ           R1, #0
BEQ             loc_26524C
ADD             R1, R4, #0x8C
LDM             R1, {R1,R2}
CMP             R2, R1
BLS             loc_26524C
LDRB            R1, [R4,#0x94]
STR             R6, [SP,#0x40+var_34]
STR             R6, [SP,#0x40+var_30]
CMP             R1, #0
STR             R6, [SP,#0x40+var_2C]
BEQ             loc_265160
LDR             R1, [R4]
LDR             R1, [R1,#0x3D4]
STR             R1, [SP,#0x40+var_30]
CMP             R0, #0
BEQ             loc_265174
LDR             R0, [R4]
LDR             R0, [R0,#0x3D8]
STR             R0, [SP,#0x40+var_2C]
LDR             R0, [R4]
LDR             R1, [R4,#0x88]
ADD             R5, SP, #0x40+var_34
MOV             R12, R5
LDR             R2, [R0,#0x78]
ADD             R8, SP, #0x40+var_28
MOV             R9, #0xFFFFFFFF
CMP             R1, R2
LDRCC           R0, [R0,#0x3DC]
MOV             R1, #0
MOV             R2, #1
STRCC           R0, [SP,#0x40+var_34]
LDR             R3, [SP,#0x40+var_34]
ADD             R0, SP, #0x40+var_38
SUBS            R2, R2, #1
LDR             R7, [R0,#8]!
ADD             R1, R1, R3
LDR             R3, [R0,#4]
ADD             R1, R1, R7
BNE             loc_2651AC
SUB             R0, R8, R5
LDR             R2, =dword_6D1F40
ADD             R0, R9, R0,ASR#2
CMP             R0, #0
LDRGE           R0, [R5,R0,LSL#2]
ADDGE           R1, R1, R0
MOV             R0, #1
BL              sub_47EADC
LDR             R1, [SP,#0x40+var_34]
MOV             R2, R0
MOV             R0, #0
CMP             R1, R2
BCS             loc_265210
CMP             R0, #2
BEQ             loc_265210
ADD             R0, R0, #1
LDR             R3, [R5,R0,LSL#2]
ADD             R1, R1, R3
B               loc_2651F0
ANDS            R5, R0, #0xFF
BEQ             loc_265238
CMP             R5, #1
CMPNE           R5, #2
BNE             loc_26502C
LDR             R0, [R4,#0x8C]
ADD             R0, R0, #1
STR             R0, [R4,#0x8C]
STR             R6, [R4,#0x88]
B               loc_26502C
LDR             R0, [R4,#0x88]
ADD             R1, R4, #0x88
ADD             R0, R0, #1
STM             R1, {R0,R6}
B               loc_26502C
LDR             R0, [R4,#0x88]
ADD             R1, R4, #0x88
MOV             R5, #0
ADD             R0, R0, #1
STM             R1, {R0,R6}
B               loc_26502C
LDRB            R0, [R4,#0x96]
CMP             R0, #0
LDRNE           R0, [SP,#0x40+var_40]
BLNE            sub_25C054
LDR             R1, [SP,#0x40+var_38]
ADD             R0, SP, #0x40+var_3C
CMP             R1, R0
BNE             loc_2652A0
LDR             R0, [SP,#0x40+var_40]
CMP             R0, #0
BEQ             loc_2652A0
BL              sub_25E310
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x40+var_3C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R9,PC}
