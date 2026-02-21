PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, #0
STR             R5, [R0,#8]!
MOV             R2, #1
STR             R2, [R0,#4]
STR             R5, [R0,#8]
STR             R5, [R0,#0xC]
STR             R5, [R0,#0x10]
STR             R5, [R0,#0x14]
ADD             R0, R4, #0x24 ; '$'
STR             R5, [R4,#0x20]
STR             R0, [R4,#0x28]
STR             R0, [R4,#0x24]
LDR             R0, =off_6CE970
STR             R1, [R4,#0x30]
STR             R5, [R4,#0x2C]
LDR             R0, [R0]
ADD             R0, R0, #0x68 ; 'h'
STR             R0, [R4,#8]
LDR             R1, [R1,#0xC]
ADD             R0, R4, #8
BL              sub_625690
STR             R5, [R4,#8]
LDR             R0, =dword_6D1F40
STRB            R5, [R4,#0x34]
BL              sub_546DB0
MOV             R0, R0,LSL#1
LDR             R1, [R4,#0x30]
MOV             R0, R0,LSR#16
ADD             R0, R1, R0,LSL#2
LDR             R0, [R0,#0x10]
STR             R0, [R4,#4]
MOV             R0, R4
STRB            R5, [R4]
POP             {R4-R6,PC}
