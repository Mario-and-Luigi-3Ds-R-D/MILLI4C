PUSH            {R4,LR}
MOV             R4, R0
LDRSB           R0, [R0,#0xD]
SUB             SP, SP, #0x18
CMP             R0, #0
CMPNE           R0, #1
BNE             loc_121B04
LDR             R0, [R4]
CMP             R0, #0
LDRNE           R3, [R4,#8]
CMPNE           R3, #0
BEQ             loc_121B04
VLDR            S0, [R1,#8]
VLDR            S1, =0.0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             loc_121B04
VMOV            R0, S0
CMP             R0, #0x3F800000
BGT             loc_121B04
VLDR            S0, [R1,#4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             loc_121B04
VMOV            R0, S0
CMP             R0, #0x3F800000
BGT             loc_121B04
LDR             R2, [R1]
MOV             R12, #0x3E8
LDR             R0, =0xD6853CC1
MUL             R2, R2, R12
UMULL           R2, R0, R0, R2
LDRB            R2, [R1,#0xC]
MOVS            R0, R0,LSR#12
MOVEQ           R0, #1
CMP             R2, #0
MOVNE           R2, #4
MOVEQ           R2, #2
MUL             R12, R2, R0
ADD             R12, R12, R12,LSL#2
CMP             R3, R12,LSL#7
BCS             loc_121B10
ADD             SP, SP, #0x18
MOV             R0, #0
POP             {R4,PC}
STRH            R0, [SP,#0x20+var_14]
STRH            R2, [SP,#0x20+var_1A]
VLDR            S1, =128.0
VLDR            S0, [R1,#4]
LDR             R3, =0x3F733333
VLDR            S2, =1.0
VMUL.F32        S0, S0, S1
MOV             R2, #4
VCVT.U32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [SP,#0x20+var_12]
VLDR            S0, [R1,#8]
STRH            R2, [SP,#0x20+var_20]
VMOV            R0, S0
CMP             R0, R3
VLDRGT          S0, =0.95
VSUB.F32        S2, S2, S0
VMUL.F32        S2, S2, S1
VMUL.F32        S1, S0, S1
VCVT.S32.F32    S0, S2
VCVT.S32.F32    S1, S1
VMOV            R0, S0
VMOV            R1, S1
STRH            R0, [SP,#0x20+var_10]
STRH            R1, [SP,#0x20+var_E]
LDR             R0, [R4]
LDR             R1, [R4,#8]
BL              sub_12038C
LDR             R0, [R4]
LDR             R1, [R4,#8]
BL              sub_132990
LDRSB           R4, [R4,#0xD]
NOP
BL              sub_129050
MOV             R2, SP
MOV             R1, R4
BL              sub_1331BC
ADD             SP, SP, #0x18
POP             {R4,PC}
