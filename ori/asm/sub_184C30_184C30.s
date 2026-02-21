PUSH            {R4,LR}
MOV             R4, R0
VLDR            S0, =1.0
ADD             R0, R0, #0x2B8
BL              sub_5A176C
VSTR            S0, [R4,#0x12C]
VSTR            S0, [R4,#0x130]
VSTR            S0, [R4,#0x134]
ADD             R0, R4, #0x2B8
BL              sub_5F1964
CMP             R0, #0
BNE             locret_184C78
MOV             R0, R4
VLDR            S0, =1.5
BL              sub_18522C
LDR             R1, =off_6738C0
LDRD            R0, R1, [R1,#(off_6738F8 - 0x6738C0)]
STRD            R0, R1, [R4]
POP             {R4,PC}
