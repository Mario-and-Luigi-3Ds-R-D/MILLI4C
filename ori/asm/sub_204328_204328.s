ADD             R2, R2, #8
PUSH            {R4,LR}
LDM             R2, {R0,R2}
AND             R4, R2, #0xFF
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528FF0
CMP             R4, #0xFF
BEQ             loc_204364
MOV             R1, R4
ADD             R0, R0, #0x1DC
BL              sub_5A2640
MOV             R0, #0
POP             {R4,PC}
ADD             R0, R0, #0x1DC
BL              sub_5A26D0
NOP
NOP
B               loc_20435C
