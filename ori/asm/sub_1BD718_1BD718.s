PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R6, #0
LDR             R5, =byte_68DBBB
MOV             R7, #1
VPUSH           {D8-D9}
SUB             SP, SP, #4
LDR             R0, [R0,#8]
VLDR            S16, =1.0
VLDR            S17, =0.0
VSTR            S16, [R0,#0x360]
LDR             R0, [R4,#8]
VSTR            S16, [R0,#0x364]
LDR             R1, [R4,#8]
LDRB            R0, [R5]
ADD             R1, R1, #0x400
SUB             R0, R0, #1
STRH            R0, [R1,#0xD2]
LDR             R0, [R4,#8]
MOV             R1, #0x140
ADD             R0, R0, #0x400
STRH            R6, [R0,#0xD4]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S17, [R0,#0x78]
LDR             R0, [R4,#8]
STRH            R7, [R0,#2]
LDR             R0, [R4,#8]
STRB            R7, [R0,#4]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x368
BL              sub_2FFE8C
LDR             R0, [R4,#8]
MOV             R1, #0xA0
ADD             R0, R0, #0x400
ADD             R0, R0, #0xD6
BL              sub_12038C
LDR             R0, [R4,#4]
VLDR            S18, =-0.54
VLDR            S2, =6.0
VLDR            S1, =0.54
LDR             R1, [R0]
VMOV.F32        S3, S18
VLDR            S0, =2.4
LDR             R1, [R1,#0x54]
BLX             R1
LDR             R0, [R4,#4]
ADD             R1, R4, #0xC
VMOV.F32        S1, S16
ADD             R0, R0, #0x800
VMOV.F32        S0, S16
VSTR            S18, [R0,#0x30]
LDR             R0, [R4,#8]
STRB            R6, [R0,#0x4B4]
STR             R1, [SP,#0x28+var_28]
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
LDRB            R3, [R5]
ADD             R2, R1, #0x108
LDR             R1, =unk_68C882
ADD             R0, R0, #0x10
BL              sub_49FCD0
ADD             R0, R4, #0x1000
MOV             R1, #0x11C0
VSTR            S17, [R0,#0x180]
LDR             R2, [R4,#8]
STRB            R7, [R2,#0xC]
STR             R6, [R0,#0x1E0]
STR             R6, [R0,#0x1E4]
STR             R6, [R0,#0x1F0]
STR             R6, [R0,#0x1EC]
STR             R6, [R0,#0x1E8]
STRH            R6, [R1,R4]
VSTR            S17, [R0,#0x1C4]
LDR             R0, [R4,#8]
ADD             R5, R0, #0x400
LDR             R0, =dword_6D1F40
ADD             R5, R5, #0x178
BL              sub_546DB0
MOV             R1, #0xB4
VLDR            S17, =0.5
MUL             R0, R0, R1
MOV             R0, R0,LSR#16
ADD             R0, R0, #0x12C
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
MOV             R1, #0
STRH            R1, [R5]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S17
VADDNE.F32      S0, S0, S16
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #1
STRHLT          R7, [R5,#2]
STRHGE          R0, [R5,#2]
STRB            R6, [R5,#4]
LDR             R0, [R4,#8]
ADD             R4, R0, #0x400
LDR             R0, =dword_6D1F40
ADD             R4, R4, #0x178
BL              sub_546DB0
MOV             R1, #0x12C
MUL             R0, R0, R1
MOV             R0, R0,LSR#16
ADD             R0, R0, #0xB4
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
MOV             R1, #0
STRH            R1, [R4]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S17
VADDNE.F32      S0, S0, S16
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #1
STRHLT          R7, [R4,#2]
STRHGE          R0, [R4,#2]
STRB            R6, [R4,#4]
ADD             SP, SP, #4
VPOP            {D8-D9}
POP             {R4-R7,PC}
