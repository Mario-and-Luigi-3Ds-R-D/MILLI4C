PUSH            {R4,R5,LR}
MOV             R5, R0
ADD             R4, R0, #0x58 ; 'X'
VPUSH           {D8}
VMOV.F32        S16, S0
LDRB            R0, [R0,#0x60]
SUB             SP, SP, #0x14
CMP             R0, #0
BEQ             loc_1A3C44
LDR             R0, [R4,#4]
BL              sub_5F19B8
CMP             R0, #0
BNE             loc_1A3C44
LDR             R0, [R4,#0xC]
ADD             R1, R0, #1
STR             R1, [R4,#0xC]
LDM             R4, {R0,R3}
VLDR            S0, [R0,#0x10]
VCVT.U32.F32    S0, S0
VMOV            R2, S0
CMP             R2, R1
MOVLS           R0, #0
BLS             loc_1A3C40
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
BEQ             loc_1A3C20
CMP             R3, #1
BEQ             loc_1A3C34
CMP             R3, #2
VMOVEQ.F32      S0, S3
BLEQ            sub_5A2298
B               loc_1A3C3C
VMOV.F32        S0, S3
BL              sub_5A2708
NOP
NOP
B               loc_1A3C3C
VMOV.F32        S0, S3
BL              sub_5A2074
MOV             R0, #1
STRB            R0, [R4,#8]
VMOV.F32        S0, S16
MOV             R0, R5
BL              sub_5A2484
LDR             R0, [R5,#0x68]!
CMP             R0, #0
BEQ             loc_1A3CC0
STR             R0, [SP,#0x28+var_28]
ADD             R0, R5, #4
STR             R0, [SP,#0x28+var_24]
LDR             R2, [R5,#8]
ADD             R1, SP, #0x28+var_24
STR             R2, [SP,#0x28+var_20]
STR             R1, [R2]
STR             R1, [R5,#8]
LDR             R0, [SP,#0x28+var_28]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R1, [SP,#0x28+var_20]
ADD             R0, SP, #0x28+var_24
CMP             R1, R0
BNE             loc_1A3CB4
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_1A3CB4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x28+var_24]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4,R5,PC}
