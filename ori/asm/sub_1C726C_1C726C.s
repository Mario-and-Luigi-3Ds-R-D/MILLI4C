PUSH            {R3-R11,LR}
MOV             R4, R0
CMP             R1, #0x400
ADD             R7, R4, #0x4A000
LDR             R2, =0x44A5C
LDR             R9, =0x401
SUB             R0, R2, #4
ADD             R8, R4, R2
ADD             R0, R0, R4
BEQ             loc_1C72A4
SUBS            R1, R1, R9
BEQ             loc_1C7408
CMP             R1, #0xF
BNE             locret_1C7574
LDRB            R2, [R0]
MOV             R6, #0
MOV             R11, SP
CMP             R2, #0
MOV             R0, R6
BLE             loc_1C7364
LDR             R1, =0x1D07
MUL             R1, R0, R1
ADD             R12, R4, R1,LSL#2
LDR             R1, =0x2E9F0
LDR             R1, [R1,R12]
CMP             R1, R9
BEQ             loc_1C7358
CMP             R2, #0
MOV             R3, #0
MOV             R1, R3
ADDGT           R12, R12, #0x2CC00
BLE             loc_1C734C
CMP             R0, R1
BEQ             loc_1C7340
LDR             R5, =0x1D07
MUL             R5, R1, R5
ADD             R10, R4, R5,LSL#2
LDR             R5, =0x2E9F0
LDR             R5, [R5,R10]
CMP             R5, R9
BEQ             loc_1C7340
ADD             R5, R10, #0x2CC00
VLDR            S0, [R12,#0x22C]
VLDR            S1, [R5,#0x22C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGT             loc_1C733C
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_1C7340
CMP             R0, R1
BLE             loc_1C7340
ADD             R3, R3, #1
ADD             R1, R1, #1
CMP             R2, R1
BGT             loc_1C72EC
ADD             R1, R6, #1
AND             R6, R1, #0xFF
STRB            R0, [R11,R3]
ADD             R0, R0, #1
CMP             R2, R0
BGT             loc_1C72BC
MOV             R0, R4
BL              sub_2C04EC
CMP             R6, #0
MOV             R5, #0
BLE             loc_1C73A8
LDR             R0, =0x1D07
LDRB            R1, [R11,R5]
MOV             R2, #0
SMULBB          R0, R1, R0
ADD             R0, R4, R0,LSL#2
ADD             R1, R0, #0x27400
ADD             R1, R1, #0x1D8
MOV             R0, R4
BL              sub_2BEC88
ADD             R5, R5, #1
CMP             R6, R5
BGT             loc_1C7378
LDRB            R0, [R7,#0x2E4]
CMP             R0, #0xFF
BEQ             locret_1C7574
LDR             R1, =0x1D07
MUL             R0, R0, R1
LDR             R1, =0x2E9F0
ADD             R0, R4, R0,LSL#2
LDR             R1, [R1,R0]
CMP             R1, R9
BEQ             locret_1C7574
LDR             R1, =byte_6CEE28
LDRB            R1, [R1]
CMP             R1, #1
BNE             locret_1C7574
ADD             R0, R0, #0x2CC00
MOV             R2, #0
LDR             R1, [R0,#0x228]
STR             R1, [R7,#0x2AC]
LDR             R0, [R0,#0x22C]
MOV             R1, R8
STR             R0, [R7,#0x2B0]
MOV             R0, R4
POP             {R3-R11,LR}
B               sub_2BEC88
LDRB            R2, [R0]
MOV             R6, #0
MOV             R11, SP
CMP             R2, #0
MOV             R0, R6
BLE             loc_1C74C8
LDR             R1, =0x1D07
MUL             R1, R0, R1
ADD             R12, R4, R1,LSL#2
LDR             R1, =0x2E9F0
LDR             R1, [R1,R12]
CMP             R1, R9
BNE             loc_1C74BC
CMP             R2, #0
MOV             R3, #0
MOV             R1, R3
ADDGT           R12, R12, #0x2CC00
BLE             loc_1C74B0
CMP             R0, R1
BEQ             loc_1C74A4
LDR             R5, =0x1D07
MUL             R5, R1, R5
ADD             R10, R4, R5,LSL#2
LDR             R5, =0x2E9F0
LDR             R5, [R5,R10]
CMP             R5, R9
BNE             loc_1C74A4
ADD             R5, R10, #0x2CC00
VLDR            S0, [R12,#0x22C]
VLDR            S1, [R5,#0x22C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGT             loc_1C74A0
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_1C74A4
CMP             R0, R1
BLE             loc_1C74A4
ADD             R3, R3, #1
ADD             R1, R1, #1
CMP             R2, R1
BGT             loc_1C7450
ADD             R1, R6, #1
AND             R6, R1, #0xFF
STRB            R0, [R11,R3]
ADD             R0, R0, #1
CMP             R2, R0
BGT             loc_1C7420
ADD             R0, R4, #0x13800
ADD             R0, R0, #0x2EC
MOV             R10, R0
BL              sub_2C04EC
CMP             R6, #0
MOV             R5, #0
BLE             loc_1C7514
LDR             R0, =0x1D07
LDRB            R1, [R11,R5]
MOV             R2, #0
SMULBB          R0, R1, R0
ADD             R0, R4, R0,LSL#2
ADD             R1, R0, #0x27400
ADD             R1, R1, #0x1D8
MOV             R0, R10
BL              sub_2BEC88
ADD             R5, R5, #1
CMP             R6, R5
BGT             loc_1C74E4
LDRB            R0, [R7,#0x2E4]
CMP             R0, #0xFF
BEQ             locret_1C7574
LDR             R1, =0x1D07
MUL             R0, R0, R1
LDR             R1, =0x2E9F0
ADD             R0, R4, R0,LSL#2
LDR             R1, [R1,R0]
CMP             R1, R9
BNE             locret_1C7574
LDR             R1, =byte_6CEE28
LDRB            R1, [R1]
CMP             R1, #1
BNE             locret_1C7574
ADD             R0, R0, #0x2CC00
VLDR            S0, =0.0
MOV             R1, R8
VSTR            S0, [R7,#0x2AC]
LDR             R0, [R0,#0x22C]
MOV             R2, #0
STR             R0, [R7,#0x2B0]
MOV             R0, R10
POP             {R3-R11,LR}
B               sub_2BEC88
POP             {R3-R11,PC}
