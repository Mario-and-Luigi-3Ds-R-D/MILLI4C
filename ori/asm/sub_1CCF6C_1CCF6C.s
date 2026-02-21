PUSH            {R4-R8,LR}
MOV             R5, R1
MOV             R6, R0
LDR             R4, =unk_643134
MOV             R8, #0
ADD             R7, R4, #4
LDRB            R0, [R4]
CMP             R5, #0
RSB             R0, R0, R0,LSL#4
ADD             R0, R6, R0,LSL#2
ADD             R0, R0, #4
LDRB            R1, [R0,#0x28]
BEQ             loc_1CCFC8
CMP             R1, #0
BEQ             loc_1CCFD0
CMP             R1, #7
CMPNE           R1, #8
CMPNE           R1, #9
BNE             loc_1CD014
LDRH            R1, [R0,#0x30]
CMP             R1, #0x64 ; 'd'
BCC             loc_1CD014
B               loc_1CCFD0
CMP             R1, #0
BNE             loc_1CD014
LDRB            R1, [R0,#0x28]
CMP             R1, R8
BNE             loc_1CD01C
CMP             R5, #0
BEQ             loc_1CD00C
CMP             R1, #0
BEQ             loc_1CD01C
CMP             R1, #7
CMPNE           R1, #8
CMPNE           R1, #9
BNE             loc_1CD014
LDRH            R1, [R0,#0x30]
CMP             R1, #0x64 ; 'd'
BCS             loc_1CD01C
B               loc_1CD014
CMP             R1, #0
BEQ             loc_1CD01C
NOP
BL              sub_1CE02C
ADD             R4, R4, #1
CMP             R4, R7
BNE             loc_1CCF84
POP             {R4-R8,PC}
