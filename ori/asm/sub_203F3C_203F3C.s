PUSH            {R4-R6,LR}
ADD             R0, R2, #8
LDR             R1, =off_6CE970
LDM             R0, {R0,R3}
LDR             R2, [R2,#0x10]
LDR             R1, [R1]
AND             R0, R0, #0xFF
UXTH            R4, R3
ADD             R5, R1, #0x10C000
AND             R6, R2, #0xFF
ADD             R5, R5, #0x214
BL              sub_58F1A0
MOV             R1, R0
MOV             R3, R6
MOV             R2, R4
MOV             R0, R5
BL              sub_4C638C
MOV             R0, #0
POP             {R4-R6,PC}
