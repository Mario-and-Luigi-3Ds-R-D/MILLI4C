ADD             R1, R0, #4
MOV             R3, #0
LDM             R1, {R1,R2}
STR             R3, [R0,#8]
CMP             R1, #0
STRNE           R3, [R1]
STRNE           R3, [R0,#4]
CMP             R2, #0
STRNE           R2, [R1]
STRNE           R1, [R2,#4]
BX              LR
