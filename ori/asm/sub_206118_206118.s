PUSH            {R4-R7,LR}
MOV             R5, R1
MOV             R4, R2
LDR             R1, [R2,#8]!
MOV             R7, R0
LDR             R0, [R2,#4]
SUB             SP, SP, #0x14
AND             R6, R0, #0xFF
MOV             R0, #0
STRB            R0, [SP,#0x28+var_28]
STRH            R0, [SP,#0x28+var_24]
STRH            R0, [SP,#0x28+var_20]
STRH            R0, [SP,#0x28+var_1C]
STRH            R0, [SP,#0x28+var_26]
STRH            R0, [SP,#0x28+var_22]
STRH            R0, [SP,#0x28+var_1E]
STRH            R0, [SP,#0x28+var_1A]
MOV             R0, SP
BL              sub_146444
VLDR            S0, =0.0
CMP             R6, #8; switch 8 cases
LDRCC           PC, [PC,R6,LSL#2]; switch jump
B               def_20616C; jumptable 0020616C default case
DCD loc_206194; jump table for switch statement
LDRB            R0, [SP,#0x28+var_28]; jumptable 0020616C case 0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_20616C; jumptable 0020616C default case
LDRSH           R0, [SP,#0x28+var_26]; jumptable 0020616C case 1
VMOV            S0, R0
VCVT.F32.S32    S0, S0
B               def_20616C; jumptable 0020616C default case
LDRSH           R0, [SP,#0x28+var_24]; jumptable 0020616C case 2
VMOV            S0, R0
VCVT.F32.S32    S0, S0
B               def_20616C; jumptable 0020616C default case
LDRSH           R0, [SP,#0x28+var_22]; jumptable 0020616C case 3
VMOV            S0, R0
VCVT.F32.S32    S0, S0
B               def_20616C; jumptable 0020616C default case
LDRSH           R0, [SP,#0x28+var_20]; jumptable 0020616C case 4
VMOV            S0, R0
VCVT.F32.S32    S0, S0
B               def_20616C; jumptable 0020616C default case
LDRSH           R0, [SP,#0x28+var_1E]; jumptable 0020616C case 5
VMOV            S0, R0
VCVT.F32.S32    S0, S0
B               def_20616C; jumptable 0020616C default case
LDRSH           R0, [SP,#0x28+var_1C]; jumptable 0020616C case 6
VMOV            S0, R0
VCVT.F32.S32    S0, S0
B               def_20616C; jumptable 0020616C default case
LDRSH           R0, [SP,#0x28+var_1A]; jumptable 0020616C case 7
VMOV            S0, R0
VCVT.F32.S32    S0, S0
CMP             R5, #0; jumptable 0020616C default case
LDRH            R0, [R4,#2]
ADDNE           R2, R5, #4
MOVEQ           R2, #0
MOV             R1, R7
BL              sub_145730
ADD             SP, SP, #0x14
MOV             R0, #0
POP             {R4-R7,PC}
