PUSH            {R4-R6,LR}
MOV             R1, #2
LDR             R4, [R0]
ADD             R0, R4, #0x13C00
ADD             R0, R0, #0x1C
BL              sub_4DC7B4
LDRB            R0, [R4,#0xF2]
MOV             R6, #0
CMP             R0, #0
ADD             R0, R4, #0x23800
ADD             R0, R0, #0x3E4
BEQ             loc_1CC55C
MOV             R5, R0
BL              sub_5EA2C0
CMP             R0, #0
BEQ             loc_1CC554
MOV             R0, R5
BL              sub_5EA1B8
CMP             R0, #0
BEQ             loc_1CC554
LDR             R0, =0x23E5C
LDRB            R0, [R0,R4]
CMP             R0, #2
BNE             loc_1CC554
LDR             R0, =0x23EFC
MOV             R1, #1
STRB            R1, [R0,R4]
STRB            R6, [R4,#0xF2]
B               loc_1CC570
NOP
BL              sub_5EA2C0
CMP             R0, #0
LDREQ           R0, =0x23EFC
STRBEQ          R6, [R0,R4]
MOV             R0, #2
STRB            R0, [R4,#0xF1]
POP             {R4-R6,PC}
