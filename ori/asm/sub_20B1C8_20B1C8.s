PUSH            {R4,LR}
LDR             R3, =off_6CE970
LDRD            R0, R1, [R2,#8]
AND             R2, R0, #0xFF
LDR             R0, =0x19DFE8
LDR             R3, [R3]
CMP             R1, #0
MOVNE           R1, #1
LDR             R0, [R3,R0]
CMP             R0, #0
BEQ             loc_20B22C
CMP             R2, #0
BEQ             loc_20B210
CMP             R2, #1
BEQ             loc_20B224
CMP             R2, #2
BLEQ            sub_1CCA08
B               loc_20B22C
NOP
BL              sub_1CC9B0
NOP
NOP
B               loc_20B22C
NOP
BL              sub_1CC950
MOV             R0, #0
POP             {R4,PC}
