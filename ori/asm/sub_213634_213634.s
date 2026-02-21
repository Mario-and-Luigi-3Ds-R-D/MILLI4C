ADD             R2, R2, #8
PUSH            {R4,LR}
LDM             R2, {R0,R2}
AND             R1, R0, #0xFF
LDR             R0, =off_6CE970
UXTH            R2, R2
LDR             R0, [R0]
LDR             R3, [R0]
LDR             R3, [R3,#0x1C]
BLX             R3
MOV             R0, #0
POP             {R4,PC}
