PUSH            {R3-R7,LR}
MOV             R5, R0
LDR             R7, =off_6CDC90
LDR             R0, [R7]
BL              sub_1FB500
LDR             R0, [R7]
LDR             R1, =0x126D8
LDR             R1, [R1,R0]
LDRB            R1, [R1,#0xD]
CMP             R1, #4
BNE             loc_1FA370
LDR             R1, =0x126DC
LDR             R1, [R1,R0]
LDRB            R1, [R1,#0xD]
CMP             R1, #4
BNE             loc_1FA370
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x304
LDR             R0, [R0]
BL              sub_5C8A30
CMP             R0, #0
MOVNE           R0, #1
STRBNE          R0, [R5,#0x418]
LDRB            R0, [R5,#8]
CMP             R0, #1
BNE             locret_1FA3E4
LDRB            R1, [R5,#0xC]
ADD             R0, R5, #0x400
ADD             R4, R5, #0xC
CMP             R1, #2
ADD             R0, R0, #0xC
BEQ             loc_1FA3AC
LDR             R6, =off_6CE970
CMP             R1, #3
BEQ             loc_1FA3E8
CMP             R1, #4
BNE             loc_1FA458
B               loc_1FA48C
ADD             R1, R4, #0x36C
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             locret_1FA3E4
MOV             R1, #3
STRB            R1, [R4]
LDRB            R0, [R0,#0xD]
VLDR            S0, =0.0
CMP             R0, #0
LDRNE           R0, [R4,#0x14]
LDREQ           R0, [R4,#0xC]
STR             R0, [R4,#0x3B8]
VSTR            S0, [R4,#0x3B4]
POP             {R3-R7,PC}
ADD             R1, R4, #0x3B4
VLDM            R1, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             locret_1FA3E4
LDRB            R0, [R0,#0xC]
CMP             R0, #0
BEQ             locret_1FA3E4
MOV             R0, #4
STRB            R0, [R4]
MOV             R0, #0xFF
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x18+var_18]
LDR             R0, [R6]
VLDR            S0, [R4,#0x10]
ADD             R0, R0, #0x19C000
ADD             R0, R0, #0x1F40
BL              sub_4E665C
MOV             R0, #0xFF
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x18+var_18]
LDR             R0, =0x19DF78
LDR             R2, [R6]
VLDR            S0, [R4,#0x10]
ADD             R0, R0, R2; loc_19DF78
BL              sub_4E665C
LDRB            R0, [R5,#0xC]
CMP             R0, #5
BNE             locret_1FA3E4
LDR             R4, [R7]
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_1FA480
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
MOV             R0, #0
STR             R0, [R4,#0xC]
POP             {R3-R7,PC}
LDR             R0, [R6]
ADD             R0, R0, #0x180000
ADD             R0, R0, #0x1DC00
ADD             R1, R0, #0x3A0
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             locret_1FA3E4
ADD             R0, R0, #0x368
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #5
STRBGE          R0, [R4]
BLT             locret_1FA3E4
B               loc_1FA464
