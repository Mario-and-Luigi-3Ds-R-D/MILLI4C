PUSH            {R4,LR}
LDR             R1, =off_6B2490
LDR             R4, =off_6B40C4
STR             R1, [R0],#4
LDR             R1, [R4]; off_6B4114
STR             R1, [R0]
LDR             R1, [R1,#(dword_6B40E4 - 0x6B4114)]
LDR             R2, [R4,#(off_6B40E0 - 0x6B40C4)]; off_6B4114
STR             R2, [R0,R1]
ADD             R0, R0, #0x38 ; '8'
BL              sub_594540
SUB             R0, R0, #0x38 ; '8'
ADD             R1, R4, #4
BL              sub_116EDC
POP             {R4,LR}
SUB             R0, R0, #4
B               sub_300FD4
