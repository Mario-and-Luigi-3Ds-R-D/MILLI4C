PUSH            {R4-R7,LR}
MOV             R4, R0
SUB             SP, SP, #0x14
MOV             R0, #1
STRB            R0, [R4,#0x414]
STRB            R0, [R4,#0x3F8]
LDR             R0, [R4]
ADD             R1, SP, #0x28+var_24
LDR             R2, [R0,#8]
MOV             R0, R4
BLX             R2
LDR             R0, =off_6CDA80
LDR             R0, [R0]
BL              sub_5C96FC
LDR             R6, =off_6CE970
CMP             R0, #0
MOV             R7, #0
LDRNE           R1, =0x58A
LDR             R0, [R6]
MOVEQ           R1, #0x7D ; '}'
MOV             R3, #1
ADD             R2, SP, #0x28+var_24
STR             R7, [SP,#0x28+var_28]
BL              sub_52AEA8
LDR             R5, [R6]
BL              sub_4635D8
MOV             R3, R0
ADD             R2, R4, #4
MOV             R1, #0x7F
MOV             R0, R5
STR             R7, [SP,#0x28+var_28]
BL              sub_52B72C
LDR             R1, [R0,#0x19C]
MOV             R3, #0x100
MOV             R2, #0
ORR             R1, R1, #0x100000
STR             R1, [R0,#0x19C]
MOV             R1, #1
ADD             R0, R4, #4
BL              sub_14C548
LDR             R0, [R6]
LDR             R12, =0xFFE683CC
LDR             R2, =0x300F5
MOV             R3, #0
ADD             R1, R4, #4
SUB             R0, R0, R12
BL              sub_503720
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
