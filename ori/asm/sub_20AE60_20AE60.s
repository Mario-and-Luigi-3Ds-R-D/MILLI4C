PUSH            {R3-R9,LR}
ADD             R0, R2, #0x10
ADD             R1, R2, #8
ADD             R5, R2, #0x78 ; 'x'
LDM             R0, {R0,R3}
LDM             R1, {R1,R12}
LDR             R9, =off_6CE970
CMP             R3, #0
UXTH            R4, R0
UXTH            R1, R1
LDR             R0, [R9]
AND             R6, R12, #0xFF
MOVNE           R7, #1
MOVEQ           R7, #0
BL              sub_52A63C
MOV             R8, R0
LDR             R0, [R9]
MOV             R1, R4
BL              sub_528EB0
MOV             R2, R0
MOV             R3, R7
MOV             R1, R6
MOV             R0, R8
STR             R5, [SP,#0x20+var_20]
BL              sub_218E7C
MOV             R0, #0
POP             {R3-R9,PC}
