PUSH            {R4-R6,LR}
ADD             R5, R0, #0x1A0000
MOV             R4, R0
LDRB            R0, [R5,#0x84]
CMP             R0, #0
BNE             locret_1D4204
LDR             R0, =0x19DFE8
LDR             R0, [R4,R0]
CMP             R0, #0
MOVNE           R1, #1
BLNE            sub_4DE878
LDR             R1, =off_654104
LDM             R1, {R0,R1}
STRD            R0, R1, [R5,#0x5C]
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_1D1754
POP             {R4-R6,PC}
