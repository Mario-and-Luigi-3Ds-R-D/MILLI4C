MOV             R1, #0
MOV             R0, R1
PUSH            {R4,LR}
BL              sub_1082D4
MOV             R1, #0
MOV             R0, R1
BL              sub_1082C0
MOV             R0, #1
BL              sub_10F284
LDR             R0, =dword_6CF94C
BL              sub_118998
LDR             R0, =dword_6CF944
BL              sub_118998
LDR             R0, =dword_6D2450
MOV             R1, #0
LDR             R2, [R0]
POP             {R4,LR}
MOV             R0, R1
B               sub_108418
