PUSH            {R4-R7,LR}
SUB             SP, SP, #0x1C
MOV             R4, R0
LDR             R0, [SP,#0x30+arg_0]
STRD            R2, R3, [R4]
ADD             R2, R4, #8
STR             R2, [R4,#0x80]
CMP             R0, #0
MOV             R6, #1
STR             R2, [R4,#0x84]
STRBEQ          R6, [R4,#0x94]
MOV             R7, #0
STREQ           R6, [R4,#0x90]
BEQ             loc_265510
CMP             R0, #1
MOV             R2, #3
STRBEQ          R6, [R4,#0x94]
STREQ           R2, [R4,#0x90]
BEQ             loc_265510
CMP             R0, #2
BEQ             loc_26551C
CMP             R0, #3
STRB            R6, [R4,#0x94]
STRNE           R2, [R4,#0x90]
STREQ           R6, [R4,#0x90]
STRB            R6, [R4,#0x95]
B               loc_265514
STRB            R7, [R4,#0x95]
STRB            R7, [R4,#0x96]
B               loc_26552C
STRB            R7, [R4,#0x94]
STR             R6, [R4,#0x90]
STRB            R6, [R4,#0x95]
STRB            R6, [R4,#0x96]
LDR             R2, [R4]
VLDR            S0, [R1]
LDR             R0, [R1,#8]
VLDR            S1, =0.0
VLDR            S2, [R2,#0x3C8]
ADD             R2, SP, #0x30+var_24
MOV             R3, #0
VADD.F32        S0, S0, S2
MOV             R5, SP
VSTM            R2, {S0-S1}
MOV             R2, R3
STR             R0, [SP,#0x30+var_1C]
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x818
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_26558C
LDR             R1, [R4,#4]
MOV             R3, #0
ADD             R2, SP, #0x30+var_24
BL              sub_25D15C
STR             R0, [SP,#0x30+var_30]
ADD             R0, R5, #4
STR             R0, [SP,#0x30+var_28]
STR             R0, [SP,#0x30+var_2C]
LDR             R2, [R4,#0x80]
LDR             R0, [R4,#0x84]
LDR             R5, =0x2AAAAAAB
MOV             R1, SP
SUB             R2, R0, R2
SMULL           R3, R2, R5, R2
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
ADD             R2, R2, #1
CMP             R2, #0xA
BHI             loc_2655FC
CMP             R0, #0
BEQ             loc_2655F0
LDR             R2, [SP,#0x30+var_30]
ADD             R1, R1, #4
STR             R2, [R0],#4
STR             R1, [R0]
LDR             R1, [SP,#0x30+var_28]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0x30+var_28]
LDR             R0, [R4,#0x84]
ADD             R0, R0, #0xC
STR             R0, [R4,#0x84]
STRB            R6, [R4,#0x97]
STRD            R6, R7, [R4,#0x88]
LDR             R0, [R4,#0x84]
LDR             R1, [R4,#0x80]
SUB             R0, R0, R1
SMULL           R1, R0, R5, R0
MOV             R1, R0,ASR#1
SUB             R1, R1, R0,ASR#31
LDR             R0, [R4]
LDR             R0, [R0,#0x3D0]
CMP             R1, R0
BEQ             loc_265640
MOV             R0, R4
BL              sub_264FF8
NOP
NOP
B               loc_265604
LDR             R1, [SP,#0x30+var_28]
ADD             R0, SP, #0x30+var_2C
CMP             R1, R0
BNE             loc_26566C
LDR             R0, [SP,#0x30+var_30]
CMP             R0, #0
BEQ             loc_26566C
BL              sub_25E310
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x30+var_2C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x1C
MOV             R0, R4
POP             {R4-R7,PC}
