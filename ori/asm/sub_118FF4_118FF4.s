LDR             R0, =byte_6D4F20
LDR             R1, [R0,#(dword_6D4F24 - 0x6D4F20)]
CMP             R1, #0
SUBGT           R1, R1, #1
STRGT           R1, [R0,#(dword_6D4F24 - 0x6D4F20)]
CMP             R1, #0
BXNE            LR
LDRB            R1, [R0]
CMP             R1, #0
BXEQ            LR
MOV             R1, #0
PUSH            {R4,LR}
STRB            R1, [R0]
LDR             R0, =dword_6E125C
BL              sub_121330
ANDS            R0, R0, #0x80000000
BMI             locret_119048
LDR             R0, =dword_69B118
LDR             R1, =dword_6D4F28
LDR             R0, [R0]
STR             R0, [R1]
POP             {R4,PC}
