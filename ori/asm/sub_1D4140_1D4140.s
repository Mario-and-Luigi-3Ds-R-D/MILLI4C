PUSH            {R4-R6,LR}
MOV             R4, R0
BL              sub_528E64
MOV             R5, R0
BL              sub_5EC8D8
CMP             R0, #0
BNE             locret_1D41B4
MOV             R0, R5
BL              sub_1452E8
MOV             R1, R0
ADD             R5, R4, #0x1A0000
MOV             R0, #1
STRB            R0, [R5,#0x74]
LDR             R0, =0x1064D8
ADD             R2, R4, #0x1A0000
ADD             R2, R2, #0x70 ; 'p'
ADD             R0, R0, R4
STR             R2, [R1,#0x14]
BL              sub_1DFCE0
MOV             R3, #0
MOV             R2, #3
MOV             R1, #2
MOV             R0, R4
BL              sub_52A660
MOV             R0, R4
BL              sub_1D0704
LDR             R1, =off_6540E4
LDM             R1, {R0,R1}
STRD            R0, R1, [R5,#0x5C]
POP             {R4-R6,PC}
