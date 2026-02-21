PUSH            {R4-R9,LR}
MOV             R4, R2
MOV             R8, R0
MOV             R7, R1
LDR             R9, =off_6CE970
ADD             R6, R2, #0x70 ; 'p'
VPUSH           {D8}
SUB             SP, SP, #0xC
LDRD            R0, R1, [R4,#8]
VLDR            S16, [R2,#0x1C]
UXTH            R5, R0
UXTH            R1, R1
LDR             R0, [R9]
BL              sub_528EB0
MOV             R2, R0
LDR             R0, [R9]
MOV             R1, #0
VSTR            S16, [SP,#0x30+var_30]
STR             R1, [SP,#0x30+var_2C]
MOV             R3, R6
MOV             R1, R5
BL              sub_52AE1C
LDRH            R2, [R4]
MOV             R1, R0
SUB             R3, R2, #0x100
SUBS            R3, R3, #0x2A ; '*'
BNE             loc_20A9D4
MOV             R3, R4
MOV             R2, R7
MOV             R0, R8
BL              sub_145674
ADD             SP, SP, #0xC
MOV             R0, #0
VPOP            {D8}
POP             {R4-R9,PC}
