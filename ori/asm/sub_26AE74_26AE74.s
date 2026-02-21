PUSH            {R4-R12,LR}
MOV             R6, R0
LDR             R0, [R0,#0x104]
LDR             R4, [R6,#0x100]
CMP             R0, R4
BEQ             locret_26AF08
LDR             R10, =off_6CE970
MOV             R9, #4
ADD             R11, R9, #0xA000
LDR             R5, [R4]
MOV             R1, R11
STRB            R9, [R5,#0x3F4]
LDR             R0, [R10]
BL              sub_52FACC
MOV             R1, R0
MOV             R2, #0
MOV             R0, R5
BL              sub_14E6E0
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
MOV             R0, R5
BL              sub_14C548
LDR             R8, =dword_6D1F40
MOV             R0, R5
BL              sub_5C5724
MOV             R7, R0
MOV             R0, R8
BL              sub_546DB0
MUL             R0, R0, R7
MOV             R1, R0,LSR#16
MOV             R0, R5
BL              sub_14F01C
LDR             R0, [R6,#0x104]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_26AE98
POP             {R4-R12,PC}
