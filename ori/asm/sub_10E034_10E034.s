PUSH            {R4,LR}
BL              sub_118F44
ANDS            R1, R0, #0x80000000
BPL             locret_10E058
MOV             R1, PC
MOVS            R2, R0,LSR#31
BEQ             locret_10E058
POP             {R4,LR}
B               sub_10E1F8
POP             {R4,PC}
