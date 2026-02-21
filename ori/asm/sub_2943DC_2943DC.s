LDR             R1, =off_6BC58C
PUSH            {R4,LR}
STR             R1, [R0],#0x18
BL              sub_14F3EC
SUB             R4, R0, #0x10
LDR             R0, [R0,#-8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_294418
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_294418
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
STR             R0, [R1,#4]
STR             R1, [R0]
SUB             R0, R4, #8
POP             {R4,PC}
