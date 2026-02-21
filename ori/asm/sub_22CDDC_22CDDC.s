PUSH            {R3,LR}
STR             R3, [SP,#8+var_8]
MOV             R3, R2
MOV             R2, R1
ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
BL              sub_174F54
POP             {R3,PC}
