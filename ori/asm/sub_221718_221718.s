PUSH            {R4,LR}
BL              sub_2CF53C
LDR             R2, =off_6B2E28
MOV             R1, #0
STR             R1, [R0,#0x28]
STR             R2, [R0]
POP             {R4,PC}
