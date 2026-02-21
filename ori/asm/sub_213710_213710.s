PUSH            {R3-R7,LR}
ADD             R1, R2, #8
LDR             R0, [R2,#0x10]
LDM             R1, {R1,R3}
LDR             R2, [R2,#0x14]
AND             R4, R0, #0xFF
LDR             R0, =off_6CE970
UXTH            R1, R1
UXTH            R5, R2
AND             R6, R3, #0xFF
LDR             R0, [R0]
BL              sub_52FACC
MOV             R1, #0
STR             R1, [SP,#0x18+var_18]
MOV             R3, R5
MOV             R2, R4
MOV             R1, R6
BL              sub_5726DC
MOV             R0, #0
POP             {R3-R7,PC}
