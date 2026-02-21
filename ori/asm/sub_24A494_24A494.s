PUSH            {R4-R11,LR}
MOV             R5, R0
VLDR            S0, =-0.5
VLDR            S2, =0.5
VPUSH           {D8-D10}
SUB             SP, SP, #0x1C
VLDR            S3, [R0,#0x94]
VLDR            S1, [R0,#0x98]
LDR             R6, [R0,#0x84]
VMUL.F32        S20, S3, S0
VMUL.F32        S16, S3, S2
VMUL.F32        S18, S1, S0
VMUL.F32        S17, S1, S2
CMP             R6, #0
BEQ             loc_24A690
LDR             R10, =0x2AAAAAAB
LDR             R9, =off_6CE098
VLDR            S19, =0.0
MOV             R11, #0
ADD             R7, SP, #0x58+var_54
VMOV.F32        S1, S16
VMOV.F32        S0, S20
LDR             R0, =dword_6D1F40
BL              sub_47EAA4
VLDR            S1, [R5,#0x88]
LDR             R0, =dword_6D1F40
VADD.F32        S0, S0, S1
VMOV.F32        S1, S17
VSTR            S0, [SP,#0x58+var_4C]
VMOV.F32        S0, S18
VSTR            S19, [SP,#0x58+var_48]
BL              sub_47EAA4
VLDR            S1, [R5,#0x90]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x58+var_44]
LDR             R1, [R9]
LDR             R0, [R1,#0x24]
CMP             R0, #0
LDR             R2, [R0]
MOVEQ           R4, #0
STR             R2, [R1,#0x24]
LDR             R2, [R1,#0x28]
SUB             R2, R2, #1
STR             R2, [R1,#0x28]
BEQ             loc_24A5D4
ADD             R8, SP, #0x58+var_4C
ADD             R0, R0, #4
BL              sub_14F198
SUB             R4, R0, #4
LDR             R0, =dword_6D1F40
BL              sub_546DB0
ADD             R0, R0, R0,LSL#1
MOV             R2, #0
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
STR             R0, [R4,#0x3F8]
LDR             R0, [R9]
LDR             R1, [R0,#0xA0]
ADD             R0, R4, #4
BL              sub_14E6E0
MOV             R1, #1
ADD             R0, R4, #4
BL              sub_14C450
MOV             R0, #1
STRB            R0, [R4,#0xF5]
MOV             R1, R8
ADD             R0, R4, #4
BL              sub_14E984
MOV             R1, #0
ADD             R0, R4, #4
BL              sub_14C3E8
LDR             R0, [R4,#0x3F8]
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R0, #5
AND             R1, R0, #0xFF
ADD             R0, R4, #4
BL              sub_14C430
STRB            R11, [R4,#0x3FC]
STRB            R11, [R4]
ADD             R1, SP, #0x58+var_54
STR             R4, [SP,#0x58+var_58]
STR             R1, [SP,#0x58+var_50]
STR             R1, [SP,#0x58+var_54]
LDR             R1, [R5,#0x80]
LDR             R2, [R5,#0x7C]
MOV             R0, SP
SUB             R2, R1, R2
SMULL           R3, R2, R10, R2
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
ADD             R2, R2, #1
CMP             R2, #0xA
BHI             loc_24A63C
CMP             R1, #0
BEQ             loc_24A630
STR             R4, [R1],#4
ADD             R0, R0, #4
STR             R0, [R1]
LDR             R0, [SP,#0x58+var_50]
STR             R0, [R1,#4]
STR             R1, [R0]
STR             R1, [SP,#0x58+var_50]
LDR             R0, [R5,#0x80]
ADD             R0, R0, #0xC
STR             R0, [R5,#0x80]
LDR             R0, [SP,#0x58+var_50]
CMP             R0, R7
BNE             loc_24A67C
LDR             R0, [SP,#0x58+var_58]
CMP             R0, #0
BEQ             loc_24A67C
MOV             R8, R0
LDR             R4, [R9]
ADD             R0, R0, #4
BL              sub_14F3EC
LDR             R0, [R4,#0x24]
STR             R0, [R8]
STR             R8, [R4,#0x24]
LDR             R0, [R4,#0x28]
ADD             R0, R0, #1
STR             R0, [R4,#0x28]
LDRD            R0, R1, [SP,#0x58+var_54]
SUBS            R6, R6, #1
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_24A4E4
ADD             SP, SP, #0x1C
VPOP            {D8-D10}
POP             {R4-R11,PC}
