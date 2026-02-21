PUSH            {R4,LR}
BL              sub_184A50
LDR             R2, =off_6AD5AC
MOV             R1, #0xFF
STR             R2, [R0]
STRB            R1, [R0,#0x46C]
POP             {R4,PC}
