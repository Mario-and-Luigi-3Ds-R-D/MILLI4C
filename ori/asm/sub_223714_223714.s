PUSH            {R4-R6,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x3F8]
SUB             SP, SP, #0x10
MOV             R5, #3
CMP             R0, #0
BEQ             loc_22375C
CMP             R0, #1
BEQ             loc_2237A4
CMP             R0, #2
BNE             loc_223754
ADD             R0, R4, #4
BL              sub_5C4A1C
CMP             R0, #0
BNE             loc_223754
STRB            R5, [R4,#0x3F8]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
LDR             R0, =off_6CDA80
LDR             R1, =0x126FC
LDR             R0, [R0]
LDR             R1, [R1,R0]
LDRB            R2, [R1,#0x45C]
CMP             R2, #0
BNE             loc_223754
VLDR            S0, [R4,#0x30]
VLDR            S2, [R1,#0x2C]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
VSUB.F32        S0, S0, S2
LDR             R0, [R0]
VLDR            S1, [R0,#0x3D4]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_223754
B               loc_223750
ADD             R0, R4, #4
BL              sub_5C4A1C
CMP             R0, #0
NOP
BNE             loc_223754
MOV             R2, #0
ADD             R1, SP, #0x20+var_1C
ADD             R0, R4, #4
BL              sub_5C48B8
LDR             R6, =off_6CE970
MOV             R1, #0
MOV             R3, #1
ADD             R2, SP, #0x20+var_1C
LDR             R0, [R6]
STR             R1, [SP,#0x20+var_20]
MOV             R1, #0x24 ; '$'
BL              sub_52AEA8
MOV             R5, R0
NOP
BL              sub_4635D8
MOV             R3, R0
MOV             R2, #0x10000
ADD             R1, R4, #4
MOV             R0, R5
BL              sub_14C8F8
LDR             R0, [R6]
LDR             R12, =0xFFE683CC
LDR             R2, =0x300BD
MOV             R3, #0
ADD             R1, R4, #4
SUB             R0, R0, R12
BL              sub_503720
LDR             R0, [R5,#0x19C]
ORR             R1, R0, #0x100000
MOV             R0, #2
STR             R1, [R5,#0x19C]
STRB            R0, [R4,#0x3F8]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
