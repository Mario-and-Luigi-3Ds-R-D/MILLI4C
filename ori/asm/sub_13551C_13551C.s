PUSH            {R4-R6,LR}
SUBS            R5, R1, #0
MOV             R4, R0
BLE             loc_135550
MOV             R1, #1
ADD             R0, R4, #0x280
STR             R1, [R0,#0x14]
MOV             R1, R5
ADD             R0, R4, #0x280
POP             {R4-R6,LR}
MOV             R2, #0
VLDR            S0, =0.0
B               sub_140098
MOV             R1, #0
BL              sub_13F3A4
LDR             R0, [R4,#0x18]
BIC             R0, R0, #2
STR             R0, [R4,#0x18]
POP             {R4-R6,PC}
