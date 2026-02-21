PUSH            {R4-R8,LR}
MOV             R6, R1
MOV             R5, R0
MOV             R3, #0x100
VPUSH           {D8}
SUB             SP, SP, #8
MOV             R2, #0
MOV             R1, #0x21 ; '!'
BL              sub_14C430
ADD             R4, R5, #0x400
VLDR            S0, [R6,#0x48]
VLDR            S1, [R4,#0x18]
VLDR            S17, =0.0
LDR             R8, =off_6CE118
VSUB.F32        S0, S0, S1
LDR             R1, =0x1438
MOV             R2, #0x350
LDR             R0, [R8]
LDRB            R1, [R1,R0]
LDR             R3, [R0,#8]
ADD             R0, R0, #0x1000
VCMPE.F32       S0, S17
ADD             R1, R2, R1,LSL#2
ADD             R1, R1, R3
VMRS            APSR_nzcv, FPSCR
VLDR            S16, [R1]
VLDRCC          S1, =6.2832
VADDCC.F32      S0, S0, S1
VLDR            S1, [R0,#0x3CC]
MOV             R0, #2
VMLS.F32        S0, S1, S16
VDIV.F32        S1, S0, S16
VSTR            S1, [R4,#0x14]
STRB            R0, [R5,#0x410]
ADD             R0, R5, #0x400
VSTR            S17, [R5,#0x39C]
ADD             R0, R0, #0x58 ; 'X'
VSTR            S16, [R5,#0x3A0]
MOV             R7, R0
BL              sub_5A18EC
VMOV.F32        S1, S16
VSTR            S17, [R4,#0x64]
VSTR            S17, [R4,#0x5C]
VLDR            S0, =1.0
MOV             R0, R7
BL              sub_5A12F8
LDR             R0, [R8]
VLDR            S0, [R4,#4]
ADD             R0, R0, #0x1400
VLDR            S1, [R0,#0x30]
LDR             R0, =off_6CE970
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x18]
STR             R6, [R5,#0x48C]
LDR             R6, [R0]
BL              sub_4635D8
LDR             R1, =0x10007
MOV             R7, #0
MOV             R3, R0
STMEA           SP, {R1,R7}
MOV             R2, R5
MOV             R1, #0x88
MOV             R0, R6
BL              sub_52C764
CMP             R0, #0
STR             R0, [R4]
STRHNE          R7, [R0,#0xA]
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R8,PC}
