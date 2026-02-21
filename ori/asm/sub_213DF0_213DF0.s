PUSH            {R3-R9,LR}
ADD             R1, R2, #8
ADD             R8, R2, #0x78 ; 'x'
LDM             R1, {R1,R12}
LDR             R0, [R2,#0x14]
LDR             R3, [R2,#0x10]
LDR             R9, =off_6CE970
AND             R5, R0, #0xFF
UXTH            R1, R1
UXTH            R4, R3
LDR             R0, [R9]
AND             R7, R12, #0xFF
BL              sub_52A63C
MOV             R6, R0
LDR             R0, [R9]
MOV             R1, R4
BL              sub_528EB0
MOV             R2, R0
MOV             R3, R8
MOV             R1, R7
MOV             R0, R6
STR             R5, [SP,#0x20+var_20]
BL              sub_218A38
MOV             R0, #0
POP             {R3-R9,PC}
