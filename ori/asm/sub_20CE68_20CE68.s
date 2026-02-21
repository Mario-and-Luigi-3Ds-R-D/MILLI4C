PUSH            {R4,LR}
LDR             R1, [R2,#8]!
ADD             R2, R2, #4
LDM             R2, {R0,R3}
AND             R1, R1, #0xFF
AND             R3, R3, #0xFF
UXTH            R2, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_58E7CC
MOV             R0, #0
POP             {R4,PC}
