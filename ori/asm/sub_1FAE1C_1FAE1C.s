LDR             R1, =off_6CDC90
LDR             R2, [R1]
MOV             R1, #0
STRB            R1, [R2,#8]
LDR             R1, [R0]
LDR             R1, [R1,#4]
BX              R1
