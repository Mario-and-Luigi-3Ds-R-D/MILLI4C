PUSH            {R4-R6,LR}
MOV             R4, R1
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #6
MOVNE           R0, #0
BEQ             loc_235988
STRB            R0, [R4,#0x28]
POP             {R4-R6,PC}
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x1CC]
LDR             R0, [R0,#0x4CC]
AND             R0, R0, #3
B               loc_235980
