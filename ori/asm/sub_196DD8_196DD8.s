LDRD            R0, R1, [R1,#8]
STRD            R0, R1, [R5,#4]
LDR             R0, [R5,#0x3D0]
BIC             R0, R0, #0x3C ; '<'
STR             R0, [R5,#0x3D0]
MOV             R0, R5
POP             {R4-R6,LR}
MOV             R1, #1
B               sub_21D12C
