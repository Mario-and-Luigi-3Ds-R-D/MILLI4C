PUSH            {R0-R2,R4-R11,LR}
MOV             R4, #0
MOV             R5, R4
MOV             R8, R4
ADD             R6, R1, #0xC
VLDR            S0, =0.0039062
ADD             R10, R1, #8
MOV             R7, #1
LDRH            R9, [R1]
CMP             R9, #2
BCC             loc_13DF24
ADD             R0, R6, R9,LSL#2
LDRH            R3, [R0,#-2]
CMP             R2, R3,LSL#8
BCS             loc_13DDB0
LDRH            R3, [R6,#2]
CMP             R2, R3,LSL#8
MOVHI           R12, R2
BHI             loc_13DDB4
MOV             R12, R3,LSL#8
MOV             R3, R9,LSR#1
ADD             R3, R6, R3,LSL#2
LDRH            R3, [R3,#2]
CMP             R2, R3,LSL#8
BGE             loc_13DE7C
ADD             R3, R6, #4
ADD             R9, R3, R9,LSL#2
SUB             R11, R9, R3
MOV             R6, #1
ADD             LR, R7, R11,ASR#2
CMP             LR, #1
ADDGT           R11, R7, R11,ASR#2
BLE             loc_13DE04
LDRH            LR, [R3,#2]
CMP             R12, LR,LSL#8
BLS             loc_13DE04
ADD             R6, R6, #1
CMP             R11, R6
ADD             R3, R3, #4
BGT             loc_13DDE8
CMP             R3, R9
BNE             loc_13DE1C
LDRB            R3, [R9,#-4]
MOV             R12, R5,LSL#3
ORR             R4, R4, R3,LSL R12
B               loc_13DF1C
LDRH            R9, [R3,#-2]
LDRH            R11, [R3,#2]
LDRB            R6, [R3]
RSB             LR, R9, #0
SUB             R9, R11, R9
ADD             R12, R12, LR,LSL#8
VMOV            S3, R12
VMOV            S2, R9
LDRB            R3, [R3,#-4]
MOV             R12, R5,LSL#3
SUB             R6, R6, R3
VCVT.F32.S32    S4, S3
VCVT.F32.S32    S3, S2
VMOV            S1, R3
VMOV            S2, R6
VCVT.F32.U32    S1, S1
VMUL.F32        S5, S4, S0
VCVT.F32.S32    S4, S2
VDIV.F32        S2, S5, S3
VMLA.F32        S1, S4, S2
VCVT.S32.F32    S1, S1
VMOV            R3, S1
ORR             R4, R4, R3,LSL R12
B               loc_13DF1C
SUB             R3, R0, #4
SUB             R6, R6, #4
CMP             R3, R6
MOV             R9, R3
BEQ             loc_13DEA8
LDRH            R11, [R3,#2]
CMP             R12, R11,LSL#8
BCS             loc_13DEA8
SUB             R3, R3, #4
CMP             R3, R6
BNE             loc_13DE90
CMP             R3, R9
BNE             loc_13DEC0
LDRB            R3, [R3]
MOV             R12, R5,LSL#3
ORR             R4, R4, R3,LSL R12
B               loc_13DF1C
LDRH            R9, [R3,#2]
LDRH            R11, [R3,#6]
LDRB            R6, [R3,#4]
RSB             LR, R9, #0
SUB             R9, R11, R9
ADD             R12, R12, LR,LSL#8
VMOV            S3, R12
VMOV            S2, R9
LDRB            R3, [R3]
MOV             R12, R5,LSL#3
SUB             R6, R6, R3
VCVT.F32.S32    S5, S3
VMOV            S1, R3
VCVT.F32.S32    S4, S2
VMOV            S3, R6
VCVT.F32.U32    S2, S1
VCVT.F32.S32    S3, S3
VMUL.F32        S5, S5, S0
VDIV.F32        S1, S5, S4
VMLA.F32        S2, S3, S1
VCVT.S32.F32    S1, S2
VMOV            R3, S1
ORR             R4, R4, R3,LSL R12
MOV             R6, R0
B               loc_13DF38
CMP             R9, #1
BEQ             loc_13DF64
MOV             R3, R5,LSL#3
MOV             R0, #0xFF
ORR             R8, R8, R0,LSL R3
ADD             R1, R1, #2
CMP             R1, R10
ADD             R5, R5, #1
BNE             loc_13DD84
LDR             R0, [SP,#0x30+var_30]
STR             R4, [R0]
LDR             R0, [SP,#0x30+var_30]
STR             R8, [R0,#4]
ADD             SP, SP, #0xC
MOV             R0, R6
POP             {R4-R11,PC}
LDRB            R0, [R6],#4
MOV             R3, R5,LSL#3
ORR             R4, R4, R0,LSL R3
B               loc_13DF38
