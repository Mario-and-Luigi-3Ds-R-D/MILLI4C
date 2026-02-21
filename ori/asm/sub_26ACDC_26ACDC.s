PUSH            {R4-R9,LR}
MOV             R5, R0
SUB             SP, SP, #0x14
LDR             R0, [R0,#0x104]
LDR             R4, [R5,#0x100]
CMP             R0, R4
BEQ             loc_26AD70
LDR             R8, =off_6CDF98
LDR             R9, =off_6CE970
MOV             R7, #0
MOV             R6, #1
LDR             R0, [R4]
LDRB            R1, [R0,#0x3F4]
CMP             R1, #5
BEQ             loc_26AD60
STRB            R6, [R0,#0x3F4]
ADD             R1, R0, #0x24 ; '$'
STRB            R6, [R0,#0x3F5]
LDR             R0, [R0,#0x2C]
LDM             R1, {R1,R2}
ADD             R3, SP, #0x30+var_2C
STR             R0, [SP,#0x30+var_24]
STM             R3, {R1,R2}
MOV             R3, #1
LDR             R0, [R8]
ADD             R2, SP, #0x30+var_2C
MOV             R1, #0x73 ; 's'
LDR             R0, [R0,#0x124]
LDR             R0, [R0,#0x288]
STR             R0, [SP,#0x30+var_28]
LDR             R0, [R9]
STR             R7, [SP,#0x30+var_30]
BL              sub_52AEA8
LDR             R0, [R5,#0x104]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_26AD08
ADD             SP, SP, #0x14
POP             {R4-R9,PC}
