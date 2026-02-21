PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6CE970
VLDR            S1, =0.0039062
LDR             R0, [R5]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R4, #8
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_5A2484
LDRB            R0, [R4,#0xB0]
CMP             R0, #0
BEQ             loc_26EAB8
CMP             R0, #1
BNE             locret_26EAB4
LDR             R0, [R4,#0x30]
ADD             R0, R0, #0x5C ; '\'
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             locret_26EAB4
LDR             R4, [R4,#4]
LDR             R0, [R4,#0x6C8]!
CMP             R0, #0
BEQ             loc_26EA84
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_26EB3C
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_26EAAC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #0
STR             R0, [R4]
POP             {R4-R6,PC}
LDR             R0, [R4,#4]
ADD             R1, R4, #0xC
BL              sub_2715F4
ADD             R0, R4, #8
NOP
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             locret_26EAB4
LDR             R0, [R4,#4]
BL              sub_5CC430
LDR             R0, =0xFFE683CC
LDR             R3, [R5]
LDR             R1, =0x300D4
MOV             R2, #0
SUB             R0, R3, R0
BL              sub_503414
LDR             R0, [R4,#4]
NOP
BL              sub_26FBCC
LDR             R0, [R4,#4]
NOP
BL              sub_270674
LDR             R0, =off_6CDF98
MOV             R1, #2
LDR             R0, [R0]
ADD             R0, R0, #0x12800
VLDR            S0, [R0,#0x184]
ADD             R0, R4, #8
BL              sub_5A2708
MOV             R0, #1
STRB            R0, [R4,#0xB0]
POP             {R4-R6,PC}
LDR             R2, [R4,#4]
ADD             R1, R4, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R4,#4]
STR             R1, [R4,#8]
B               loc_26EAAC
