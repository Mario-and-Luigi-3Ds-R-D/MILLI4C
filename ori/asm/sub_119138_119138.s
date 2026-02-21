PUSH            {R4,LR}
LDR             R4, =dword_6D4F1C
LDR             R0, [R4]
CMP             R0, #0
BNE             loc_11918C
LDR             R0, =dword_69B110
LDR             R1, [R0,#(off_69B114 - 0x69B110)]; "cfg:i"
LDR             R0, =dword_6E1258
BL              sub_121374
ANDS            R1, R0, #0x80000000
BMI             loc_119180
LDR             R0, =dword_6E1258
LDR             R1, =dword_6E125C
LDR             R0, [R0]
STR             R0, [R1]
LDR             R1, =dword_6D4F28
STR             R0, [R1]
B               loc_11918C
LDR             R1, =0xD92103FB
CMP             R0, R1
BEQ             locret_11919C
LDR             R0, [R4]
ADD             R0, R0, #1
STR             R0, [R4]
MOV             R0, #0
POP             {R4,PC}
