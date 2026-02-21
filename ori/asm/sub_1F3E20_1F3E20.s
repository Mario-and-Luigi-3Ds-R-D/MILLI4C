LDR             R2, =unk_68AF1C
ADD             R3, R0, #0xC
LDM             R2, {R1,R2}
STM             R3, {R1,R2}
ADD             R3, R0, #4
STM             R3, {R1,R2}
LDR             R1, [R0]
LDR             R1, [R1,#8]
BX              R1
