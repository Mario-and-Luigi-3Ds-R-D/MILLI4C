PUSH            {R3-R5,LR}
LDR             R3, =off_6CE970
LDR             R1, [R2,#8]
LDR             R4, [R2,#0xC]!
LDR             R0, =0x120F78
LDR             R5, [R3]
ADD             R2, R2, #4
UXTH            R1, R1
LDM             R2, {R3,R12}
UXTH            R2, R4
LDR             R0, [R5,R0]
UXTH            R3, R3
UXTH            R12, R12
CMP             R0, #0
BEQ             locret_20ADC4
STR             R12, [SP,#0x10+var_10]
BL              sub_2E8A74
MOV             R0, #0
POP             {R3-R5,PC}
