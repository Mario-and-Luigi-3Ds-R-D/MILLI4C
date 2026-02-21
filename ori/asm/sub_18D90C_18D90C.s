PUSH            {R0-R11,LR}
SUB             SP, SP, #0xC
MOV             R7, R0
ADD             R0, SP, #0x40+arg_0
ADD             R4, R7, #0x10000
ADD             R4, R4, #0x3D40
LDM             R0, {R10,LR}
MOV             R9, R3
LDR             R0, [R4]
LDR             R1, [SP,#0x40+arg_C]
LDR             R6, [SP,#0x40+arg_8]
TST             R0, #1
BNE             loc_18DB48
LDR             R11, =off_6D1648
ADD             R8, R7, #0x10000
ADD             R8, R8, #0x3D00
LDR             R12, =0x13D48
LDR             R0, [R11]
LDR             R0, [R0,#0xC4]
LDR             R5, [R0,#4]
LDR             R0, [R5,#0x14]
TST             R0, #0x400000
LDRNE           R0, [R5,#8]
LDREQ           R0, [R5,#4]
ADD             R3, R0, #0x800
LDR             R0, [SP,#0x40+var_30]
SXTH            R0, R0
STRH            R0, [R5,#0x4C]
STRH            R0, [R3,#0xB8]
LDR             R3, [R4]
BIC             R3, R3, #2
ORR             R3, R3, #1
ORR             R1, R3, R1,LSL#1
STR             R1, [R4]
STRH            R0, [R8,#0x44]
BIC             R1, R1, #4
VLDM            R2, {S0-S2}
ADD             R3, R7, #0x13C00
ORR             R2, R1, R10,LSL#2
VSTR            S0, [R3,#0x150]
ADD             R1, R7, #0x13C00
VSTR            S1, [R3,#0x154]
ADD             R1, R1, #0x14C
STR             R1, [SP,#0x40+var_3C]
VSTR            S2, [R3,#0x158]
STRB            R9, [R12,R7]
STR             R2, [R4]
STRH            LR, [R8,#0x46]
STR             R6, [R1]
LDR             R1, [R5,#0x14]
TST             R1, #0x10000
BEQ             loc_18D9F8
LDR             R1, [R5,#8]
ADD             R1, R1, #0x800
STRH            R0, [R1,#0xB8]
LDR             R0, [R4]
ORR             R0, R0, #0x18
STR             R0, [R4]
B               loc_18DA10
TST             R1, #0x400000
BICNE           R0, R2, #8
ORRNE           R0, R0, #0x10
BICEQ           R0, R2, #0x10
ORREQ           R0, R0, #8
STR             R0, [R4]
LDRH            R0, [R8,#4]
BL              sub_2AF718
STR             R0, [SP,#0x40+var_40]
LDRH            R0, [R8,#0x44]
BL              sub_2AF718
MOV             R8, R0
LDR             R0, [R4]
TST             R0, #2
BEQ             loc_18DA88
MOV             R2, #8
MOV             R1, R9,LSR#1
ADD             R0, R7, #0x2C4
BL              sub_598F40
LDR             R0, [SP,#0x40+arg_10]
CMP             R0, #0
BEQ             loc_18DA88
LDR             R0, [SP,#0x40+var_40]
LDR             R1, [R8]
LDR             R0, [R0]
MOV             R1, R1,LSL#1
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
CMP             R0, R1,LSR#16
BEQ             loc_18DA88
LDR             R0, [R11]
MOV             R2, #8
MOV             R1, #0xFF
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x2C4
BL              sub_5996A0
CMP             R10, #0
BNE             loc_18DA9C
LDR             R0, [R4]
TST             R0, #2
BEQ             loc_18DAC8
LDR             R0, [R5,#0x14]
LDR             R3, =unk_67DDCC
BIC             R1, R9, #3
ORR             R0, R0, #1
STR             R0, [R5,#0x14]
LDR             R1, [R3,R1]
MOV             R2, #0xF00
BIC             R0, R0, #0xF00
AND             R1, R2, R1,LSL#8
ORR             R0, R0, R1
STR             R0, [R5,#0x14]
CMN             R6, #3
BEQ             loc_18DAE8
CMN             R6, #2
BEQ             loc_18DB48
CMN             R6, #1
CMPNE           R6, #0
BEQ             loc_18DB14
B               loc_18DAF8
LDR             R0, [SP,#0x40+var_30]
UXTH            R0, R0
BL              sub_2AF718
LDR             R6, [R0,#0xC]
LDR             R0, [R11]
LDR             R0, [R0,#0x148]
CMP             R0, R6
BEQ             loc_18DB48
CMP             R6, #0
LDRNE           R0, [SP,#0x40+var_3C]
STRNE           R6, [R0]
LDR             R0, [SP,#0x40+var_40]
LDR             R1, [R8]
LDR             R0, [R0]
MOV             R0, R0,LSL#31
CMP             R0, R1,LSL#31
LDR             R0, [R11]
MOVNE           R2, #0x78 ; 'x'
MOVEQ           R2, #0x14
MOV             R1, #0
LDR             R0, [R0,#0x9C]
ADD             SP, SP, #0x1C
POP             {R4-R11,LR}
B               sub_321610
ADD             SP, SP, #0x1C
POP             {R4-R11,PC}
