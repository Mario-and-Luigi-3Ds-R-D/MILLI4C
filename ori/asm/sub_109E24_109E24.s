LDR             R0, =dword_6CF94C
PUSH            {R4,LR}
BL              sub_120F58
BL              sub_11B5E0
CMP             R0, #0
MOVNE           R0, #2
MOVEQ           R0, #1
POP             {R4,PC}
