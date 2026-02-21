PUSH            {R4-R11,LR}
MOV             R5, R0
MOV             R4, R1
VPUSH           {D8-D9}
SUB             SP, SP, #0x34
LDRSB           R0, [R0,#0xD]
CMP             R0, #0
CMPNE           R0, #1
BNE             loc_128D7C
LDR             R0, [R5]
CMP             R0, #0
LDRNE           R0, [R5,#8]
CMPNE           R0, #0
BEQ             loc_128D7C
VLDR            S1, [R4,#0xC]
VLDR            S0, =0.0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_128D7C
VMOV            R0, S1
CMP             R0, #0x3F800000
BGT             loc_128D7C
VLDR            S1, [R4,#0x10]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_128D7C
VMOV            R0, S1
CMP             R0, #0x3F800000
BGT             loc_128D7C
VLDR            S1, [R4,#0x18]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_128D7C
VMOV            R0, S1
CMP             R0, #0x3F800000
BGT             loc_128D7C
VLDR            S1, [R4,#0x1C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_128D7C
VMOV            R0, S1
CMP             R0, #0x3F800000
BLE             loc_128D8C
ADD             SP, SP, #0x34 ; '4'
MOV             R0, #0
VPOP            {D8-D9}
POP             {R4-R11,PC}
LDR             R1, [R4]
MOV             R2, #0x3E8
LDR             R0, =0xD6853CC1
VLDR            S1, =0.001
MUL             R1, R1, R2
VLDR            S18, =-3.0
VLDR            S19, =10.0
VLDR            S16, =128.0
UMULL           R2, R1, R0, R1
MOV             R2, #0x3E8
MOV             R6, #0
MOV             R11, SP
MOV             R10, R1,LSR#12
LDR             R1, [R4,#8]
CMP             R10, #1
MOVLT           R10, #1
STRH            R10, [SP,#0x68+var_4C]
MUL             R1, R1, R2
UMULL           R1, R0, R0, R1
MOV             R9, R0,LSR#12
CMP             R9, #1
MOVLT           R9, #1
MOV             R0, #2
STRH            R9, [SP,#0x68+var_4A]
STRH            R0, [SP,#0x68+var_62]
LDR             R0, [R4,#4]
LDR             R7, [R4,#0x14]
VMOV            S0, R0
CMP             R7, #0
LDREQ           R7, =unk_6D4B7C
LDR             R0, =0xCCCCCCCD
VCVT.F32.U32    S0, S0
LDR             R1, [R7]
UMULL           R2, R1, R0, R1
VMUL.F32        S0, S0, S1
MOV             R1, R1,LSR#7
STRH            R1, [SP,#0x68+var_48]
LDR             R1, [R7,#4]
VLDR            S1, =32728.0
UMULL           R1, R0, R0, R1
VMUL.F32        S17, S0, S1
MOV             R0, R0,LSR#7
STRH            R0, [SP,#0x68+var_46]
ADD             R8, R11, R6,LSL#1
LDRSH           R0, [R8,#0x20]
ADD             R0, R0, R0,LSL#2
MOV             R0, R0,LSL#5
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S18
VDIV.F32        S1, S0, S17
VMOV.F32        S0, S19
BL              sub_137A60
VMUL.F32        S0, S0, S16
ADD             R6, R6, #1
CMP             R6, #2
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [R8,#0x2C]
BLT             loc_128E38
VLDR            S0, [R4,#0x18]
LDR             R1, =0xCCCCCCCD
LDR             R2, =0x3F733333
VMUL.F32        S0, S0, S16
VLDR            S1, =1.0
VCVT.U32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [SP,#0x68+var_42]
VLDR            S0, [R4,#0x1C]
VMUL.F32        S0, S0, S16
VCVT.U32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [SP,#0x68+var_40]
VLDR            S0, [R4,#0xC]
VMUL.F32        S0, S0, S16
VCVT.U32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [SP,#0x68+var_3E]
LDR             R0, [R7,#8]
UMULL           R1, R0, R1, R0
MOV             R0, R0,LSR#7
STRH            R0, [SP,#0x68+var_44]
VLDR            S0, [R4,#0x10]
VMOV            R0, S0
CMP             R0, R2
LDRB            R0, [R4,#0x20]
VLDRGT          S0, =0.95
CMP             R0, #1
VSUBNE.F32      S1, S1, S0
BEQ             loc_129040
VMUL.F32        S2, S0, S16
ADD             R0, R10, R10,LSL#2
MOV             R3, #4
MOV             R1, R0,LSL#8
STRH            R3, [SP,#0x68+var_68]
VMUL.F32        S1, S1, S16
VCVT.S32.F32    S0, S1
VCVT.S32.F32    S1, S2
VMOV            R2, S0
VMOV            R0, S1
STRH            R2, [SP,#0x68+var_38]
STRH            R0, [SP,#0x68+var_36]
LDR             R0, [R5]
ADD             R2, R0, #0xC000000
MOV             R2, R2,LSR#16
ORR             R2, R2, R0,LSL#16
STR             R2, [SP,#0x68+var_60]
LDR             R2, [R5,#8]
CMP             R2, R1
BCC             loc_128FCC
ADD             R2, R0, R1
ADD             R3, R2, #0xC000000
ADD             R12, R9, R9,LSL#2
MOV             R3, R3,LSR#16
ORR             R2, R3, R2,LSL#16
STR             R2, [SP,#0x68+var_5C]
LDR             R2, [R5,#8]
ADD             R1, R1, R12,LSL#8
CMP             R2, R1
BCC             loc_128FCC
ADD             R2, R0, R1
ADD             R3, R2, #0xC000000
MOV             R3, R3,LSR#16
ORR             R2, R3, R2,LSL#16
STR             R2, [SP,#0x68+var_58]
LDRSH           R2, [SP,#0x68+var_48]
ADD             R2, R2, R2,LSL#2
ADD             R1, R1, R2,LSL#8
ADD             R2, R0, R1
ADD             R3, R2, #0xC000000
MOV             R3, R3,LSR#16
ORR             R2, R3, R2,LSL#16
LDRSH           R3, [SP,#0x68+var_46]
STR             R2, [SP,#0x68+var_54]
LDR             R2, [R5,#8]
ADD             R3, R3, R3,LSL#2
ADD             R1, R1, R3,LSL#8
CMP             R2, R1
BCC             loc_128FCC
ADD             R0, R0, R1
ADD             R1, R0, #0xC000000
MOV             R1, R1,LSR#16
ORR             R0, R1, R0,LSL#16
STR             R0, [SP,#0x68+var_50]
MOV             R0, #6
STRH            R0, [SP,#0x68+var_68]
LDR             R0, [R5]
LDR             R1, [R5,#8]
BL              sub_12038C
LDR             R0, [R5]
LDR             R1, [R5,#8]
BL              sub_132990
LDRSB           R4, [R5,#0xD]
NOP
BL              sub_129050
MOV             R2, SP
MOV             R1, R4
BL              sub_133258
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8-D9}
POP             {R4-R11,PC}
DCFS 0.0
DCD 0xD6853CC1
DCFS 0.001
DCD unk_6D4B7C
DCD 0xCCCCCCCD
DCFS 32728.0
DCFS -3.0
DCFS 10.0
DCFS 128.0
DCD 0x3F733333
DCFS 0.95
DCFS 1.0
VMOV.F32        S2, S0
VNEG.F32        S0, S0
VSUB.F32        S1, S2, S1
B               loc_128EF4
