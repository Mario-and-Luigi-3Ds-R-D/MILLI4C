PUSH            {R4-R11,LR}
MOV             R7, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x14
LDRB            R0, [R0,#0x810]
CMP             R0, #0
BNE             loc_25C188
ADR             R0, dword_25C194
ADD             R8, R7, #0x800
LDR             R0, [R0]
MOV             R4, #0
ADD             R8, R8, #0x14
STR             R0, [SP,#0x48+var_3C]
LDR             R1, [R7,#0x814]
VLDR            S4, [R7,#0x1C]
VLDR            S1, [R7,#0x20]
VLDR            S0, [R7,#0x24]
LDR             R1, [R1,#8]
MOV             R10, R4
ADD             R11, SP, #0x48+var_3C
ADD             R1, R1, #0x7C ; '|'
VLDR            S5, [R1]
VLDR            S3, [R1,#4]
VLDR            S2, [R1,#8]
VADD.F32        S16, S4, S5
VADD.F32        S17, S1, S3
VADD.F32        S18, S0, S2
ADD             R0, R4, R4,LSL#1
RSB             R0, R0, R4,LSL#8
MOV             R1, #1
ADD             R5, R7, R0,LSL#2
LDR             R0, [R7,#0x814]
ADD             R6, R5, #0x28 ; '('
LDR             R9, [R0]
MOV             R0, R6
BL              sub_14C450
LDR             R0, [R6]
MOV             R2, #0
MOV             R1, R9
LDR             R3, [R0,#0x58]
MOV             R0, R6
BLX             R3
MOV             R2, #1
MOV             R1, R2
MOV             R0, R6
BL              sub_14B798
STRB            R10, [R6,#0xF1]
LDR             R0, [R8]
ADD             R1, R4, R4,LSL#1
LDR             R0, [R0,#8]
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x88
MOV             R1, SP
VLDR            S0, [R0]
VLDR            S2, [R0,#4]
VLDR            S1, [R0,#8]
VADD.F32        S0, S16, S0
VADD.F32        S2, S17, S2
VADD.F32        S1, S18, S1
ADD             R0, R5, #0x28 ; '('
VSTR            S0, [SP,#0x48+var_48]
VSTR            S2, [SP,#0x48+var_44]
VSTR            S1, [SP,#0x48+var_40]
BL              sub_14E984
LDRB            R1, [R11,R4]
ADD             R0, R5, #0x28 ; '('
MOV             R3, #0x100
MOV             R2, #0
BL              sub_14C548
ADD             R0, R5, #0x28 ; '('
MOV             R1, #0
BL              sub_14C3E8
ADD             R4, R4, #1
CMP             R4, #2
BCC             loc_25C0C0
MOV             R0, #1
STRB            R0, [R7,#0x810]
ADD             SP, SP, #0x14
VPOP            {D8-D9}
POP             {R4-R11,PC}
