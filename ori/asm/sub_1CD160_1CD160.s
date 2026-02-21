LDR             R2, =off_6BB6B4
MOV             R1, #0
STR             R2, [R0]
LDR             R2, [R0,#0x18]
STR             R1, [R2,#0xF8]
B               sub_1DFC1C
