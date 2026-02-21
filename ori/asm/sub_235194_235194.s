PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6B3900
LDR             R6, =off_6D1648
MOV             R5, #0
STR             R0, [R4]
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_235224
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R1, [R0,#0x1CC]
CMP             R1, R4
BNE             loc_2351DC
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
STR             R5, [R0,#0x1CC]
LDR             R2, =dword_68BC48
VLDR            S0, =0.0
LDM             R2, {R1,R2}
STMIB           R4, {R1,R2}
MOV             R2, #0
LDR             R0, [R4,#0x120]
MOV             R1, R2
BIC             R0, R0, #0xD
STR             R0, [R4,#0x120]
LDR             R0, =0x500A
BL              sub_145730
LDR             R0, [R6]
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #1
BL              loc_19AFEC
LDR             R1, =off_6B27EC
MOV             R0, R4
STR             R1, [R4]
MOV             R1, #0x118
STRH            R5, [R1,R4]
STRH            R5, [R4,#0xE0]
POP             {R4-R6,LR}
B               sub_1F3F94
