PUSH            {R4-R6,LR}
MOV             R6, R3
MOV             R5, R2
MOV             R3, #0
LDR             R4, [SP,#0x10+arg_0]
LDR             R0, =0x1218
MOV             R2, R3
BL              sub_10A358
CMP             R0, #0
BEQ             locret_2B0298
MOV             R3, R4
MOV             R2, R6
MOV             R1, R5
POP             {R4-R6,LR}
B               sub_173B34
POP             {R4-R6,PC}
