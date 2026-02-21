PUSH            {R4-R12,LR}
MOV             R4, R2
LDR             R0, [R2,#8]
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F508
ADD             R5, R0, #0x34 ; '4'
LDR             R9, [R4,#0x24]
LDR             R0, [R4,#0x28]
ADD             R4, R4, #0xC
MOV             R2, #1
LDM             R4, {R1,R6-R8,R10,R11}
UXTH            R4, R0
MOV             R0, R5
AND             R1, R1, #0xFF
BL              sub_1CCBB4
STRB            R6, [R5,#1]
STRB            R7, [R5,#2]
STRB            R8, [R5,#3]
STRB            R10, [R5,#4]
STRB            R11, [R5,#5]
STRB            R9, [R5,#6]
LDRB            R0, [R5]
SUB             R0, R0, #2
CMP             R0, #8; switch 8 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_20A7A8; jumptable 0020A7A8 default case, cases 2-4
DCD loc_20A7D0; jump table for switch statement
CMP             R4, #0; jumptable 0020A7A8 cases 0,1
BEQ             def_20A7A8; jumptable 0020A7A8 default case, cases 2-4
STRH            R4, [R5,#8]; jumptable 0020A7A8 cases 5-7
MOV             R0, #0; jumptable 0020A7A8 default case, cases 2-4
POP             {R4-R12,PC}
