PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0xF4]
CMP             R0, #0
BEQ             loc_2A1F58
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R1, [R4,#0x10]
CMP             R1, #0
LDRBNE          R0, [R4,#0x1A]
CMPNE           R0, #0
BEQ             locret_2A1F90
LDR             R2, =off_6CE970
LDR             R0, =sub_10D4F0
ADD             R1, R1, #0x24 ; '$'
LDR             R2, [R2]
LDR             R0, [R2,R0]
LDR             R2, [R0]
LDR             R2, [R2,#0x20]
POP             {R4,LR}
BX              R2
POP             {R4,PC}
