LDR             R0, =off_6CE388
PUSH            {R4,LR}
LDR             R0, [R0]
LDR             R0, [R0,#0x98]
LDR             R1, =off_6CE970
VLDR            S0, [R0,#0x350]
LDR             R0, =0x10D4D8
VLDR            S1, =0.0
LDR             R1, [R1]
POP             {R4,LR}
ADD             R0, R0, R1; loc_10D4D8
B               sub_4E4124
