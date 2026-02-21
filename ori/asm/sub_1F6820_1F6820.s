PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x40
ADD             R0, R0, #0x1E0
BL              sub_5F19B8
VLDR            S16, =1.0
CMP             R0, #0
BEQ             loc_1F6888
VMOV.F32        S0, S16
ADD             R0, R4, #0x1E0
BL              sub_5A2484
ADD             R0, R4, #0x1E0
BL              sub_5F19B8
CMP             R0, #0
BNE             loc_1F6888
LDRB            R0, [R4,#8]
CMP             R0, #0
BEQ             loc_1F6888
LDRB            R0, [R4,#9]
CMP             R0, #0
BNE             loc_1F6888
MOV             R1, #0
MOV             R0, #1
STRB            R1, [R4,#8]
STRB            R0, [R4,#9]
MOV             R0, SP
BL              sub_234BEC
LDR             R1, [R4,#4]
VLDR            S1, =8.0
VLDR            S0, [R1,#0x10C]
LDR             R0, [R1,#0x108]
LDR             R1, [R1,#0x110]
VADD.F32        S1, S0, S1
STR             R0, [SP,#0x50+var_28]
VSTR            S1, [SP,#0x50+var_24]
STR             R1, [SP,#0x50+var_20]
LDR             R0, [R4,#0x1E8]
MOV             R1, SP
STR             R0, [SP,#0x50+var_4C]
STR             R0, [SP,#0x50+var_48]
VSTR            S16, [SP,#0x50+var_44]
VLDR            S16, =0.0
ADD             R0, R4, #0xC
VSTR            S16, [SP,#0x50+var_40]
VSTR            S16, [SP,#0x50+var_3C]
VSTR            S16, [SP,#0x50+var_38]
BL              sub_1947B8
VLDR            S0, [R4,#0x1E4]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_1F6908
MOV             R1, #0
ADD             R0, R4, #0xC
BL              sub_194BC0
NOP
NOP
B               loc_1F6944
MOV             R1, #1
ADD             R0, R4, #0xC
BL              sub_194BC0
VLDR            S0, [R4,#0x1E4]
MOV             R1, #0xFFFFFF00
ADD             R2, SP, #0x50+var_18
VCVT.U32.F32    S0, S0
VMOV            R0, S0
UXTH            R0, R0
ORR             R0, R0, R1
MOV             R1, #0
REV             R0, R0
STR             R0, [SP,#0x50+var_18]
ADD             R0, R4, #0xC4
BL              sub_12C9C4
MOV             R0, SP
NOP
ADD             SP, SP, #0x40 ; '@'
VPOP            {D8}
POP             {R4,PC}
