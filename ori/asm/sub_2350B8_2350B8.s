PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x1CC]
CMP             R0, R4
BNE             loc_235108
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
MOV             R1, #0
STR             R1, [R0,#0x1CC]
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #1
BL              sub_19AD54
LDR             R1, =dword_68BC10
MOV             R2, #0
VLDR            S0, =0.0
LDRD            R0, R1, [R1,#(dword_68BC48 - 0x68BC10)]
STRD            R0, R1, [R4,#4]
LDR             R0, [R4,#0x120]
MOV             R1, R2
BIC             R0, R0, #0xD
STR             R0, [R4,#0x120]
LDR             R0, =0x500A
BL              sub_145730
LDR             R0, [R5]
NOP
LDR             R0, [R0,#0xBC]
POP             {R4-R6,LR}
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #1
B               loc_19AFEC
