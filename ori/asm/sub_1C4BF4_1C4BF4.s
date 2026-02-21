PUSH            {R4-R9,LR}
MOV             R4, R0
ADD             R0, R0, #0x1DC
VPUSH           {D8}
SUB             SP, SP, #0x1C
BL              sub_5A26D0
MOV             R9, #1
ADD             R0, R4, #0x24 ; '$'
STRB            R9, [R4,#0x410]
LDM             R0, {R0-R2}
ADD             R6, R4, #0x400
LDR             R8, =off_6CE118
VLDR            S16, =0.0
STMEA           SP, {R0-R2}
LDR             R0, [R8]
VLDR            S1, [R4,#0x24]
VLDR            S0, [R4,#0x2C]
ADD             R0, R0, #0x1000
ADD             R0, R0, #0x2AC
VLDR            S3, [R0]
VLDR            S2, [R0,#8]
VSUB.F32        S1, S1, S3
VSUB.F32        S0, S0, S2
VLDR            S3, =1.0
VSTR            S1, [SP,#0x40+var_34]
VMUL.F32        S2, S1, S1
VSTR            S0, [SP,#0x40+var_2C]
VSTR            S16, [SP,#0x40+var_30]
VMLA.F32        S2, S16, S16
VMLA.F32        S2, S0, S0
VSQRT.F32       S4, S2
VDIV.F32        S2, S3, S4
VMUL.F32        S1, S1, S2
VMUL.F32        S3, S16, S2
VMUL.F32        S0, S0, S2
VSTR            S1, [SP,#0x40+var_34]
VSTR            S3, [SP,#0x40+var_30]
VSTR            S0, [SP,#0x40+var_2C]
LDR             R0, [R4,#0x400]
CMP             R0, #0
BEQ             loc_1C4CA4
BL              sub_533330
MOV             R0, #0
STR             R0, [R6]
ADD             R5, R4, #0x400
ADD             R0, R4, #0x400
MOV             R7, SP
ADD             R5, R5, #0x94
MOV             R1, #0
ADD             R0, R0, #0x98
STRB            R9, [R4,#0x494]
BL              sub_14C3E8
MOV             R1, R7
ADD             R0, R5, #4
BL              sub_14E984
VLDR            S0, =180.0
VSTR            S16, [R5,#0x3A0]
VSTR            S0, [R5,#0x3A4]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x21 ; '!'
ADD             R0, R5, #4
BL              sub_14C430
ADD             R3, SP, #0x40+var_34
ADD             R5, R5, #0x3F8
LDM             R3, {R0-R2}
STM             R5, {R0-R2}
LDR             R0, [R8]
ADD             R1, R0, #0x1200
LDR             R0, [R0,#0xEAC]
LDRH            R1, [R1,#0xA4]
SUB             R1, R1, #1
UXTH            R1, R1
RSB             R2, R1, R1,LSL#3
RSB             R1, R2, R1,LSL#6
ADD             R5, R0, R1,LSL#2
LDR             R0, [R5,#0x14]
CMP             R0, #0
VMOVEQ.F32      S17, S16
BEQ             loc_1C4D40
BL              sub_5C8A74
VLDR            S1, [R5,#0x50]
VADD.F32        S17, S0, S1
ADD             R0, R4, #0x400
ADD             R0, R0, #0x24 ; '$'
MOV             R5, R0
BL              sub_5A18EC
VSTR            S17, [R6,#0x30]
VSTR            S17, [R6,#0x28]
LDR             R1, [R8]
LDRH            R0, [R6,#0xC]
LDR             R1, [R1,#0xEAC]
RSB             R2, R0, R0,LSL#3
RSB             R0, R2, R0,LSL#6
ADD             R4, R1, R0,LSL#2
LDR             R0, [R4,#0x14]
CMP             R0, #0
VMOVEQ.F32      S0, S16
BEQ             loc_1C4D8C
BL              sub_5C8A74
VLDR            S1, [R4,#0x50]
VADD.F32        S0, S0, S1
LDR             R0, [R8]
LDR             R0, [R0,#8]
VLDR            S1, [R0,#0x338]
MOV             R0, R5
BL              sub_5A12F8
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R9,PC}
