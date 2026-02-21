PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R6, R4, #0xC00
ADD             R5, R4, #0x400
VPUSH           {D8}
SUB             SP, SP, #0x10
LDR             R0, [R0,#0xC78]
LDR             R1, [R4,#0x440]
VLDR            S0, [R6,#0x34]
ADD             R5, R5, #0x44 ; 'D'
LDR             R7, [R0]
LDR             R0, [R4,#0x444]
VLDR            S1, [R1,#4]
VLDR            S2, [R0,#4]
VSUB.F32        S2, S2, S1
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0x30+var_30]
VLDR            S2, [R0,#8]
VLDR            S1, [R1,#8]
VSUB.F32        S2, S2, S1
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0x30+var_2C]
VLDR            S2, [R0,#0xC]
VLDR            S1, [R1,#0xC]
MOV             R1, SP
ADD             R0, R4, #4
VSUB.F32        S2, S2, S1
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0x30+var_28]
BL              sub_14E984
LDR             R0, [R5]
BL              sub_5F19B8
CMP             R0, #0
BNE             loc_25E97C
MOV             R0, R7
BL              sub_5CBE50
VLDR            S16, =0.0
LDR             R0, [R4,#0xC74]
MOV             R8, #2
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_25E988
CMP             R0, #0
BNE             loc_25E99C
LDR             R5, [R4,#0xC6C]
MOV             R0, R7
BL              sub_5CBE50
VSTR            S16, [R5]
VSTR            S0, [R5,#4]
STRB            R8, [R4,#0x3F8]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R8,PC}
CMP             R0, #0
BNE             loc_25E99C
MOV             R1, #1
STRB            R8, [R4,#0xC70]
STR             R1, [R4,#0xC74]
MOV             R0, R4
BL              sub_25EA80
MOV             R0, #3
VSTR            S16, [R6,#0x68]
STRB            R0, [R4,#0x3F8]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R8,PC}
