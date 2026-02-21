PUSH            {R4-R6,LR}
MOV             R6, R0
BL              sub_120DF0
MOV             R4, R0
MOV             R0, #5
STRB            R0, [R4,#0x1C]
MOV             R5, #0
STR             R5, [R4,#0x20]
STR             R5, [R4,#0x24]
STR             R5, [R4,#0x28]
ADD             R1, R4, #0x34 ; '4'
STR             R5, [R4,#0x2C]
STR             R5, [R4,#0x30]
ADD             R0, R4, #0x3C ; '<'
STM             R1, {R5,R6}
BL              sub_120DF0
STRB            R5, [R0,#0x1C]
STR             R4, [R0,#0x20]
SUB             R4, R0, #0x3C ; '<'
ADD             R0, R0, #0x24 ; '$'
BL              sub_120DF0
STRB            R5, [R0,#0x1C]
STRB            R5, [R0,#0x1D]
STR             R4, [R0,#0x20]
SUB             R4, R0, #0x60 ; '`'
ADD             R0, R0, #0x24 ; '$'
BL              sub_120DF0
STRB            R5, [R0,#0x1C]
STRB            R5, [R0,#0x1D]
STR             R4, [R0,#0x20]
SUB             R0, R0, #0x84
POP             {R4-R6,PC}
