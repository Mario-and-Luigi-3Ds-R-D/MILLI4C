LDR             R1, =off_6D48F8
MOV             R2, #0x1C00
LDR             R1, [R1]
STR             R2, [R0]
LDR             R0, [R1,#0x770]
BIC             R0, R0, #0x2000
ORR             R0, R0, #0x11000
STR             R0, [R1,#0x770]
B               loc_12618C
