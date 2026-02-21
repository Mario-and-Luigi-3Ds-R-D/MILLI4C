PUSH            {R4,R5,LR}
MOV             R5, R0
LDRB            R0, [R0,#0x801]
SUB             SP, SP, #0xC
CMP             R0, #0
BEQ             loc_25CF08
ADD             SP, SP, #0xC
ADD             R0, R5, #4
POP             {R4,R5,LR}
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x14
B               sub_14C430
LDR             R0, [R5,#0x838]
VLDR            S2, [R5,#0x28]
MOV             R4, #0
LDR             R1, [R0,#0xC]
LDR             R0, [R0,#8]
VLDR            S0, [R1,#0x28]
VSUB.F32        S0, S2, S0
ADD             R1, R0, R4,LSL#2
VLDR            S1, [R1,#0x270]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_25CF44
ADD             R4, R4, #1
CMP             R4, #4
BCC             loc_25CF24
CMP             R4, #4
MOVEQ           R4, #3
VLDR            S3, [R5,#0x30]
ADD             R1, R4, R4,LSL#1
VLDR            S1, [R5,#0x2C]
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x1A4
MOV             R1, SP
VLDR            S0, [R0]
VLDR            S4, [R0,#8]
VLDR            S5, [R0,#4]
VADD.F32        S0, S2, S0
VADD.F32        S2, S3, S4
VADD.F32        S1, S1, S5
ADD             R0, R5, #0x3F8
VSTMEA          SP, {S0-S2}
BL              sub_14E984
ADD             R0, R4, #9
AND             R1, R0, #0xFF
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R5, #4
BL              sub_14C430
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
