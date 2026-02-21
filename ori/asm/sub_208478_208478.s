PUSH            {R4-R6,LR}
MOV             R4, R2
BL              sub_47FFCC
CMP             R0, #0
BNE             loc_208510
LDR             R0, [R4,#8]
LDR             R4, =off_6CE970
LDR             R1, =byte_19CF30
CMP             R0, #0
LDR             R5, =0x10D4D8
LDR             R0, [R4]
LDRB            R1, [R1,R0]
BEQ             loc_2084E0
CMP             R1, #0
BEQ             loc_208510
ADD             R0, R0, R5
BL              sub_5711E4
LDR             R0, [R4]
ADD             R0, R0, R5
BL              sub_571348
LDR             R0, [R4]
MOV             R1, #0
ADD             R0, R0, #0x19C000
ADD             R0, R0, #0xF30
STRB            R1, [R0]
B               loc_208510
CMP             R1, #0
BNE             loc_208510
ADD             R0, R0, R5
BL              sub_5711BC
LDR             R0, [R4]
ADD             R0, R0, R5
BL              sub_57122C
LDR             R0, [R4]
MOV             R1, #1
ADD             R0, R0, #0x19C000
ADD             R0, R0, #0xF30
STRB            R1, [R0]
MOV             R0, #0
POP             {R4-R6,PC}
