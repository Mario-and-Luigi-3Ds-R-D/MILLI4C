PUSH            {R4-R8,LR}
ADD             R6, R2, #0x74 ; 't'
SUB             SP, SP, #0x10
LDR             R5, [R2,#8]
LDR             R4, [R2,#0xC]
LDR             R1, [R2,#0x10]
LDR             R3, [R2,#0x24]
LDR             R12, [R2,#0x20]
UXTH            R2, R5
BIC             R2, R2, #0xF000
AND             R5, R4, #0xFF
ADD             R0, R0, R2,LSL#3
ADD             R4, R0, #0x2B0
LDR             R0, =off_6CE970
CMP             R3, #0
UXTH            R1, R1
AND             R8, R12, #0xFF
LDR             R0, [R0]
MOVNE           R7, #1
MOVEQ           R7, #0
BL              sub_528EB0
MOV             R1, R0
LDR             R0, [R4,#4]
CMP             R0, #0
BEQ             loc_20C33C
CMP             R7, #0
BEQ             loc_20C314
MOV             R2, R1
MOV             R3, R8
MOV             R1, R5
STR             R6, [SP,#0x28+var_28]
BL              sub_149790
B               loc_20C33C
MOV             R3, R6
MOV             R2, R8
MOV             R0, SP
BL              sub_2A2528
LDR             R0, [R4,#4]
ADD             R12, R5, R5,LSL#1
LDMFD           SP, {R1-R3}
ADD             R0, R0, R12,LSL#2
ADD             R0, R0, #0x134
STM             R0, {R1-R3}
ADD             SP, SP, #0x10
MOV             R0, #0
POP             {R4-R8,PC}
