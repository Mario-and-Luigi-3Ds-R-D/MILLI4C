LDR             R2, [R0]
ADD             R1, R0, #0x28 ; '('
STR             R1, [R0,#0x18]
ORR             R2, R2, #1
STR             R2, [R0]
LDRSH           R1, [R0,#0x2A]
MOV             R2, #0
VLDR            S0, =0.0
ADD             R0, R0, #4
B               sub_140098
