PUSH            {R4,LR}
LDR             R1, [R2,#8]!
ADD             R2, R2, #4
LDM             R2, {R0,R3}
AND             R1, R1, #0xFF
AND             R3, R3, #0xFF
UXTH            R2, R0
LDR             R0, =dword_6E7CD0
BL              sub_587088
MOV             R0, #0
POP             {R4,PC}
