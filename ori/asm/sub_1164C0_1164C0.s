LDR             R2, =off_6D2428
CMP             R0, #0
LDRNE           R3, [R2]
STRNE           R3, [R0]
CMP             R1, #0
LDRNE           R0, [R2,#(off_6D242C - 0x6D2428)]
STRNE           R0, [R1]
BX              LR
