PUSH            {R4-R10,LR}
MOV             R4, R0
ADD             R0, R0, #0x28 ; '('
MOV             R6, #1
MOV             R5, #0
VPUSH           {D8}
VLDM            R0, {S16-S17}
LDRB            R0, [R4,#0x4C]
CMP             R0, #0
LDRGT           R8, =0x66666667
MOVGT           R9, #0
BLE             loc_1E8994
LDR             R0, [R4,#0x3C]
MOV             R1, R6
MOV             R7, R0
BL              sub_2FEFCC
SMULL           R2, R1, R8, R0
MOV             R2, R1,ASR#2
SUB             R1, R2, R1,ASR#31
RSB             R1, R1, #0
ADD             R1, R1, R1,LSL#2
ADD             R0, R0, R1,LSL#1
LDRSB           R1, [R4,#0x4E]
AND             R0, R0, #0xFF
ORRS            R1, R1, R0
BNE             loc_1E88D4
CMP             R6, #1
BEQ             loc_1E88D4
CMP             R6, R7
BGT             loc_1E8918
LDR             R1, [R4,#0x38]
RSB             R2, R5, R5,LSL#3
ADD             R2, R2, R5,LSL#6
LDRB            R3, [R4,#0x4F]
ADD             R1, R1, R2,LSL#2
STRB            R3, [R1,#0x110]
LDRB            R1, [R4,#0x4D]
LDR             R3, [R4,#0x38]
ADD             R0, R0, R1
AND             R1, R0, #0xFF
ADD             R0, R3, R2,LSL#2
MOV             R3, #0x100
MOV             R2, #0
BL              sub_11DCDC
NOP
NOP
B               loc_1E892C
LDR             R0, [R4,#0x38]
RSB             R1, R5, R5,LSL#3
ADD             R1, R1, R5,LSL#6
ADD             R0, R0, R1,LSL#2
STRB            R9, [R0,#0x110]
LDR             R1, [R4,#0x38]
RSB             R2, R5, R5,LSL#3
ADD             R2, R2, R5,LSL#6
MOV             R0, R4
ADD             R1, R1, R2,LSL#2
LDR             R2, [R4]
ADD             R1, R1, #0x20 ; ' '
LDR             R3, [R2,#0xC]
MOV             R2, #0
BLX             R3
VLDR            S0, [R4,#0x28]
VLDR            S1, [R4,#0x44]
VLDR            S2, [R4,#4]
ADD             R0, R6, R6,LSL#2
ADD             R5, R5, #1
VMLS.F32        S0, S1, S2
MOV             R6, R0,LSL#1
VSTR            S0, [R4,#0x28]
VLDR            S0, [R4,#0x2C]
VLDR            S1, [R4,#0x48]
VLDR            S2, [R4,#8]
VMLS.F32        S0, S1, S2
VSTR            S0, [R4,#0x2C]
LDRB            R0, [R4,#0x4C]
CMP             R0, R5
BGT             loc_1E888C
ADD             R4, R4, #0x28 ; '('
VSTM            R4, {S16-S17}
VPOP            {D8}
POP             {R4-R10,PC}
