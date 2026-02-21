CMP             R1, #0
MOV             R2, #0
BEQ             loc_1177C0
LDR             R1, =sub_200080
STR             R2, [R0],#4
STR             R1, [R0],#4
STR             R2, [R0],#4
STR             R2, [R0],#4
LDR             R1, =0xF008F
STR             R2, [R0],#4
LDR             R3, =0xF01C6
STR             R1, [R0],#4
MOV             R12, #1
STR             R12, [R0],#4
BIC             R1, R3, R1,ASR#5
STR             R3, [R0],#4
STR             R2, [R0],#4
STR             R1, [R0],#4
BX              LR
