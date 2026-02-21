PUSH            {R4,LR}
LDR             R4, =byte_6D4F20
LDR             R0, [R4,#(dword_6D4F24 - 0x6D4F20)]
CMP             R0, #0
BNE             loc_119110
LDR             R0, =dword_69B118
LDR             R1, [R0,#(off_69B11C - 0x69B118)]; "cfg:s"
LDR             R0, =dword_6E125C
BL              sub_121374
ANDS            R1, R0, #0x80000000
BMI             loc_119104
MOV             R0, #1
STRB            R0, [R4]
LDR             R0, =dword_6E125C
LDR             R1, =dword_6D4F28
LDR             R0, [R0]
STR             R0, [R1]
B               loc_119110
LDR             R1, =0xD92103FB
CMP             R0, R1
BEQ             locret_119120
LDR             R0, [R4,#(dword_6D4F24 - 0x6D4F20)]
ADD             R0, R0, #1
STR             R0, [R4,#(dword_6D4F24 - 0x6D4F20)]
MOV             R0, #0
POP             {R4,PC}
