PUSH            {R4,LR}
BL              sub_11C444
LDR             R2, =0x137CC
MOV             R1, #0
ADD             R3, R2, #4
ADD             R12, R2, #0xC
STR             R1, [R2,R0]
STR             R1, [R3,R0]
STR             R1, [R12,R0]
POP             {R4,PC}
