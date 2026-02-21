PUSH            {R3-R7,LR}
MOV             R5, R1
ADD             R1, R2, #8
MOV             R6, R0
LDR             R0, =off_6CE970
LDM             R1, {R1,R3}
MOV             R4, R2
MOV             R12, #0
LDR             R0, [R0]
UXTH            R1, R1
ADD             R2, R2, #0x70 ; 'p'
AND             R3, R3, #0xFF
STR             R12, [SP,#0x18+var_18]
BL              sub_52AEA8
LDRH            R2, [R4]
MOV             R1, R0
CMP             R2, #0x128
BNE             loc_2046FC
MOV             R3, R4
MOV             R2, R5
MOV             R0, R6
BL              sub_145674
MOV             R0, #0
POP             {R3-R7,PC}
