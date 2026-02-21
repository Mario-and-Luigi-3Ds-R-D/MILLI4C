PUSH            {R3-R7,LR}
MOV             R4, R0
LDR             R0, [R0,#0x400]
LDR             R5, =off_6CE970
CMP             R0, #0
BEQ             loc_2254A0
CMP             R0, #1
BEQ             loc_225508
CMP             R0, #2
BNE             locret_22549C
ADD             R0, R4, #0x3A4
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #9
STRBGE          R0, [R4,#0x3FC]
POP             {R3-R7,PC}
ADD             R0, R4, #0x1E4
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             locret_22549C
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0xE
ADD             R0, R4, #8
BL              sub_14C548
LDR             R0, [R5]
MOV             R1, #0
MOV             R3, #1
ADD             R2, R4, #0x2C ; ','
STR             R1, [SP,#0x18+var_18]
BL              sub_52AEA8
LDR             R0, [R5]
LDR             R12, =0xFFE683CC
LDR             R2, =0x300F1
MOV             R3, #0
ADD             R1, R4, #8
SUB             R0, R0, R12
BL              sub_503720
MOV             R0, #1
NOP
B               loc_225598
ADD             R0, R4, #8
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             locret_22549C
LDRB            R0, [R4,#4]
LDR             R6, =off_6CDA80
CMP             R0, #0
BEQ             loc_225544
LDR             R0, [R5]
MOV             R1, #0xC000
BL              sub_52FACC
NOP
NOP
B               loc_225550
LDR             R1, =0xC001
LDR             R0, [R5]
BL              sub_52FACC
MOV             R1, R0
MOV             R2, #0
ADD             R0, R4, #8
BL              sub_14E6E0
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #8
BL              sub_14C548
LDR             R0, [R6]
VLDR            S0, =0.0
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
LDR             R0, [R0,#0x334]
VSTR            S0, [R4,#0x3A4]
STR             R0, [R4,#0x3A8]
MOV             R0, #2
STR             R0, [R4,#0x400]
POP             {R3-R7,PC}
