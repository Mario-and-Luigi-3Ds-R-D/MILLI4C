PUSH            {R4-R8,LR}
LDR             R1, [R2,#8]!
ADD             R2, R2, #4
LDR             R7, =off_6CE970
LDM             R2, {R0,R4}
UXTH            R1, R1
UXTH            R5, R0
LDR             R0, [R7]
BL              sub_52A63C
MOV             R6, R0
LDR             R0, [R7]
MOV             R1, R5
BL              sub_52FACC
MOV             R1, R0
AND             R2, R4, #0xFF
MOV             R0, R6
BL              sub_218DAC
MOV             R0, #0
POP             {R4-R8,PC}
