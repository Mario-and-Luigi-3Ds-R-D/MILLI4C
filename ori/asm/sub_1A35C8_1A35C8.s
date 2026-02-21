PUSH            {R4-R7,LR}
MOV             R5, R0
ADD             R4, R0, #8
LDRB            R0, [R0,#0x1C]
SUB             SP, SP, #0x14
MOV             R7, #1
CMP             R0, #0
MOV             R6, #0
BEQ             loc_1A36C8
LDR             R0, [R4,#0x10]
BL              sub_5F19B8
CMP             R0, #0
BNE             loc_1A36C8
LDR             R0, [R4,#0x18]
ADD             R1, R0, #1
STR             R1, [R4,#0x18]
LDR             R0, [R4]
LDR             R3, [R4,#0x10]
VLDR            S0, [R0,#0x10]
VCVT.U32.F32    S0, S0
VMOV            R2, S0
CMP             R2, R1
MOVLS           R0, R6
BLS             loc_1A36C4
ADD             R1, R1, R1,LSL#2
MOV             R2, SP
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x14
MOV             R1, #0
VLDM            R0, {S0-S3}
VSTMEA          SP, {S0-S3}
VLDR            S0, [R0,#0x10]
VCVT.U32.F32    S0, S0
VMOV            R0, S0
ANDS            R12, R0, #0xFF
STRB            R12, [SP,#0x28+var_18]
VLDR            S1, [R4,#4]
VLDR            S0, [SP,#0x28+var_28]
MOV             R0, R3
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x28+var_28]
VLDR            S1, [R4,#8]
VLDR            S0, [SP,#0x28+var_24]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x28+var_24]
VLDR            S1, [R4,#0xC]
VADD.F32        S0, S2, S1
VSTR            S0, [SP,#0x28+var_20]
BEQ             loc_1A36A4
CMP             R12, #1
BEQ             loc_1A36B8
CMP             R12, #2
VMOVEQ.F32      S0, S3
BLEQ            sub_5A2298
B               loc_1A36C0
VMOV.F32        S0, S3
BL              sub_5A2708
NOP
NOP
B               loc_1A36C0
VMOV.F32        S0, S3
BL              sub_5A2074
MOV             R0, R7
STRB            R0, [R4,#0x14]
LDRB            R0, [R5,#0x2C]
ADD             R4, R5, #0x24 ; '$'
CMP             R0, #0
BEQ             loc_1A3790
LDR             R0, [R4,#4]
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_1A3790
LDR             R0, [R4,#0xC]
ADD             R1, R0, #1
STR             R1, [R4,#0xC]
LDM             R4, {R0,R3}
VLDR            S0, [R0,#0x10]
VCVT.U32.F32    S0, S0
VMOV            R2, S0
CMP             R2, R1
MOVLS           R7, R6
BLS             loc_1A378C
ADD             R1, R1, R1,LSL#2
MOV             R2, SP
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x14
MOV             R1, #0
VLDM            R0, {S0-S3}
VSTMEA          SP, {S0-S3}
VLDR            S0, [R0,#0x10]
VCVT.U32.F32    S0, S0
VMOV            R0, S0
STRB            R0, [SP,#0x28+var_18]
MOV             R0, R3
LDRB            R3, [SP,#0x28+var_18]
CMP             R3, #0
BEQ             loc_1A3770
CMP             R3, #1
BEQ             loc_1A3784
CMP             R3, #2
VMOVEQ.F32      S0, S3
BLEQ            sub_5A2298
NOP
NOP
B               loc_1A378C
VMOV.F32        S0, S3
BL              sub_5A2708
NOP
NOP
B               loc_1A378C
VMOV.F32        S0, S3
BL              sub_5A2074
STRB            R7, [R4,#8]
LDRB            R0, [R5,#0x1C]
CMP             R0, #0
LDRBEQ          R0, [R5,#0x2C]
CMPEQ           R0, #0
BNE             loc_1A37EC
LDR             R4, [R5,#4]
LDR             R0, [R4,#0x68]!
CMP             R0, #0
BEQ             loc_1A37C0
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_1A37F4
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1A37E8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R6, [R4]
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
LDR             R2, [R4,#4]
ADD             R1, R4, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R4,#4]
STR             R1, [R4,#8]
B               loc_1A37E8
