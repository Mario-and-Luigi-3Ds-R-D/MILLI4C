PUSH            {R4-R8,LR}
ADD             R6, R0, #0x12400
ADD             R6, R6, #0x358
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x10
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_263FDC
BL              sub_5CC088
ADD             R5, R4, #0x12400
ADD             R5, R5, #0x368
MOV             R7, R0
LDR             R0, [R5]
MOV             R2, #1
ADD             R1, R0, #0x28 ; '('
MOV             R0, SP
BL              sub_14C614
CMP             R7, #1
LDREQ           R0, [R4,#8]
ADDEQ           R0, R0, #0xA0
BEQ             loc_263F38
CMP             R7, #2
LDREQ           R0, [R4,#8]
ADDEQ           R0, R0, #0xAC
BEQ             loc_263F38
CMP             R7, #3
LDREQ           R0, [R4,#8]
ADDEQ           R0, R0, #0xB8
BEQ             loc_263F38
CMP             R7, #4
LDREQ           R0, [R4,#8]
ADDEQ           R0, R0, #0xC4
BNE             loc_263F3C
VLDM            R0, {S16-S17}
MOV             R3, #0
LDR             R0, =off_6CE970
MOV             R2, R3
VSTMEA          SP, {S16-S17}
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x260
BL              sub_10A358
MOVS            R8, R0
NOP
BEQ             loc_263F84
ADD             R0, R4, #0x98
BL              sub_5CC17C
MOV             R2, R0
MOV             R3, SP
MOV             R1, R7
MOV             R0, R8
BL              sub_260AD4
LDR             R0, [R5]
MOV             R2, #1
ADD             R1, R0, #0x28 ; '('
MOV             R0, SP
BL              sub_14C614
LDR             R0, [R4,#8]
VLDR            S0, [SP,#0x30+var_30]
MOV             R1, SP
ADD             R0, R0, #0x58 ; 'X'
VLDR            S1, [R0]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x30+var_30]
VLDR            S1, [R0,#4]
VLDR            S0, [SP,#0x30+var_2C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x30+var_2C]
VLDR            S1, [R0,#8]
VLDR            S0, [SP,#0x30+var_28]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x30+var_28]
LDR             R0, [R6]
BL              sub_268C88
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R8,PC}
