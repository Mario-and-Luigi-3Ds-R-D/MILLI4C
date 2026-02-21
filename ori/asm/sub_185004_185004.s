PUSH            {R4,LR}
MOV             R4, R0
VLDR            S0, =1.0
ADD             R0, R0, #0x2B8
BL              sub_5A176C
ADD             R0, R4, #0x2B8
BL              sub_5F1964
CMP             R0, #0
BEQ             locret_185044
LDR             R1, =off_6738C0
VLDR            S0, =0.0
VSTR            S0, [R4,#0x3B4]
LDR             R0, [R4,#0x154]
STR             R0, [R4,#0x3B8]
LDRD            R0, R1, [R1,#(off_673918 - 0x6738C0)]
STRD            R0, R1, [R4]
POP             {R4,PC}
