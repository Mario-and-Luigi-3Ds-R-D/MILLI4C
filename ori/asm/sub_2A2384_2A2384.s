PUSH            {R4-R7,LR}
CMP             R1, #0
SUB             SP, SP, #0xC
LDRNE           R4, [R1]
MOV             R7, #0
LDR             R5, [SP,#0x20+arg_4]
LDR             R6, [SP,#0x20+arg_0]
MOVEQ           R4, R7
MOVEQ           R12, R7
ADDNE           R12, R1, #4
CMP             R4, #0
STRBEQ          R7, [R0]
BEQ             loc_2A2424
CMP             R4, #1
BEQ             loc_2A242C
MOV             R4, #2
STRB            R4, [R0]
STR             R1, [R0,#0x1C]
CMP             R2, #0
ADD             R12, R0, #4
STRB            R2, [R0,#0x28]
BEQ             loc_2A2424
TST             R2, #1
LDMNE           R3, {R0,R1,R4}
STMNE           R12, {R0,R1,R4}
TST             R2, #2
BEQ             loc_2A2424
LDM             R6, {R0,R1,R4}
ADD             R7, R12, #0xC
TST             R2, #1
STM             R7, {R0,R1,R4}
BEQ             loc_2A2454
VLDR            S0, [R5]
VLDR            S1, [R3]
VMUL.F32        S0, S0, S1
VSTR            S0, [R12,#0x1C]
VLDR            S0, [R5,#4]
VLDR            S1, [R3,#4]
VMUL.F32        S0, S0, S1
VSTR            S0, [R12,#0x20]
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
MOV             R1, #1
STRB            R1, [R0]
ADD             R1, R0, #4
VLDM            R12, {S0-S5}
VSTM            R1, {S0-S5}
STR             R5, [SP,#0x20+var_1C]
STR             R6, [SP,#0x20+var_20]
BL              sub_2A246C
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
LDR             R0, [R5]
STR             R0, [R12,#0x1C]
LDR             R0, [R5,#4]
STR             R0, [R12,#0x20]
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
