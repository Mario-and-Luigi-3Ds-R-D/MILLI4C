LDR             R3, =off_6CE970
MOV             R12, R0
MOV             R0, R2
PUSH            {R4,LR}
LDR             R2, =loc_19CF44
LDR             R3, [R3]
CMP             R1, #0
LDRH            R0, [R0,#2]
LDR             R2, [R3,R2]
AND             R2, R2, #4
MOV             R3, R2,LSR#2
ADDNE           R2, R1, #4
MOVEQ           R2, #0
CMP             R3, #0
VLDRNE          S0, =1.0
VLDREQ          S0, =0.0
MOV             R1, R12
BL              sub_145730
MOV             R0, #0
POP             {R4,PC}
