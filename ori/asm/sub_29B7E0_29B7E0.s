PUSH            {R4-R9,LR}
MOV             R6, R0
MOV             R7, R1
MOV             R4, #0
LDR             R9, =0x20032
LDR             R8, =off_6D1648
VPUSH           {D8-D10}
SUB             SP, SP, #0xC
ADD             R5, R6, R4,LSL#2
LDR             R0, [R5,#0x18]
CMP             R0, #0
MOVNE           R1, #0
STRNE           R1, [R0,#0x180]
LDR             R0, [R7,R4,LSL#2]
CMP             R0, #0
BEQ             loc_29B8F0
LDR             R0, [R8]
BL              sub_1E4604
LDR             R1, [R0,#0x10C]
LDR             R2, [R0,#0x108]
LDR             R0, [R0,#0x110]
STR             R1, [SP,#0x40+var_3C]
STR             R2, [SP,#0x40+var_40]
STR             R0, [SP,#0x40+var_38]
LDR             R0, [R7,R4,LSL#2]
ADD             R3, R4, R4,LSL#1
CMP             R4, #0
MOV             R1, R0
ADD             R1, R1, #0xE4
ADD             R0, R0, #0x18
VLDM            R1!, {S5}
VLDR            S0, [R0]
VLDR            S2, [R0,#4]
VLDR            S1, [R0,#8]
VADD.F32        S0, S0, S5
VLDM            R1, {S3-S4}
ADD             R3, R6, R3,LSL#2
ADD             R2, R3, #0x48 ; 'H'
VADD.F32        S2, S2, S3
VADD.F32        S1, S1, S4
VSTR            S0, [R3,#0x48]
VSTR            S2, [R3,#0x4C]
VSTR            S1, [R3,#0x50]
VLDR            S2, [R2,#4]
VLDR            S0, [R2,#8]
LDMFD           SP, {R0-R2}
VLDR            S4, [R3,#0x48]
VMOV            S5, R0
VMOV            S3, R1
VMOV            S1, R2
ADD             R3, R3, #0x24 ; '$'
STM             R3, {R0-R2}
VSUB.F32        S16, S4, S5
VSUB.F32        S17, S2, S3
VSUB.F32        S18, S0, S1
BEQ             loc_29B914
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
MOV             R3, #1
MOV             R2, SP
MOV             R1, #0xEA
BL              sub_168114
STR             R0, [R5,#0x18]
ADD             R0, R0, #0x134
VSTM            R0, {S16-S18}
LDR             R0, [R5,#0x18]!
MOV             R1, R5
STR             R1, [R0,#0x180]
ADD             R4, R4, #1
CMP             R4, #3
BLT             loc_29B800
LDR             R1, =dword_68BC98
LDRD            R0, R1, [R1,#(off_68BCE0 - 0x68BC98)]
STRD            R0, R1, [R6,#0x70]
ADD             SP, SP, #0xC
VPOP            {D8-D10}
POP             {R4-R9,PC}
LDR             R0, [R8]
VLDR            S19, [SP,#0x40+var_3C]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x28]
LDR             R0, [R8]
VSUB.F32        S20, S19, S0
VLDR            S19, [SP,#0x40+var_40]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x24]
VMOV.F32        S1, S20
MOV             R2, #0
VSUB.F32        S0, S19, S0
MOV             R1, R2
MOV             R0, R9
BL              sub_1459F8
LDR             R0, [R8]
NOP
LDR             R0, [R0,#0xBC]
LDR             R1, [R7]
MOV             R3, #1
MOV             R2, SP
ADD             R1, R1, #0x100
LDRH            R1, [R1,#0x1C]
BL              sub_168114
STR             R0, [R6,#0x18]
LDR             R0, [R5,#0x18]
B               loc_29B8DC
