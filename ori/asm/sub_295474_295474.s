PUSH            {R4-R9,LR}
MOV             R6, R0
SUB             SP, SP, #0xC
LDR             R4, [R0,#4]
LDR             R0, [R4,#0x4C]
BL              sub_5CDB04
CMP             R0, #0
BEQ             loc_2954AC
ADD             R4, R4, #0x12800
ADD             R4, R4, #4
LDR             R0, [R4]
BL              sub_5CDA90
CMP             R0, #0
BEQ             loc_2957EC
LDR             R0, [R6,#4]
LDR             R1, =0x12C10
LDRB            R1, [R1,R0]
CMP             R1, #0
BNE             loc_2957EC
LDR             R0, [R0,#0x4C]
BL              sub_2873CC
LDR             R0, [R6,#4]
ADD             R8, R0, #0x12400
ADD             R8, R8, #0x3B4
LDR             R5, [R8,#0x28]
LDR             R7, [R8,#0x24]
CMP             R7, R5
BEQ             loc_29552C
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_295518
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_295518
BL              sub_29A738
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_2954E4
LDR             R0, [R8,#0x24]
MOV             R1, #0
MOV             R3, R1
STR             R0, [R8,#0x28]
LDR             R8, =off_6CE970
ADD             R0, SP, #0x28+var_24
STR             R1, [SP,#0x28+var_28]
STR             R0, [SP,#0x28+var_20]
STR             R0, [SP,#0x28+var_24]
LDR             R0, [R8]
MOV             R2, R1
MOV             R5, SP
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x48 ; 'H'
BL              sub_10A358
CMP             R0, #0
MOVEQ           R7, #0
BEQ             loc_295588
LDR             R1, [R6,#4]
LDR             R2, [R1,#0x18]
MOV             R1, #0
BL              sub_29A518
MOV             R7, R0
LDR             R0, [SP,#0x28+var_20]
ADD             R4, R5, #4
CMP             R0, R4
BNE             loc_295830
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_2955B4
BL              sub_29A738
NOP
NOP
BL              sub_300FD4
STR             R7, [SP,#0x28+var_28]
LDR             R0, [R6,#4]
LDR             R9, =0x2AAAAAAB
MOV             R2, SP
ADD             R1, R0, #0x12400
ADD             R1, R1, #0x3B4
LDR             R0, [R1,#0x28]
LDR             R3, [R1,#0x24]
SUB             R3, R0, R3
SMULL           R12, R3, R9, R3
MOV             R12, R3,ASR#1
SUB             R3, R12, R3,ASR#31
ADD             R3, R3, #1
CMP             R3, #3
BHI             loc_295620
CMP             R0, #0
BEQ             loc_295614
STR             R7, [R0],#4
ADD             R2, R2, #4
STR             R2, [R0]
LDR             R2, [SP,#0x28+var_20]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [SP,#0x28+var_20]
LDR             R0, [R1,#0x28]
ADD             R0, R0, #0xC
STR             R0, [R1,#0x28]
LDR             R0, [R8]
MOV             R3, #0
MOV             R7, SP
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #0x48 ; 'H'
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_29565C
LDR             R1, [R6,#4]
LDR             R2, [R1,#0x18]
MOV             R1, #2
BL              sub_29A518
MOV             R5, R0
LDR             R0, [SP,#0x28+var_20]
CMP             R0, R4
BNE             loc_295848
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_295684
BL              sub_29A738
NOP
NOP
BL              sub_300FD4
STR             R5, [SP,#0x28+var_28]
LDR             R0, [R6,#4]
MOV             R2, SP
ADD             R1, R0, #0x12400
ADD             R1, R1, #0x3B4
LDR             R0, [R1,#0x28]
LDR             R3, [R1,#0x24]
SUB             R3, R0, R3
SMULL           R12, R3, R9, R3
MOV             R12, R3,ASR#1
SUB             R3, R12, R3,ASR#31
ADD             R3, R3, #1
CMP             R3, #3
BHI             loc_2956EC
CMP             R0, #0
BEQ             loc_2956E0
STR             R5, [R0],#4
ADD             R2, R2, #4
STR             R2, [R0]
LDR             R2, [SP,#0x28+var_20]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [SP,#0x28+var_20]
LDR             R0, [R1,#0x28]
ADD             R0, R0, #0xC
STR             R0, [R1,#0x28]
LDR             R0, [R8]
MOV             R3, #0
MOV             R7, SP
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #0x48 ; 'H'
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_295728
LDR             R1, [R6,#4]
LDR             R2, [R1,#0x18]
MOV             R1, #1
BL              sub_29A518
MOV             R5, R0
LDR             R0, [SP,#0x28+var_20]
CMP             R0, R4
BNE             loc_295864
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_295750
BL              sub_29A738
NOP
NOP
BL              sub_300FD4
STR             R5, [SP,#0x28+var_28]
LDR             R0, [R6,#4]
MOV             R1, SP
ADD             R2, R0, #0x12400
ADD             R2, R2, #0x3B4
LDR             R0, [R2,#0x28]
LDR             R3, [R2,#0x24]
SUB             R3, R0, R3
SMULL           R12, R3, R9, R3
MOV             R12, R3,ASR#1
SUB             R3, R12, R3,ASR#31
ADD             R3, R3, #1
CMP             R3, #3
BHI             loc_2957B8
CMP             R0, #0
BEQ             loc_2957AC
STR             R5, [R0],#4
ADD             R1, R1, #4
STR             R1, [R0]
LDR             R1, [SP,#0x28+var_20]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0x28+var_20]
LDR             R0, [R2,#0x28]
ADD             R0, R0, #0xC
STR             R0, [R2,#0x28]
LDR             R0, [SP,#0x28+var_20]
CMP             R0, R4
BNE             loc_2957E0
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_2957E0
BL              sub_29A738
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x28+var_24]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R6,#4]
MOV             R5, #0
ADD             R4, R0, #0x30 ; '0'
ADD             R1, R0, #0x34 ; '4'
LDR             R0, [R0,#0x38]
CMP             R0, R1
BNE             loc_295880
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_295824
BL              sub_28AA60
NOP
NOP
BL              sub_300FD4
STR             R5, [R4]
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
LDRD            R0, R1, [SP,#0x28+var_24]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R4, [SP,#0x28+var_24]
STR             R4, [SP,#0x28+var_20]
B               loc_2955B4
LDRD            R0, R1, [SP,#0x28+var_24]
ADD             R2, R7, #4
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R2, [SP,#0x28+var_24]
STR             R2, [SP,#0x28+var_20]
B               loc_295684
LDR             R1, [SP,#0x28+var_24]
ADD             R2, R7, #4
STR             R0, [R1,#4]
STR             R1, [R0]
STR             R2, [SP,#0x28+var_24]
STR             R2, [SP,#0x28+var_20]
B               loc_295750
LDR             R2, [R4,#4]
ADD             R1, R4, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R4,#4]
STR             R1, [R4,#8]
B               loc_295824
