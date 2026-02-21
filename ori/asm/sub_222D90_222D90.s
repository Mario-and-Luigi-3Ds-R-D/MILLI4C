PUSH            {R4-R9,LR}
MOV             R7, R0
ADD             R4, R7, #0x5C ; '\'
LDR             R8, =off_6CDA80
VPUSH           {D8-D9}
SUB             SP, SP, #0xC
LDR             R0, [R8]
LDM             R4, {R4,R6}
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2FC
CMP             R4, R6
LDR             R0, [R0]
VLDRNE          S18, =0.0
MOVNE           R9, #0xBC
VLDR            S16, [R0,#0x2C]
BEQ             loc_222EB4
LDR             R5, [R4]
VLDR            S0, [R5,#0x1C]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_222EA8
LDR             R0, [R5,#0x18]
CMP             R0, #0
BEQ             loc_222EA8
LDRB            R0, [R5]
CMP             R0, #0
BEQ             loc_222E08
CMP             R0, #1
BEQ             loc_222E6C
B               loc_222E8C
LDR             R0, [R8]
LDR             R2, =dword_6D1F40
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
VLDR            S1, [R0,#0xE4]
LDR             R0, [R0,#0xB8]
VSUB.F32        S17, S0, S1
SUB             R1, R0, #1
MOV             R0, #0
BL              sub_47EADC
LDR             R2, [R8]
LDR             R1, =0x126F4
ADD             R0, R9, R0,LSL#2
LDR             R1, [R1,R2]
LDR             R0, [R1,R0]
MOV             R1, SP
STR             R0, [SP,#0x38+var_38]
VSTR            S18, [SP,#0x38+var_34]
VSTR            S17, [SP,#0x38+var_30]
MOV             R0, R2
BL              sub_226654
NOP
NOP
B               loc_222E8C
LDR             R0, [R8]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
VLDR            S1, [R0,#0x10C]
MOV             R0, R5
VSUB.F32        S0, S0, S1
BL              sub_22307C
VLDR            S0, [R5,#0x1C]
VLDR            S1, [R5,#4]
LDR             R0, [R5,#0x18]
VADD.F32        S0, S0, S1
SUB             R0, R0, #1
VSTR            S0, [R5,#0x1C]
STR             R0, [R5,#0x18]
ADD             R4, R4, #0xC
CMP             R4, R6
BNE             loc_222DD0
ADD             R1, R7, #0x5C ; '\'
LDM             R1, {R1,R3}
CMP             R1, R3
BEQ             loc_222EE0
LDR             R0, [R1]
VMOV.F32        S1, S16
VLDR            S0, [R0,#0xC]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
ADDLE           R1, R1, #0xC
BLE             loc_222EBC
CMP             R1, R3
MOV             R0, R1
ADDNE           R1, R0, #0xC
CMPNE           R1, R3
BEQ             loc_222F94
LDR             R2, [R1]
VLDR            S0, [R2,#0xC]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BHI             loc_222F88
LDR             R12, [R0]
CMP             R12, R2
BEQ             loc_222F84
LDR             R4, [R0,#8]
ADD             R5, R0, #4
CMP             R4, R5
BNE             loc_223040
CMP             R12, #0
BEQ             loc_222F48
LDR             R2, [R12,#0x20]
LDR             R4, [R2,#4]
STR             R4, [R12]
STR             R12, [R2,#4]
LDR             R12, [R2,#8]
ADD             R12, R12, #1
STR             R12, [R2,#8]
LDR             R5, [R1]
ADD             R12, R1, #4
ADD             R2, R0, #4
CMP             R12, R2
STR             R5, [R0]
LDRNE           R5, [R12,#4]
CMPNE           R5, R2
BEQ             loc_222F84
LDM             R2, {R4,R6}
STR             R6, [R4,#4]
STR             R4, [R6]
STR             R5, [R2,#4]
STR             R2, [R5]
STR             R2, [R12,#4]
STR             R12, [R2]
ADD             R0, R0, #0xC
ADD             R1, R1, #0xC
CMP             R1, R3
BNE             loc_222EF4
LDR             R2, [R7,#0x60]
CMP             R0, R2
BEQ             loc_223020
LDR             R1, =0x2AAAAAAB
SUB             R0, R2, R0
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R1, R2, R0,LSL#2
CMP             R1, R2
BEQ             loc_22301C
SUB             R2, R2, #0xC
ADD             R12, R2, #4
LDR             R3, [R2,#8]
MOV             R0, R2
CMP             R3, R12
BNE             loc_223004
LDR             R3, [R0]
CMP             R3, #0
BEQ             loc_223004
LDR             R12, [R3,#0x20]
LDR             R4, [R12,#4]
STR             R4, [R3]
STR             R3, [R12,#4]
LDR             R3, [R12,#8]
ADD             R3, R3, #1
STR             R3, [R12,#8]
LDR             R3, [R2,#4]
LDR             R0, [R2,#8]
CMP             R1, R2
STR             R0, [R3,#4]
STR             R3, [R0]
BNE             loc_222FC4
STR             R1, [R7,#0x60]
LDR             R0, [R7,#8]
CMP             R0, #0
BEQ             loc_22305C
ADD             SP, SP, #0xC
MOV             R0, R7
VPOP            {D8-D9}
POP             {R4-R9,LR}
B               sub_222B78
LDR             R12, [R0,#4]
ADD             R2, R0, #4
STR             R4, [R12,#4]
STR             R12, [R4]
STR             R2, [R0,#4]
STR             R2, [R0,#8]
B               loc_222F48
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R9,PC}
