PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CDF98
LDR             R0, [R0]
ADD             R1, R0, #0x128
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x3EC
LDR             R2, [R0]
LDR             R2, [R2,#4]
STR             R2, [R1,#4]
LDR             R2, [R0]
STR             R2, [R1,#8]
LDR             R2, [R0]
LDR             R2, [R2,#4]
STR             R1, [R2,#8]
LDR             R0, [R0]
STR             R1, [R0,#4]
LDR             R0, [R1]
LDR             R2, [R0,#8]
MOV             R0, R1
BLX             R2
MOV             R0, #0
STRB            R0, [R4,#8]
POP             {R4,PC}
