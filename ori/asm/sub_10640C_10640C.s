LDR             R0, =dword_6EB9F0
PUSH            {R4,LR}
BL              sub_118AE8
LDR             R0, =dword_6CF944
MOV             R1, #1
BL              sub_120E48
LDR             R0, =dword_6CF94C
MOV             R1, #1
BL              sub_120E48
LDR             R0, =dword_6CF944
BL              sub_118998
LDR             R0, =dword_6CF94C
BL              sub_118998
LDR             R0, =sub_109E24
MOV             R1, #0
BL              sub_1082D4
LDR             R0, =sub_109E00
MOV             R1, #0
BL              sub_1082C0
MOV             R0, #0
BL              sub_1086EC
BL              sub_10F80C
CMP             R0, #0
BNE             loc_106478
BL              sub_10F3D8
CMP             R0, #0
BEQ             loc_10647C
MOV             R0, #1
EOR             R0, R0, #1
POP             {R4,PC}
