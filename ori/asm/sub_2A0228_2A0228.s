PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R5, R1
MOV             R6, R2
VPUSH           {D8}
SUB             SP, SP, #0x1C
VMOV.F32        S16, S0
MOV             R7, R3
VLDR            S17, [SP,#0x38+arg_0]
ADD             R0, R0, #0xFC
BL              sub_5A176C
VMOV.F32        S0, S16
ADD             R0, R4, #0x130
BL              sub_4E625C
VLDR            S1, [R4,#0x168]
VLDR            S0, [R4,#0x34]
ADD             R0, R4, #0xFC
VADD.F32        S1, S1, S16
VSTR            S1, [R4,#0x168]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VSUBGT.F32      S0, S1, S0
VSTRGT          S0, [R4,#0x168]
BL              sub_5F1964
CMP             R0, #0
BNE             loc_2A02D4
STMEA           SP, {R5-R7}
VMOV.F32        S0, S16
VSTR            S17, [SP,#0x38+var_2C]
LDRB            R3, [R4,#0xB4]
LDRB            R2, [R4,#0xB9]
ADD             R1, R4, #0x16C
ADD             R0, SP, #0x38+var_28
BL              sub_58E294
LDRB            R0, [SP,#0x38+var_24]
CMP             R0, #0
BEQ             loc_2A02D4
LDR             R1, [R4]
LDR             R0, [SP,#0x38+var_28]
LDR             R2, [R1,#0x10]
AND             R1, R0, #0xFF
MOV             R0, R4
BLX             R2
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R7,PC}
