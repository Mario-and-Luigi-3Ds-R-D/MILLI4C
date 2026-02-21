PUSH            {R4-R6,LR}
SUB             SP, SP, #8
MOV             R4, R0
BL              sub_5EE508
CMP             R0, #0
MOV             R6, #1
ADD             R5, R4, #0x1A0000
BNE             loc_1D08C8
MOV             R0, R4
BL              sub_5EE6F4
CMP             R0, #0
BNE             loc_1D08C8
MOV             R0, R4
BL              sub_5EE928
CMP             R0, #0
BEQ             loc_1D0988
LDR             R0, [R5,#0x58]
STRB            R6, [R0,#0x10]
MOV             R0, R4
BL              sub_1D1484
ADD             R0, R4, #0x180000
ADD             R0, R0, #0x1DC00
ADD             R1, R0, #0x368
LDR             R2, =off_6CE9A0; "UseItem" ...
VLDM            R1, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_1D0960
LDR             R1, =0x19DF40
LDR             R1, [R1,R4]
REV             R3, R1
ADD             R1, R2, #4
LDR             R1, [R1]
REV             R12, R1
CMP             R3, R12
BNE             loc_1D0960
ADD             R0, R0, #0x3A0
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_1D0960
LDR             R0, =0x19DF78
REV             R3, R1
LDR             R0, [R4,R0]
REV             R0, R0
CMP             R0, R3
BNE             loc_1D0960
STR             R1, [SP,#0x18+var_18]
STR             R1, [SP,#0x18+var_14]
MOV             R0, R4
ADD             R2, SP, #0x18+var_14
MOV             R1, SP
VLDR            S0, =0.0
B               loc_1D097C
LDR             R1, [R2,#(dword_6CE9A4 - 0x6CE9A0)]
MOV             R0, R4
ADD             R2, SP, #0x18+var_14
STR             R1, [SP,#0x18+var_18]
STR             R1, [SP,#0x18+var_14]
MOV             R1, SP
VLDR            S0, =60.0
BL              sub_1D23A4
ADD             SP, SP, #8
POP             {R4-R6,PC}
LDR             R0, [R5,#0x58]
STRB            R6, [R0,#0x10]
MOV             R0, R4
BL              sub_52CAA8
NOP
NOP
BL              sub_147A6C
LDR             R1, =0x19DFEC
STR             R0, [R4,R1]
LDR             R1, =off_65418C
LDM             R1, {R0,R1}
STRD            R0, R1, [R5,#0x5C]
ADD             SP, SP, #8
POP             {R4-R6,PC}
