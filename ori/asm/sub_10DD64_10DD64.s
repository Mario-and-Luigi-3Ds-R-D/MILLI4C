LDR             R1, =dword_69A454
PUSH            {R4-R6,LR}
LDR             R4, [R0,#0xC]
LDR             R2, [R1]
MOV             R1, R0
CMP             R4, #0
LDREQ           R4, [R0,#8]
MOV             R0, R2
BL              sub_10DF38
MOV             R5, R0
AND             R0, R0, #0x80000000
CMP             R0, #0
MOVGE           R0, R4
BLGE            sub_10E024
MOV             R0, R5
POP             {R4-R6,PC}
