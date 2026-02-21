PUSH            {R4}
LDR             R0, [R2,#0xC]
LDR             R12, =0x19CF48
TST             R0, #0xFF
LDR             R0, [R2,#8]
LDR             R2, =off_6CE970
MOV             R3, R12
LDR             R4, [R2]
LDR             R2, [R2]
ADD             R1, R2, R3
LDR             R2, [R4,R12]
ORRNE           R0, R0, R2
BICEQ           R0, R2, R0
STR             R0, [R1]
POP             {R4}
MOV             R0, #0
BX              LR
