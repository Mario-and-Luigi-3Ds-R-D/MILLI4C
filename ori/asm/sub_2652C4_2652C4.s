PUSH            {R4-R8,LR}
MOV             R7, R0
LDR             R0, =off_6CE970
VLDR            S1, =0.0039062
VPUSH           {D8}
LDR             R0, [R0]
LDR             R4, [R7,#0x80]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
LDR             R0, [R7,#0x84]
CMP             R0, R4
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S1
BEQ             loc_265320
LDR             R0, [R4]
VMOV.F32        S0, S16
BL              sub_25C3E4
LDR             R0, [R7,#0x84]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_265304
LDR             R6, [R7,#0x80]
MOV             R5, R0
CMP             R6, R5
BEQ             loc_265344
LDR             R0, [R6]
BL              sub_5CBC94
CMP             R0, #0
ADDEQ           R6, R6, #0xC
BEQ             loc_265328
CMP             R6, R5
BEQ             loc_2653FC
ADD             R4, R6, #0xC
CMP             R4, R5
MOV             R8, R6
BEQ             loc_2653F8
LDR             R0, [R4]
BL              sub_5CBC94
CMP             R0, #0
NOP
BNE             loc_2653EC
LDR             R1, [R8]
LDR             R0, [R4]
CMP             R1, R0
BEQ             loc_2653E8
LDR             R0, [R8,#8]
ADD             R3, R8, #4
CMP             R0, R3
BNE             loc_265480
CMP             R1, #0
MOVNE           R0, R1
BEQ             loc_2653AC
BL              sub_25E310
NOP
NOP
BL              sub_300FD4
LDR             R3, [R4]
ADD             R1, R4, #4
ADD             R0, R8, #4
CMP             R1, R0
STR             R3, [R8]
LDRNE           R2, [R1,#4]
CMPNE           R2, R0
BEQ             loc_2653E8
LDM             R0, {R3,R12}
STR             R12, [R3,#4]
STR             R3, [R12]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [R1,#4]
STR             R1, [R0]
ADD             R8, R8, #0xC
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_26535C
MOV             R6, R8
LDR             R5, [R7,#0x84]
CMP             R6, R5
BEQ             loc_265478
LDR             R1, =0x2AAAAAAB
SUB             R0, R5, R6
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R6, R5, R0,LSL#2
CMP             R6, R5
BEQ             loc_265474
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_265460
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_265460
BL              sub_25E310
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_26542C
STR             R6, [R7,#0x84]
VPOP            {D8}
POP             {R4-R8,PC}
LDR             R2, [R3]
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R3, [R3]
STR             R3, [R3,#4]
B               loc_2653AC
