PUSH            {R4-R7,LR}
MOV             R7, R0
LDR             R0, =off_6CE970
VLDR            S1, =0.0039062
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
LDRD            R4, R5, [R7,#0x80]
VMOV            S0, R0
CMP             R4, R5
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S1
BEQ             loc_1A2920
LDR             R1, [R4]
LDR             R0, [R1]
VMOV.F32        S0, S16
LDR             R2, [R0,#0x14]
MOV             R0, R1
BLX             R2
LDR             R0, [R4]
LDRB            R1, [R0,#0xC]
CMP             R1, #0
BEQ             loc_1A2914
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_1A28E0
ADD             R0, R7, #0x80
LDM             R0, {R0,R5}
CMP             R0, R5
BEQ             loc_1A2944
LDR             R1, [R0]
LDRB            R1, [R1,#0xC]
CMP             R1, #0
ADDEQ           R0, R0, #0xC
BEQ             loc_1A2928
CMP             R0, R5
BEQ             loc_1A29F0
ADD             R4, R0, #0xC
CMP             R4, R5
MOV             R6, R0
BEQ             loc_1A29EC
LDR             R0, [R4]
LDRB            R1, [R0,#0xC]
CMP             R1, #0
BNE             loc_1A29E0
LDR             R2, [R6]
CMP             R2, R0
BEQ             loc_1A29DC
LDR             R1, [R6,#8]
ADD             R3, R6, #4
CMP             R1, R3
BNE             loc_1A2B40
CMP             R2, #0
MOVNE           R0, R2
BEQ             loc_1A29A0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R3, [R4]
ADD             R2, R4, #4
ADD             R0, R6, #4
CMP             R2, R0
STR             R3, [R6]
LDRNE           R1, [R2,#4]
CMPNE           R1, R0
BEQ             loc_1A29DC
LDM             R0, {R3,R12}
STR             R12, [R3,#4]
STR             R3, [R12]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [R2,#4]
STR             R2, [R0]
ADD             R6, R6, #0xC
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_1A295C
MOV             R0, R6
LDR             R5, [R7,#0x84]
CMP             R0, R5
BEQ             loc_1A2A68
LDR             R1, =0x2AAAAAAB
SUB             R0, R5, R0
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R6, R5, R0,LSL#2
CMP             R6, R5
BEQ             loc_1A2A64
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_1A2A50
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1A2A50
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_1A2A20
STR             R6, [R7,#0x84]
LDR             R0, [R7,#0xA4]
CMP             R0, #0
VMOVNE.F32      S0, S16
BLNE            sub_19FF98
LDR             R0, [R7,#0xB0]
CMP             R0, #0
VMOVNE.F32      S0, S16
BLNE            sub_1A1E00
LDR             R0, [R7,#0xBC]
CMP             R0, #0
VMOVNE.F32      S0, S16
BLNE            sub_1A4FC8
LDR             R0, [R7,#0xC8]
CMP             R0, #0
VMOVNE.F32      S0, S16
BLNE            sub_1A3B70
LDR             R0, [R7,#0x88]
ADD             R1, R7, #0x88
CMP             R0, #0
BEQ             loc_1A2B30
STR             R0, [SP,#0x28+var_28]
ADD             R0, R1, #4
STR             R0, [SP,#0x28+var_24]
LDR             R1, [R1,#8]
STR             R1, [SP,#0x28+var_20]
LDR             R2, [SP,#0x28+var_20]
ADD             R1, SP, #0x28+var_24
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x28+var_28]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R1, [SP,#0x28+var_20]
ADD             R0, SP, #0x28+var_24
CMP             R1, R0
BNE             loc_1A2B14
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_1A2B14
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x28+var_24]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R7,#0x88]
CMP             R0, #0
MOVNE           R0, #1
BNE             loc_1A2B34
MOV             R0, #0
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R2, [R6,#4]
ADD             R0, R6, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R6,#4]
STR             R0, [R6,#8]
B               loc_1A29A0
