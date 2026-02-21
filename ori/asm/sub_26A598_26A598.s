PUSH            {R4-R8,LR}
MOV             R6, R0
LDRD            R0, R1, [R6,#0x44]
CMP             R1, R0
MOVNE           R2, #2
BEQ             loc_26A5E4
LDR             R1, [R0]
LDRB            R3, [R1,#0x3F4]
CMP             R3, #1
BNE             loc_26A5D4
ADD             R3, R1, #0x354
VLDM            R3, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
STRBGE          R2, [R1,#0x3F4]
LDR             R1, [R6,#0x48]
ADD             R0, R0, #0xC
CMP             R1, R0
BNE             loc_26A5B0
ADD             R0, R6, #0x44 ; 'D'
LDM             R0, {R0,R5}
CMP             R0, R5
BEQ             loc_26A608
LDR             R1, [R0]
LDRB            R1, [R1,#0x3F4]
CMP             R1, #2
ADDNE           R0, R0, #0xC
BNE             loc_26A5EC
CMP             R0, R5
MOV             R7, R0
ADDNE           R4, R7, #0xC
CMPNE           R4, R5
BEQ             loc_26A6B0
LDR             R0, [R4]
LDRB            R1, [R0,#0x3F4]
CMP             R1, #2
BEQ             loc_26A6A4
LDR             R1, [R7]
CMP             R1, R0
BEQ             loc_26A6A0
LDR             R0, [R7,#8]
ADD             R3, R7, #4
CMP             R0, R3
BNE             loc_26A740
CMP             R1, #0
MOVNE           R0, R1
BEQ             loc_26A664
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDR             R2, [R4]
ADD             R0, R4, #4
ADD             R1, R7, #4
CMP             R0, R1
STR             R2, [R7]
LDRNE           R2, [R0,#4]
CMPNE           R2, R1
BEQ             loc_26A6A0
LDM             R1, {R3,R12}
STR             R12, [R3,#4]
STR             R3, [R12]
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             R7, R7, #0xC
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_26A61C
LDR             R5, [R6,#0x48]
CMP             R7, R5
BEQ             loc_26A72C
LDR             R1, =0x2AAAAAAB
SUB             R0, R5, R7
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R7, R5, R0,LSL#2
CMP             R7, R5
BEQ             loc_26A728
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_26A714
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_26A714
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_26A6E0
STR             R7, [R6,#0x48]
LDRD            R0, R1, [R6,#0x44]
CMP             R0, R1
MOVEQ           R0, #1
STRBEQ          R0, [R6,#0x1D]
POP             {R4-R8,PC}
LDR             R2, [R3]
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R3, [R3]
STR             R3, [R3,#4]
B               loc_26A664
