PUSH            {R4-R6,LR}
ADD             R1, R2, #8
LDR             R0, [R2,#0x10]
LDM             R1, {R1,R3}
LDR             R2, [R2,#0x14]
AND             R4, R0, #0xFF
LDR             R0, =off_6CE970
UXTH            R1, R1
AND             R6, R3, #0xFF
AND             R5, R2, #0xFF
LDR             R0, [R0]
BL              sub_528FF0
LDR             R1, [R0]
LDR             R1, [R1,#0x50]
BLX             R1
ADD             R0, R0, #0xD8
MOV             R3, R5
MOV             R2, R4
MOV             R1, R6
BL              sub_2E8038
MOV             R0, #0
POP             {R4-R6,PC}
