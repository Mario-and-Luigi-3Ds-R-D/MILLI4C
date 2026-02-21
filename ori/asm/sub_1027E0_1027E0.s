PUSH            {R4-R6,LR}
BL              sub_300F68
LDR             R5, =dword_6E12D8
MOVS            R4, R0
LDR             R0, [R5,#(dword_6E12DC - 0x6E12D8)]
MOVS            R1, #0
MVNS            R1, R1
CMP             R0, R4
BLS             loc_102830
LDR             R0, [R5]
LSLS            R1, R4, #2
ADDS            R0, R0, R1
LDR             R0, [R0]
BLX             sub_300FD4
LDR             R0, [R5]
ADDS            R4, R4, #1
B               loc_10280E
SUBS            R1, R1, #4
ADDS            R1, R0, R1
ADDS            R4, R4, #1
STR             R2, [R1]
LSLS            R1, R4, #2
ADDS            R2, R0, R1
LDR             R2, [R2]
CMP             R2, #0
BEQ             loc_10281E
LDR             R3, [R5,#(dword_6E12DC - 0x6E12D8)]
CMP             R3, R4
BHI             loc_102806
LDR             R1, [R5,#(dword_6E12DC - 0x6E12D8)]
CMP             R1, R4
BLS             loc_10282C
LSLS            R1, R4, #2
ADDS            R0, R0, R1
MOVS            R1, #0
STR             R1, [R0]
MOVS            R0, #0
POP             {R4-R6,PC}
MOVS            R0, R1
POP             {R4-R6,PC}
