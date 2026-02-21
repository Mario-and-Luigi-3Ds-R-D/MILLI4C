LDR             R0, =dword_6E7CD0
PUSH            {R4,LR}
BL              sub_586D74
MOV             R4, #0
LDR             R0, =dword_6E7CD0
AND             R1, R4, #0xFF
MOV             R2, #0
BL              sub_586B30
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_181088
MOV             R0, #0
POP             {R4,PC}
