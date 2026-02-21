PUSH            {R4-R11,LR}
MOV             R6, R0
MOV             R7, #0
MOV             R0, R7
VPUSH           {D8-D11}
VMOV.F32        S16, S0
VMOV.F32        S22, S1
VMOV.F32        S18, S2
VMOV.F32        S20, S3
SUB             SP, SP, #0xC
ADD             R1, R6, R0,LSL#2
LDR             R1, [R1,#0x40]
CMP             R1, #0
BEQ             loc_155D28
ADD             R1, R7, #1
ADD             R0, R0, #1
CMP             R0, #0x20 ; ' '
AND             R7, R1, #0xFF
BCC             loc_155D04
LDR             R8, =off_6CE970
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R8]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x34 ; '4'
BL              sub_10A358
LDR             R10, =off_63FF08
CMP             R0, #0
VLDR            S21, =1.0
MOV             R11, #0
MOVEQ           R4, #0
BEQ             loc_155DF4
MOV             R4, R0
LDR             R0, [R8]
MOV             R1, #0x1000
BL              sub_52F538
MOV             R5, R0
MOV             R2, #0
MOV             R1, #1
MOV             R0, R4
BL              sub_1DFBC4
MOV             R4, R0
STR             R10, [R0]
STR             R5, [R4,#0x18]
VSTR            S18, [R4,#0x28]
VSTR            S20, [R4,#0x2C]
ADD             R1, R5, #0x5C ; '\'
STRB            R11, [R4,#0x30]
LDM             R1, {R1,R2}
ADD             R3, R4, #0x1C
LDR             R0, [R5,#0x64]
VMOV            S1, R1
VDIV.F32        S0, S21, S16
STR             R0, [R4,#0x24]
STM             R3, {R1,R2}
MOV             R2, SP
MOV             R1, #0
VMUL.F32        S1, S1, S16
VSTR            S1, [SP,#0x50+var_50]
VLDR            S1, [R4,#0x20]
VMUL.F32        S0, S1, S0
VSTR            S0, [SP,#0x50+var_4C]
VLDR            S0, [R4,#0x24]
VMUL.F32        S0, S0, S21
VSTR            S0, [SP,#0x50+var_48]
LDR             R0, [R4,#0x18]
VMOV.F32        S0, S22
ADD             R0, R0, #0x158
BL              sub_5A2298
STRB            R11, [R4,#0x30]
LDR             R5, =0x1064D8
LDR             R0, [R8]
MOV             R1, R4
ADD             R0, R0, R5; loc_1064D8
BL              sub_1DFCE0
VSUB.F32        S19, S21, S16
MOV             R4, #0
B               loc_155EF4
VMOV            S0, R7
ADD             R0, R4, #1
VMOV.F32        S17, S16
MOV             R3, #0
MOV             R2, R3
VCVT.F32.U32    S2, S0
VMOV            S0, R0
LDR             R0, [R8]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x34 ; '4'
VCVT.F32.U32    S0, S0
VDIV.F32        S1, S19, S2
VMLA.F32        S17, S1, S0
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_155ED4
LDR             R9, [R5,#0x40]
MOV             R2, #0
MOV             R1, #1
BL              sub_1DFBC4
STR             R9, [R0,#0x18]
STR             R10, [R0]
VSTR            S18, [R0,#0x28]
VSTR            S20, [R0,#0x2C]
ADD             R9, R9, #0x5C ; '\'
MOV             R5, R0
STRB            R11, [R0,#0x30]
LDM             R9, {R0-R2}
ADD             R3, R5, #0x1C
VDIV.F32        S0, S21, S17
VMOV            S1, R0
STM             R3, {R0-R2}
MOV             R2, SP
MOV             R1, #0
VMUL.F32        S1, S1, S17
VSTR            S1, [SP,#0x50+var_50]
VLDR            S1, [R5,#0x20]
VMUL.F32        S0, S1, S0
VSTR            S0, [SP,#0x50+var_4C]
VLDR            S0, [R5,#0x24]
VMUL.F32        S0, S0, S21
VSTR            S0, [SP,#0x50+var_48]
LDR             R0, [R5,#0x18]
VMOV.F32        S0, S22
ADD             R0, R0, #0x158
BL              sub_5A2298
STRB            R11, [R5,#0x30]
LDR             R0, =0x1064D8
LDR             R2, [R8]
MOV             R1, R5
ADD             R0, R0, R2; loc_1064D8
BL              sub_1DFCE0
ADD             R4, R4, #1
CMP             R4, #0x20 ; ' '
BCS             loc_155F04
ADD             R5, R6, R4,LSL#2
LDR             R0, [R5,#0x40]
CMP             R0, #0
BNE             loc_155E14
ADD             SP, SP, #0xC
VPOP            {D8-D11}
POP             {R4-R11,PC}
