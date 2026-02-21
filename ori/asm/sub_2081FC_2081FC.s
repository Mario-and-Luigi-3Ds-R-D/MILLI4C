PUSH            {R4-R10,LR}
MOV             R4, R2
MOV             R6, R0
MOV             R5, R1
LDR             R10, =off_6CE970
ADD             R8, R2, #0x70 ; 'p'
VPUSH           {D8}
SUB             SP, SP, #8
LDRD            R0, R1, [R4,#8]
VLDR            S16, [R2,#0x1C]
UXTH            R7, R0
UXTH            R1, R1
LDR             R0, [R10]
BL              sub_528EB0
MOV             R2, R0
LDR             R0, [R10]
MOV             R9, #0
VSTR            S16, [SP,#0x30+var_30]
MOV             R3, R8
MOV             R1, R7
STR             R9, [SP,#0x30+var_2C]
BL              sub_52AE1C
LDRH            R2, [R4]
MOV             R1, R0
SUB             R3, R2, #0x100
SUBS            R3, R3, #0x2A ; '*'
BNE             loc_208278
MOV             R3, R4
MOV             R2, R5
MOV             R0, R6
BL              sub_145674
ADD             SP, SP, #8
MOV             R0, R9
VPOP            {D8}
POP             {R4-R10,PC}
