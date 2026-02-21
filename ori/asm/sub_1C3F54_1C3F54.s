LDR             R1, =off_6B0F38
PUSH            {R4-R6,LR}
STR             R1, [R0],#0x1C
MOV             R1, #1
BL              sub_437664
SUB             R0, R0, #0x1C
MOV             R5, #0
STRB            R5, [R0,#0xB0]
ADD             R0, R0, #0xB4
BL              sub_43A6F4
LDR             R1, =off_6C0770
SUB             R4, R0, #0xB4
ADD             R0, R0, #0x2C ; ','
MOV             R2, #5
STM             R0, {R1,R5}
LDR             R1, =off_6CE970
LDR             R0, =sub_10D4F0
LDR             R3, [R1]
MOV             R1, #1
ADD             R0, R0, R3; sub_10D4F0
LDR             R3, [R0]
STR             R2, [R4,#0x3C]
STR             R3, [R4,#0xAC]
STRB            R1, [R4,#0x38]
STRB            R1, [R4,#0x39]
LDR             R1, [R0]
ADD             R0, R4, #0x40 ; '@'
BL              sub_4385B8
LDR             R0, [R4,#0xAC]
ADD             R1, R0, #0x24 ; '$'
ADD             R0, R4, #0x1C
BL              sub_437504
STRB            R5, [R4,#0xB3]
MOV             R0, R4
STRB            R5, [R4,#0xDC]
POP             {R4-R6,PC}
