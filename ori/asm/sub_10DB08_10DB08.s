PUSH            {R4,LR}
MOV             R4, R0
MOV             R2, #0xFFFFFFFF
MOV             R1, #3
STR             R2, [R4,#4]
STRB            R1, [R4,#0x298]
MOV             R0, #0
STR             R0, [R4]
STRB            R0, [R4,#8]
STR             R0, [R4,#0x90]
STR             R0, [R4,#0x294]
STR             R0, [R4,#0x29C]
STR             R0, [R4,#0x2A0]
STR             R0, [R4,#0x364]
ADD             R0, R4, #0x12800
MOV             R1, #0x80
ADD             R0, R0, #0x68 ; 'h'
BL              sub_2FFE8C
MOV             R0, R4
POP             {R4,PC}
