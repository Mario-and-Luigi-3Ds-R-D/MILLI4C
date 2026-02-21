PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6D1648
MOV             R5, R1
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16C00
LDRB            R0, [R0,#0xFC]
CMP             R0, #0
MOVNE           R0, #0
BNE             locret_16A578
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x440]
MOV             R0, R4
POP             {R4-R6,LR}
BX              R2
POP             {R4-R6,PC}
