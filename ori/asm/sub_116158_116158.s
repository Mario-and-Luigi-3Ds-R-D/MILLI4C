PUSH            {R4,LR}
LDR             R4, =dword_6D2424
STR             R0, [R4]
BL              sub_11F164
LDR             R0, [R4]
ADD             R0, R0, #4
BL              sub_11F07C
LDR             R0, [R4]
ADD             R0, R0, #8
BL              sub_131050
LDR             R0, [R4]
ADD             R0, R0, #0xC
BL              sub_11F088
MOV             R0, #0
POP             {R4,PC}
