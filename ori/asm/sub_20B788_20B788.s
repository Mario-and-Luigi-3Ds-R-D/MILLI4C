PUSH            {R4-R6,LR}
LDR             R1, [R2,#8]
ADD             R2, R2, #0xC
LDM             R2, {R0,R5}
UXTH            R1, R1
AND             R4, R0, #0xFF
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F508
CMP             R4, #0
UXTHEQ          R1, R5
BLEQ            sub_5001D0
MOV             R0, #0
POP             {R4-R6,PC}
