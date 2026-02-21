PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6CE970
MOV             R3, #0x10000
MOV             R2, #0
LDR             R0, [R6]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x20C
BL              sub_10A358
CMP             R0, #0
BEQ             locret_148B98
MOV             R5, #0
LDR             R1, =off_6BF3FC
STRB            R5, [R0,#4]
STRB            R5, [R0,#5]
STRH            R5, [R0,#6]
STR             R1, [R0],#8
BL              sub_14CB8C
LDR             R1, =off_6C3078
MOV             R2, R4
STR             R1, [R0]
STR             R5, [R0,#0x100]
STRB            R5, [R0,#0xF2]
LDR             R1, [R6]
ADD             R0, R0, #0x104
ADD             R1, R1, #0x68 ; 'h'
BL              sub_4251FC
SUB             R4, R0, #0x10C
BL              sub_4250FC
STR             R5, [R4,#0x108]
LDR             R1, [R4,#0x14]
ADD             R0, R4, #8
CMP             R1, #0
MOVEQ           R1, #0
BLEQ            sub_14C3E8
MOV             R0, R4
POP             {R4-R6,PC}
