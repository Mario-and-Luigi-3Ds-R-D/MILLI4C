PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R11, #0
VPUSH           {D8}
SUB             SP, SP, #4
VLDR            S16, =0.0
STRB            R11, [R0,#0x80]
STR             R11, [R0,#0x98]
VSTR            S16, [R0,#0x9C]
LDR             R1, [R0,#4]
LDR             R0, =0x12768
LDR             R5, [R0,R1]
ADD             R0, R1, #0x98
BL              sub_5CC138
MOV             R6, R0
LDR             R0, [R4,#4]
ADD             R0, R0, #0x98
LDR             R0, [R0]
MOV             R7, R0
LDR             R0, [R4,#4]
LDR             R1, [R0,#8]
ADD             R0, R4, #8
STR             R1, [R0,#8]
MOV             R1, R7
STR             R1, [R0,#4]
MOV             R1, R6
STR             R1, [R0]
MOV             R1, R5
STR             R1, [R0,#0xC]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x98
LDR             R0, [R0,#0x10]
MOV             R5, R0
LDR             R0, [R4,#4]
LDR             R1, [R0,#8]
ADD             R0, R4, #0x2C ; ','
STR             R1, [R0,#4]
MOV             R1, R5
STR             R1, [R0]
LDR             R0, =off_6CE970
MOV             R3, #0
ADD             R9, R4, #0x34 ; '4'
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x98
BL              sub_10A358
MOVS            R12, R0
MOVEQ           R10, #0
BEQ             loc_265C14
LDR             R1, [R4,#4]
LDR             R2, [R4,#0x98]
ADD             R3, R4, #8
MOV             R0, R12
STR             R2, [SP,#0x30+var_30]
LDR             R2, [R1,#8]
ADD             R1, R1, #0x12400
ADD             R1, R1, #0x398
BL              sub_2654A4
MOV             R10, R0
LDR             R0, [R9,#8]
ADD             R1, R9, #4
CMP             R0, R1
BNE             loc_265F38
LDR             R0, [R9]
CMP             R0, #0
BEQ             loc_265C94
ADD             R8, R0, #0x80
LDR             R7, [R0,#0x80]!
LDR             R6, [R0,#4]
CMP             R7, R6
BEQ             loc_265C8C
SUB             R6, R6, #0xC
ADD             R0, R6, #4
LDR             R1, [R6,#8]
MOV             R5, R6
CMP             R1, R0
BNE             loc_265C78
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_265C78
BL              sub_25E310
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R5,#4]
CMP             R7, R6
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_265C44
SUB             R0, R8, #0x80
BL              sub_300FD4
STR             R10, [R9]
LDR             R0, [R4,#4]
MOV             R1, R0
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R5, [R0]
ADD             R0, R1, #0x98
LDR             R0, [R0,#0x2C]
MOV             R7, R0
LDR             R0, [R4,#4]
ADD             R0, R0, #0x98
LDR             R0, [R0,#4]
MOV             R6, R0
LDR             R0, [R4,#4]
LDR             R1, [R0,#8]
ADD             R0, R4, #0x1C
STR             R1, [R0,#8]
MOV             R1, R6
NOP
STR             R1, [R0]
MOV             R1, R7
NOP
STR             R1, [R0,#4]
MOV             R1, R5
NOP
STR             R1, [R0,#0xC]
LDR             R7, =off_6CE970
MOV             R3, #0
ADD             R5, R4, #0x58 ; 'X'
MOV             R2, R3
LDR             R0, [R7]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x88
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_265D3C
LDR             R1, [R4,#4]
ADD             R2, R1, #0x12400
ADD             R2, R2, #0x374
ADD             R1, R4, #0x1C
BL              sub_268B48
MOV             R6, R0
LDR             R0, [R5,#8]
ADD             R1, R5, #4
CMP             R0, R1
BNE             loc_265F54
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_265D6C
BL              sub_268BEC
NOP
NOP
BL              sub_300FD4
STR             R6, [R5]
LDR             R0, [R7]
MOV             R3, #0
ADD             R5, R4, #0x64 ; 'd'
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #0x78 ; 'x'
BL              sub_10A358
CMP             R0, #0
MOVEQ           R6, #0
BEQ             loc_265DA8
LDR             R1, [R4,#4]
LDR             R1, [R1,#8]
BL              sub_2677D4
MOV             R6, R0
LDR             R1, [R5,#8]
ADD             R0, R5, #4
CMP             R1, R0
BNE             loc_265F70
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_265DD4
BL              sub_2678A0
NOP
NOP
BL              sub_300FD4
STR             R6, [R5]
LDR             R0, [R7]
MOV             R3, #0
ADD             R5, R4, #0x40 ; '@'
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #0xC
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_265E18
LDR             R1, [R4,#4]
ADD             R2, R0, #4
LDR             R1, [R1,#8]
STR             R1, [R0]
LDR             R1, [R1]
STM             R2, {R1,R11}
MOV             R6, R0
LDR             R1, [R5,#8]
ADD             R0, R5, #4
CMP             R1, R0
BNE             loc_265F8C
LDR             R0, [R5]
CMP             R0, #0
BLNE            sub_300FD4
STR             R6, [R5]
LDR             R0, [R7]
MOV             R3, #0
ADD             R5, R4, #0x4C ; 'L'
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #0xC
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_265E80
LDR             R1, [R4,#4]
MOV             R2, #1
LDR             R1, [R1,#8]
LDR             R1, [R1,#0x2F8]
STR             R1, [R0]
STRB            R2, [R0,#9]
VSTR            S16, [R0,#4]
LDR             R1, [R5,#8]
MOV             R6, R0
ADD             R0, R5, #4
CMP             R1, R0
BNE             loc_265FA8
LDR             R0, [R5]
CMP             R0, #0
BLNE            sub_300FD4
STR             R6, [R5]
VSTR            S16, [R4,#0x9C]
LDR             R0, [R4,#0x40]
VLDR            S0, [R0,#4]
LDR             R0, [R4,#4]
LDR             R0, [R0,#8]
VLDR            S1, [R0,#0x3CC]
VLDR            S3, [R0,#0x30]
LDR             R0, [R4,#0x34]
VDIV.F32        S2, S1, S0
VMUL.F32        S16, S2, S3
BL              sub_5CBCBC
MOV             R5, R0
NOP
B               loc_265EE8
DCFS 0.0
DCD 0x12768
DCD off_6CE970
LDR             R0, [R4,#0x34]
BL              sub_5CBC34
VLDR            S0, [R0]
LDR             R0, [R4,#4]
VMOV.F32        S1, S16
MOV             R1, R5
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R0, [R0]
BL              sub_25E68C
LDR             R0, [R4,#0x64]
NOP
BL              sub_2672E8
LDR             R0, [R4,#0x58]
NOP
BL              sub_268060
STRB            R11, [R4,#0x70]
ADD             SP, SP, #4
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R2, [R9,#4]
ADD             R1, R9, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R9,#4]
STR             R1, [R9,#8]
B               loc_265C94
LDR             R2, [R5,#4]
ADD             R1, R5, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R5,#4]
STR             R1, [R5,#8]
B               loc_265D6C
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_265DD4
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_265E38
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_265EA0
