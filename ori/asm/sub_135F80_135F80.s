PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, [R0,#8]
MOV             R6, #0
CMP             R5, #0
BEQ             loc_135FEC
LDR             R0, [R4]
ADD             R0, R0, #1
CMP             R0, R5
BEQ             loc_135FEC
MOV             R1, #1
MOV             R0, R5
BL              sub_14121C
MOV             R1, #0
MOV             R0, R5
BL              sub_13E478
MOV             R1, #0
MOV             R0, R4
BL              sub_13F9EC
LDRD            R0, R1, [R4,#8]
CMP             R0, #0
CMPNE           R1, #0
BEQ             loc_135FE4
CMP             R0, R1
BLEQ            sub_13E9F8
STR             R6, [R4,#8]
B               loc_135FF8
MOV             R1, #0
MOV             R0, R4
BL              sub_13F9EC
STR             R6, [R4,#8]
LDR             R0, [R4,#0x10]
CMP             R0, #0
BEQ             loc_136014
MOV             R1, R4
BL              sub_13F2E0
STR             R6, [R4,#0x10]
LDR             R0, [R4,#0x44]
MOV             R2, #0
MOV             R1, R2
BIC             R0, R0, #0x100
BIC             R0, R0, #6
STR             R0, [R4,#0x44]
STR             R6, [R4,#0x20]
ADD             R0, R4, #0x194
STR             R6, [R4,#0x28]
POP             {R4-R6,LR}
VLDR            S0, =0.0
B               sub_140098
