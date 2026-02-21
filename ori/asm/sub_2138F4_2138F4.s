PUSH            {R3-R7,LR}
ADD             R3, R2, #8
MOV             R6, R0
MOV             R5, R1
LDR             R0, =off_6CE970
LDM             R3, {R1,R3}
MOV             R4, R2
MOV             R7, #0
LDR             R0, [R0]
UXTH            R1, R1
ADD             R2, R2, #0x70 ; 'p'
AND             R3, R3, #0xFF
STR             R7, [SP,#0x18+var_18]
BL              sub_52AEA8
LDRH            R2, [R4]
MOV             R1, R0
CMP             R2, #0x128
BNE             loc_21394C
MOV             R3, R4
MOV             R2, R5
MOV             R0, R6
BL              sub_145674
MOV             R0, R7
POP             {R3-R7,PC}
