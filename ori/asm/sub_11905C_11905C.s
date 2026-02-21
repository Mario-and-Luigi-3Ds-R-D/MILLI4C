LDR             R0, =dword_6D4F1C
LDR             R1, [R0]
CMP             R1, #0
SUBGT           R1, R1, #1
STRGT           R1, [R0]
CMP             R1, #0
BXNE            LR
PUSH            {R4,LR}
LDR             R0, =dword_6E1258
BL              sub_121330
ANDS            R0, R0, #0x80000000
BMI             locret_1190A4
LDR             R0, =dword_69B110
LDR             R1, =dword_6D4F28
LDR             R0, [R0]
STR             R0, [R1]
LDR             R1, =dword_6E125C
STR             R0, [R1]
POP             {R4,PC}
