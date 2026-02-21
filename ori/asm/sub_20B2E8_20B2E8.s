ADD             R2, R2, #8
PUSH            {R4,LR}
LDM             R2, {R0,R2}
UXTH            R1, R0
LDR             R0, =off_6CE970
SXTB            R4, R2
LDR             R0, [R0]
BL              sub_528EB0
LDR             R1, [R0]
LDR             R1, [R1,#0x4C]
BLX             R1
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_592E68
MOV             R0, #0
POP             {R4,PC}
