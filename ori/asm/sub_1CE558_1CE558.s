PUSH            {R4-R8,LR}
MOV             R6, R2
MOV             R8, R0
LDR             R4, =unk_643134
MOV             R5, R1
MOV             R2, #0
ADD             R7, R4, #4
LDRB            R0, [R4]
CMP             R5, #0
RSB             R0, R0, R0,LSL#4
ADD             R0, R8, R0,LSL#2
ADD             R0, R0, #4
BNE             loc_1CE5C8
LDRB            R1, [R0,#0x28]
CMP             R6, #0
BEQ             loc_1CE5C0
CMP             R1, #0
BEQ             loc_1CE5C8
CMP             R1, #7
CMPNE           R1, #8
CMPNE           R1, #9
BNE             loc_1CE60C
LDRH            R1, [R0,#0x30]
CMP             R1, #0x64 ; 'd'
BCC             loc_1CE60C
B               loc_1CE5C8
CMP             R1, #0
BNE             loc_1CE60C
LDRB            R1, [R0,#0x28]
CMP             R1, R5
BNE             loc_1CE618
CMP             R6, #0
BEQ             loc_1CE604
CMP             R1, #0
BEQ             loc_1CE618
CMP             R1, #7
CMPNE           R1, #8
CMPNE           R1, #9
BNE             loc_1CE60C
LDRH            R1, [R0,#0x30]
CMP             R1, #0x64 ; 'd'
BCS             loc_1CE618
B               loc_1CE60C
CMP             R1, #0
BEQ             loc_1CE618
NOP
BL              sub_1CE02C
MOV             R2, #1
ADD             R4, R4, #1
CMP             R4, R7
BNE             loc_1CE574
MOV             R0, R2
POP             {R4-R8,PC}
