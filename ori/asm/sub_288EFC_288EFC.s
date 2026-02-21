PUSH            {R0-R2,R4-R11,LR}
ADD             R4, R0, #0x400
ADD             R4, R4, #0x29C
MOV             R7, R0
MOV             R8, #0
LDM             R4, {R4,R5}
CMP             R4, R5
LDRNE           R10, =0xFFE683CC
MOVNE           R11, #1
BEQ             loc_288FD4
LDR             R0, [R4]
LDRB            R1, [R0,#0x450]
CMP             R1, #0
BNE             loc_288FC8
ADD             R0, R0, #0x400
LDR             R1, [SP,#0x30+var_2C]
ADD             R0, R0, #0x14
BL              sub_28C7FC
CMP             R0, #0
NOP
BEQ             loc_288FC8
LDR             R0, [R4]
LDR             R1, [SP,#0x30+var_2C]
ADD             R2, R0, #0x40 ; '@'
LDR             R0, [SP,#0x30+var_28]
BL              sub_28C568
LDR             R0, [R4]
LDR             R6, [R7,#0x684]
MOV             R8, #1
ADD             R9, R0, #0x1C
LDRB            R0, [R6]
CMP             R0, #0
BNE             loc_288FBC
LDR             R0, =off_6CE970
LDR             R2, =0x30214
MOV             R3, #0
MOV             R1, R9
LDR             R0, [R0]
SUB             R0, R0, R10
BL              sub_503720
LDR             R0, =off_6CE970
LDR             R2, =0x30215
MOV             R3, #0
MOV             R1, R9
LDR             R0, [R0]
SUB             R0, R0, R10
BL              sub_503720
STRB            R11, [R6]
LDR             R0, [R4]
STRB            R11, [R0,#0x450]
BL              sub_289C2C
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_288F24
ADD             SP, SP, #0xC
MOV             R0, R8
POP             {R4-R11,PC}
