PUSH            {R4,LR}
LDR             R4, =off_6CE970
LDR             R1, [R2,#8]
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R4]
ADD             R0, R0, #0x138000
ADD             R0, R0, #0xF60
BL              sub_33798C
LDR             R0, =sub_10640C
LDR             R1, [R4]
ADD             R0, R0, R1
ADD             R1, R1, #0x138000
ADD             R1, R1, #0xF60
BL              sub_1CF9FC
MOV             R0, #0
POP             {R4,PC}
